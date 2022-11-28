//
//  MmobCompanyConfiguration.h
//  EFHubIOs12
//
//  Created by Blai Pratdesaba Pares on 25/11/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MmobIntegrationConfiguration : NSObject
@property (nonatomic) NSString *cpId;
@property (nonatomic) NSString *cpDeploymentId;
@property (nonatomic) NSString *environment;
@property (nonatomic) NSString *instanceDomain;

- (NSMutableDictionary *) addKeysToDictionary: (NSMutableDictionary *) mutableDictionary;

@end

NS_ASSUME_NONNULL_END
