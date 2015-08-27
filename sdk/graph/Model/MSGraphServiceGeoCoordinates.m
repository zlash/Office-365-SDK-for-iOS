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
* The implementation file for type GeoCoordinates.
*/

@implementation MSGraphServiceGeoCoordinates	

@synthesize odataType = _odataType;
@synthesize Altitude = _altitude;
@synthesize Latitude = _latitude;
@synthesize Longitude = _longitude;
@synthesize Accuracy = _accuracy;
@synthesize AltitudeAccuracy = _altitudeAccuracy;

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.GeoCoordinates";
	}

	return self;
}

- (void)setAltitude:(MSGraphServiceDouble *) altitude {
    _altitude = altitude;
	[self valueChanged:altitude forProperty:@"Altitude"];
}
    
- (void)setLatitude:(MSGraphServiceDouble *) latitude {
    _latitude = latitude;
	[self valueChanged:latitude forProperty:@"Latitude"];
}
    
- (void)setLongitude:(MSGraphServiceDouble *) longitude {
    _longitude = longitude;
	[self valueChanged:longitude forProperty:@"Longitude"];
}
    
- (void)setAccuracy:(MSGraphServiceDouble *) accuracy {
    _accuracy = accuracy;
	[self valueChanged:accuracy forProperty:@"Accuracy"];
}
    
- (void)setAltitudeAccuracy:(MSGraphServiceDouble *) altitudeAccuracy {
    _altitudeAccuracy = altitudeAccuracy;
	[self valueChanged:altitudeAccuracy forProperty:@"AltitudeAccuracy"];
}
    
@end