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
#import "MSGraphModels.h"

/**
* The implementation file for type PatternedRecurrence.
*/

@implementation MSGraphPatternedRecurrence	

@synthesize odataType = _odataType;
@synthesize Pattern = _pattern;
@synthesize Range = _range;

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.Graph.PatternedRecurrence";
	}

	return self;
}

- (void)setPattern:(MSGraphRecurrencePattern *) pattern {
    _pattern = pattern;
	[self valueChanged:pattern forProperty:@"Pattern"];
}
    
- (void)setRange:(MSGraphRecurrenceRange *) range {
    _range = range;
	[self valueChanged:range forProperty:@"Range"];
}
    
@end