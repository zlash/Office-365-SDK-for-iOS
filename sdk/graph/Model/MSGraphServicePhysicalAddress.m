/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Open Technologies, Inc. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/
#import "MSGraphServiceModels.h"

/**
* The implementation file for type PhysicalAddress.
*/

@implementation MSGraphServicePhysicalAddress	

@synthesize odataType = _odataType;
@synthesize Street = _street;
@synthesize City = _city;
@synthesize State = _state;
@synthesize CountryOrRegion = _countryOrRegion;
@synthesize PostalCode = _postalCode;

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.PhysicalAddress";
	}

	return self;
}

- (void)setStreet:(NSString *) street {
    _street = street;
	[self valueChanged:street forProperty:@"Street"];
}
    
- (void)setCity:(NSString *) city {
    _city = city;
	[self valueChanged:city forProperty:@"City"];
}
    
- (void)setState:(NSString *) state {
    _state = state;
	[self valueChanged:state forProperty:@"State"];
}
    
- (void)setCountryOrRegion:(NSString *) countryOrRegion {
    _countryOrRegion = countryOrRegion;
	[self valueChanged:countryOrRegion forProperty:@"CountryOrRegion"];
}
    
- (void)setPostalCode:(NSString *) postalCode {
    _postalCode = postalCode;
	[self valueChanged:postalCode forProperty:@"PostalCode"];
}
    
@end