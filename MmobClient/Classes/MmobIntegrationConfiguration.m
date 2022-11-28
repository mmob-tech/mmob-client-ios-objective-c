//
//  MmobCompanyConfiguration.m
//  EFHubIOs12
//
//  Created by Blai Pratdesaba Pares on 25/11/2022.
//

#import "MmobIntegrationConfiguration.h"

@implementation MmobIntegrationConfiguration

-(id)init {
    if (self = [super init])  {
        self.environment = @"production";
        self.instanceDomain = @"mmob.com";
    }
    return self;
}
@end
