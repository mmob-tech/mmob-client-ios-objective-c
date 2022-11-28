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
    
    if (self.email) { [mutableDictionary setObject:self.email forKey:@"email"]; }
    if (self.first_name) { [mutableDictionary setObject:self.first_name forKey:@"first_name"]; }
    if (self.surname) { [mutableDictionary setObject:self.surname forKey:@"surname"]; }
    if (self.title) { [mutableDictionary setObject:self.title forKey:@"title"]; }
    if (self.preferred_name) { [mutableDictionary setObject:self.preferred_name forKey:@"preferred_name"]; }
    if (self.dob) { [mutableDictionary setObject:self.dob forKey:@"dob"]; }
    if (self.postcode) { [mutableDictionary setObject:self.postcode forKey:@"postcode"]; }
    if (self.building_number) { [mutableDictionary setObject:self.building_number forKey:@"building_number"]; }
    if (self.address_1) { [mutableDictionary setObject:self.address_1 forKey:@"address_1"]; }
    if (self.address_2) { [mutableDictionary setObject:self.address_2 forKey:@"address_2"]; }
    if (self.address_3) { [mutableDictionary setObject:self.address_3 forKey:@"address_3"]; }
    if (self.town_city) { [mutableDictionary setObject:self.town_city forKey:@"town_city"]; }
    if (self.country) { [mutableDictionary setObject:self.country forKey:@"country"]; }
    if (self.country_of_residence) { [mutableDictionary setObject:self.country_of_residence forKey:@"country_of_residence"]; }
    if (self.nationality) { [mutableDictionary setObject:self.nationality forKey:@"nationality"]; }
    if (self.gender) { [mutableDictionary setObject:self.gender forKey:@"gender"]; }
    if (self.relationship_status) { [mutableDictionary setObject:self.relationship_status forKey:@"relationship_status"]; }
    if (self.number_of_children) { [mutableDictionary setObject:self.number_of_children forKey:@"number_of_children"]; }
    if (self.ages_of_children) { [mutableDictionary setObject:self.ages_of_children forKey:@"ages_of_children"]; }
    if (self.partner_first_name) { [mutableDictionary setObject:self.partner_first_name forKey:@"partner_first_name"]; }
    if (self.partner_surname) { [mutableDictionary setObject:self.partner_surname forKey:@"partner_surname"]; }
    if (self.partner_dob) { [mutableDictionary setObject:self.partner_dob forKey:@"partner_dob"]; }
    if (self.partner_sex) { [mutableDictionary setObject:self.partner_sex forKey:@"partner_sex"]; }
    if (self.relationship_to_partner) { [mutableDictionary setObject:self.relationship_to_partner forKey:@"relationship_to_partner"]; }
    if (self.smoker) { [mutableDictionary setObject:self.smoker forKey:@"smoker"]; }
    if (self.number_of_cigarettes_per_week) { [mutableDictionary setObject:self.number_of_cigarettes_per_week forKey:@"number_of_cigarettes_per_week"]; }
    if (self.drinker) { [mutableDictionary setObject:self.drinker forKey:@"drinker"]; }
    if (self.number_of_units_per_week) { [mutableDictionary setObject:self.number_of_units_per_week forKey:@"number_of_units_per_week"]; }
    if (self.passport_number) { [mutableDictionary setObject:self.passport_number forKey:@"passport_number"]; }
    if (self.national_insurance_number) { [mutableDictionary setObject:self.national_insurance_number forKey:@"national_insurance_number"]; }
    if (self.phone_number) { [mutableDictionary setObject:self.phone_number forKey:@"phone_number"]; }
    if (self.mobile_number) { [mutableDictionary setObject:self.mobile_number forKey:@"mobile_number"]; }
    
    return mutableDictionary;
}

@end
