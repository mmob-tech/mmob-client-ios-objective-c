//
//  MmobCompanyConfiguration.m
//  EFHubIOs12
//
//  Created by Blai Pratdesaba Pares on 25/11/2022.
//

#import "MmobIntegrationConfiguration.h"

@implementation MmobIntegrationConfiguration

@synthesize cpId,
    cpDeploymentId,
    environment,
    instanceDomain;

-(id)init {
    if (self = [super init])  {
        self.environment = @"production";
        self.instanceDomain = @"mmob.com";
    }
    return self;
}

- (NSMutableDictionary *) addKeysToDictionary: (NSMutableDictionary *) mutableDictionary {
    if (self.cpId) { [mutableDictionary setObject:self.cpId forKey:@"cp_id"]; }
    if (self.cpDeploymentId) { [mutableDictionary setObject:self.cpDeploymentId forKey:@"cp_deployment_id"]; }
//    if (self.environment) { [mutableDictionary setObject:self.environment forKey:@"environment"]; }
//    if (self.instanceDomain) { [mutableDictionary setObject:self.instanceDomain forKey:@"instanceDomain"]; }
    
    return mutableDictionary;
}
@end
