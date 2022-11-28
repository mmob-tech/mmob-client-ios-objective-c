//
//  MmobCustomerInfo.h
//  EFHubIOs12
//
//  Created by Blai Pratdesaba Pares on 23/11/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@interface MmobCustomerInfo : NSObject


-(NSMutableDictionary *) addKeysToDictionary: (NSMutableDictionary *) mutableDictionary;


@property (nonatomic) NSString *email;
@property (nonatomic) NSString *first_name;
@property (nonatomic) NSString *surname;
@property (nonatomic) NSString *title;
@property (nonatomic) NSString *preferred_name;
@property (nonatomic) NSString *dob;
@property (nonatomic) NSString *postcode;
@property (nonatomic) NSString *building_number;
@property (nonatomic) NSString *address_1;
@property (nonatomic) NSString *address_2;
@property (nonatomic) NSString *address_3;
@property (nonatomic) NSString *town_city;
@property (nonatomic) NSString *country;
@property (nonatomic) NSString *country_of_residence;
@property (nonatomic) NSString *nationality;
@property (nonatomic) NSString *gender;
@property (nonatomic) NSString *relationship_status;
@property (nonatomic) NSNumber *number_of_children;
@property (nonatomic) NSNumber *ages_of_children;
@property (nonatomic) NSString *partner_first_name;
@property (nonatomic) NSString *partner_surname;
@property (nonatomic) NSString *partner_dob;
@property (nonatomic) NSString *partner_sex;
@property (nonatomic) NSString *relationship_to_partner;
@property (nonatomic) NSString *smoker;
@property (nonatomic) NSNumber *number_of_cigarettes_per_week;
@property (nonatomic) NSString *drinker;
@property (nonatomic) NSNumber *number_of_units_per_week;
@property (nonatomic) NSString *passport_number;
@property (nonatomic) NSString *national_insurance_number;
@property (nonatomic) NSString *phone_number;
@property (nonatomic) NSString *mobile_number;



@end

NS_ASSUME_NONNULL_END
