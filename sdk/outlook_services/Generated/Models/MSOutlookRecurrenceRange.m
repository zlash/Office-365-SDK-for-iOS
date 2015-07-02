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
* The implementation file for type RecurrenceRange.
*/

@implementation MSOutlookRecurrenceRange	

@synthesize odataType = _odataType;
@synthesize Type = _type;
@synthesize StartDate = _startDate;
@synthesize EndDate = _endDate;
@synthesize NumberOfOccurrences = _numberOfOccurrences;

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OutlookServices.RecurrenceRange";
	}

	return self;
}


- (void)setTypeString:(NSString *)value {

	if ([value isEqualToString:@"EndDate"]) {

		self.Type = MSOutlook_RecurrenceRangeType_EndDate;
        [self valueChanged:value forProperty:@"Type"];
	}

	if ([value isEqualToString:@"NoEnd"]) {

		self.Type = MSOutlook_RecurrenceRangeType_NoEnd;
        [self valueChanged:value forProperty:@"Type"];
	}

	if ([value isEqualToString:@"Numbered"]) {

		self.Type = MSOutlook_RecurrenceRangeType_Numbered;
        [self valueChanged:value forProperty:@"Type"];
	}
}
 
- (void)setStartDate:(NSDate *)  startDate;
{
    _startDate =  startDate;
    [self valueChanged:startDate forProperty:@"StartDate"];
}

 
- (void)setEndDate:(NSDate *)  endDate;
{
    _endDate =  endDate;
    [self valueChanged:endDate forProperty:@"EndDate"];
}

 
- (void)setNumberOfOccurrences:(int )  numberOfOccurrences;
{
    _numberOfOccurrences =  numberOfOccurrences;
    [self valueChangedForInt:numberOfOccurrences forProperty:@"NumberOfOccurrences"];
}


@end