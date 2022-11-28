//
//  MmobClient.h
//  EFHubIOs12
//
//  Created by Blai Pratdesaba Pares on 25/11/2022.
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>
#import "MmobCustomerInfo.h"
#import "MmobIntegrationConfiguration.h"


NS_ASSUME_NONNULL_BEGIN

@interface MmobClient: NSObject <WKNavigationDelegate>


-(WKWebView *)getClientWithFrame:(CGRect)frame withCustomerInfo:(MmobCustomerInfo*)customerInfo withConfiguration:(MmobIntegrationConfiguration*)mmobConfiguration;

@property (nonatomic) NSString *urlPrefix;
@property (nonatomic) WKWebView *webView;

@end

NS_ASSUME_NONNULL_END
