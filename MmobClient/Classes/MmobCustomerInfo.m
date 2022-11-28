//
//  MmobCustomerInfo.m
//  EFHubIOs12
//
//  Created by Blai Pratdesaba Pares on 23/11/2022.
//

#import "MmobCustomerInfo.h"

@implementation MmobCustomerInfo

@synthesize email,
    first_name,
    surname,
    title,
    preferred_name,
    dob,
    postcode,
    building_number,
    address_1,
    address_2,
    address_3,
    town_city,
    country,
    country_of_residence,
    nationality,
    gender,
    relationship_status,
    number_of_children,
    ages_of_children,
    partner_first_name,
    partner_surname,
    partner_dob,
    partner_sex,
    relationship_to_partner,
    smoker,
    number_of_cigarettes_per_week,
    drinker,
    number_of_units_per_week,
    passport_number,
    national_insurance_number,
    phone_number,
    mobile_number;


- (NSMutableDictionary *) addKeysToDictionary: (NSMutableDictionary *) mutableDictionary {
    
    if (self.email) {
        [mutableDictionary setObject:self.email forKey:@"email"];
    }
    
    if (self.first_name) {
        [mutableDictionary setObject:self.first_name forKey:@"first_name"];
    }
    
    if (self.surname) {
        [mutableDictionary setObject:self.surname forKey:@"surname"];
    }
    
    
    return mutableDictionary;
}

@end
