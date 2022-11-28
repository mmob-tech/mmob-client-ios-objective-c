//
//  MmobClient.m
//  EFHubIOs12
//
//  Created by Blai Pratdesaba Pares on 25/11/2022.
//

#import "MmobClient.h"
#import "MmobCustomerInfo.h"
#import "MmobIntegrationConfiguration.h"

@implementation MmobClient



-(NSString *)getURLByEnvironment:(NSString*)environment
                  forInstanceDomain:(NSString*)instanceDomain
{
    if ([environment  isEqual: @"stag"]) {
        return [NSString stringWithFormat:@"%@%@", @"https://client-ingress.stag.", instanceDomain];
    } else {
        return [NSString stringWithFormat:@"%@%@", @"https://client-ingress.prod.", instanceDomain];
    }
    
    
}

-(WKWebView *)getClientWithFrame:(CGRect)frame
                 withCustomerInfo:(MmobCustomerInfo*)customerInfo
                withConfiguration:(MmobIntegrationConfiguration*)mmobConfiguration
{
    
    
    // Prepare data
    
    NSDictionary *configuration = @{};
    NSMutableDictionary *mutableConfiguration = [NSMutableDictionary dictionaryWithDictionary:configuration];

    [customerInfo addKeysToDictionary:mutableConfiguration];
    [mmobConfiguration addKeysToDictionary:mutableConfiguration];

    
    NSError *error;

    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:mutableConfiguration  options:NSJSONWritingPrettyPrinted error:&error];
    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    NSLog(@"@jsonData %@", jsonString);

    
    //webview

    NSLog(@"Mmob loading %@ in instance: %@", mmobConfiguration.environment, mmobConfiguration.instanceDomain);
    self.urlPrefix = [self getURLByEnvironment: mmobConfiguration.environment forInstanceDomain: mmobConfiguration.instanceDomain];
    
    NSString *urlString = [NSString stringWithFormat:@"%@%@", self.urlPrefix , @"/boot"];
    NSURL *url = [NSURL URLWithString:urlString];
    
    NSDictionary *headers = @{
        @"Content-Type" : @"application/json",
        @"Accept" : @"application/json"
    };

    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setHTTPMethod:@"POST"];
    [request setHTTPBody:jsonData];
    [request setAllHTTPHeaderFields:headers];
    [request setURL:url];
    
    
    WKWebViewConfiguration *webViewConfiguration = [[WKWebViewConfiguration alloc] init];
    WKPreferences *preferences = [[WKPreferences alloc] init];
    [preferences setJavaScriptCanOpenWindowsAutomatically:true];
    [webViewConfiguration setPreferences:preferences];
    
    
    self.webView = [[WKWebView alloc] initWithFrame:frame configuration:webViewConfiguration];
    self.webView.navigationDelegate = self;
    self.webView.UIDelegate = self;
    
    
    [self.webView loadRequest:request];


    return self.webView;
    
}

// Do not open trusted domains on the webView
- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler {



    if ([navigationAction.request.URL.relativeString hasPrefix:self.urlPrefix] == false) {
        NSURL *url = navigationAction.request.URL;
        
        [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
        decisionHandler(WKNavigationActionPolicyCancel);
        if ([[UIApplication sharedApplication] canOpenURL:url]) {
            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
        }
        return;
    }
    
    decisionHandler(WKNavigationActionPolicyAllow);
}


//// Handle window.open
- (WKWebView *)webView:(WKWebView *)webView createWebViewWithConfiguration:(WKWebViewConfiguration *)configuration forNavigationAction:(WKNavigationAction *)navigationAction windowFeatures:(WKWindowFeatures *)windowFeatures
{
  if (!navigationAction.targetFrame.isMainFrame) {
    [webView loadRequest:navigationAction.request];
  }

  return nil;
}


//- (void)dealloc {
//    NSLog(@"Should not dealloc");
//}

@end
