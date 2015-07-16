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
@class MSOutlookCalendarGroupFetcher;

#import <core/core.h>
#import "MSOutlookModels.h"

/**
* The header for type MSOutlookCalendarGroupCollectionFetcher.
*/

@interface MSOutlookCalendarGroupCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (MSOutlookCalendarGroupFetcher *)getById:(NSString *)Id;
- (void)add:(MSOutlookCalendarGroup *)entity callback:(void (^)(MSOutlookCalendarGroup *calendarGroup, MSOrcError *error))callback;

- (MSOutlookCalendarGroupCollectionFetcher *)select:(NSString *)params;
- (MSOutlookCalendarGroupCollectionFetcher *)filter:(NSString *)params;
- (MSOutlookCalendarGroupCollectionFetcher *)search:(NSString *)params;
- (MSOutlookCalendarGroupCollectionFetcher *)top:(int)value;
- (MSOutlookCalendarGroupCollectionFetcher *)skip:(int)value;
- (MSOutlookCalendarGroupCollectionFetcher *)expand:(NSString *)value;
- (MSOutlookCalendarGroupCollectionFetcher *)orderBy:(NSString *)params;
- (MSOutlookCalendarGroupCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSOutlookCalendarGroupCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end