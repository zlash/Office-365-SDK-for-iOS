/*******************************************************************************
Copyright (c) Microsoft Open Technologies, Inc. All Rights Reserved.
Licensed under the MIT or Apache License; see LICENSE in the source repository
root for authoritative license information.﻿

**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).
******************************************************************************/

#import "MSOutlookModels.h"

/**
* The implementation file for type Location.
*/

@implementation MSOutlookLocation	

@synthesize odataType = _odataType;
@synthesize DisplayName = _displayName;
@synthesize Address = _address;
@synthesize Coordinates = _coordinates;

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OutlookServices.Location";
	}

	return self;
}

 
- (void)setDisplayName:(NSString *)  displayName;
{
    _displayName =  displayName;
    [self valueChanged:displayName forProperty:@"DisplayName"];
}

 
- (void)setAddress:(MSOutlookPhysicalAddress *)  address;
{
    _address =  address;
    [self valueChanged:address forProperty:@"Address"];
}

 
- (void)setCoordinates:(MSOutlookGeoCoordinates *)  coordinates;
{
    _coordinates =  coordinates;
    [self valueChanged:coordinates forProperty:@"Coordinates"];
}


@end