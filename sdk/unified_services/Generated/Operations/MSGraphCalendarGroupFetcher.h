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
@class MSGraphCalendarFetcher;
@class MSGraphCalendarCollectionFetcher;
@class MSGraphCalendarGroupOperations;

#import <core/core.h>
#import "MSGraphModels.h"

/**
* The header for type MSGraphCalendarGroupFetcher.
*/


@interface MSGraphCalendarGroupFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSGraphCalendarGroupOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void) readWithCallback:(void (^)(MSGraphCalendarGroup *calendarGroup, MSOrcError *error))callback;
- (void)update:(MSGraphCalendarGroup *)calendarGroup callback:(void(^)(MSGraphCalendarGroup *calendarGroup, MSOrcError *error))callback;
- (void)delete:(void(^)(int status, MSOrcError *error))callback;
- (MSGraphCalendarGroupFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphCalendarGroupFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSGraphCalendarGroupFetcher *)select:(NSString *)params;
- (MSGraphCalendarGroupFetcher *)expand:(NSString *)value;
@property (retain, nonatomic, readonly, getter=calendars) MSGraphCalendarCollectionFetcher *calendars;

- (MSGraphCalendarFetcher *)getCalendarsById:(NSString*)id;


@end