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
@class MSGraphEventFetcher;
@class MSGraphEventCollectionFetcher;
@class MSGraphCalendarOperations;

#import <core/core.h>
#import "MSGraphModels.h"

/**
* The header for type MSGraphCalendarFetcher.
*/


@interface MSGraphCalendarFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSGraphCalendarOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void) readWithCallback:(void (^)(MSGraphCalendar *calendar, MSOrcError *error))callback;
- (void)update:(MSGraphCalendar *)calendar callback:(void(^)(MSGraphCalendar *calendar, MSOrcError *error))callback;
- (void)delete:(void(^)(int status, MSOrcError *error))callback;
- (MSGraphCalendarFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphCalendarFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSGraphCalendarFetcher *)select:(NSString *)params;
- (MSGraphCalendarFetcher *)expand:(NSString *)value;
@property (retain, nonatomic, readonly, getter=calendarView) MSGraphEventCollectionFetcher *calendarView;

- (MSGraphEventFetcher *)getCalendarViewById:(NSString*)id;

@property (retain, nonatomic, readonly, getter=events) MSGraphEventCollectionFetcher *events;

- (MSGraphEventFetcher *)getEventsById:(NSString*)id;


@end