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
@class MSGraphAppRoleAssignmentFetcher;
@class MSGraphAppRoleAssignmentCollectionFetcher;
@class MSGraphOAuth2PermissionGrantFetcher;
@class MSGraphOAuth2PermissionGrantCollectionFetcher;
@class MSGraphDirectoryObjectFetcher;
@class MSGraphDirectoryObjectCollectionFetcher;
@class MSGraphMessageFetcher;
@class MSGraphMessageCollectionFetcher;
@class MSGraphCalendarFetcher;
@class MSGraphCalendarCollectionFetcher;
@class MSGraphCalendarGroupFetcher;
@class MSGraphCalendarGroupCollectionFetcher;
@class MSGraphEventFetcher;
@class MSGraphEventCollectionFetcher;
@class MSGraphPhotoFetcher;
@class MSGraphPhotoCollectionFetcher;
@class MSGraphDriveFetcher;
@class MSGraphItemFetcher;
@class MSGraphItemCollectionFetcher;
@class MSGraphUserOperations;

#import <core/core.h>
#import "MSGraphModels.h"

/**
* The header for type MSGraphUserFetcher.
*/


@interface MSGraphUserFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSGraphUserOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void) readWithCallback:(void (^)(MSGraphUser *user, MSOrcError *error))callback;
- (void)update:(MSGraphUser *)user callback:(void(^)(MSGraphUser *user, MSOrcError *error))callback;
- (void)delete:(void(^)(int status, MSOrcError *error))callback;
- (MSGraphUserFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphUserFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSGraphUserFetcher *)select:(NSString *)params;
- (MSGraphUserFetcher *)expand:(NSString *)value;
@property (retain, nonatomic, readonly, getter=appRoleAssignments) MSGraphAppRoleAssignmentCollectionFetcher *appRoleAssignments;

- (MSGraphAppRoleAssignmentFetcher *)getAppRoleAssignmentsById:(NSString*)id;

@property (retain, nonatomic, readonly, getter=oauth2PermissionGrants) MSGraphOAuth2PermissionGrantCollectionFetcher *oauth2PermissionGrants;

- (MSGraphOAuth2PermissionGrantFetcher *)getOauth2PermissionGrantsById:(NSString*)id;

@property (retain, nonatomic, readonly, getter=ownedDevices) MSGraphDirectoryObjectCollectionFetcher *ownedDevices;

- (MSGraphDirectoryObjectFetcher *)getOwnedDevicesById:(NSString*)id;

@property (retain, nonatomic, readonly, getter=registeredDevices) MSGraphDirectoryObjectCollectionFetcher *registeredDevices;

- (MSGraphDirectoryObjectFetcher *)getRegisteredDevicesById:(NSString*)id;


@property (retain, nonatomic, readonly, getter=manager) MSGraphDirectoryObjectFetcher *manager;
@property (retain, nonatomic, readonly, getter=directReports) MSGraphDirectoryObjectCollectionFetcher *directReports;

- (MSGraphDirectoryObjectFetcher *)getDirectReportsById:(NSString*)id;

@property (retain, nonatomic, readonly, getter=memberOf) MSGraphDirectoryObjectCollectionFetcher *memberOf;

- (MSGraphDirectoryObjectFetcher *)getMemberOfById:(NSString*)id;

@property (retain, nonatomic, readonly, getter=createdObjects) MSGraphDirectoryObjectCollectionFetcher *createdObjects;

- (MSGraphDirectoryObjectFetcher *)getCreatedObjectsById:(NSString*)id;

@property (retain, nonatomic, readonly, getter=ownedObjects) MSGraphDirectoryObjectCollectionFetcher *ownedObjects;

- (MSGraphDirectoryObjectFetcher *)getOwnedObjectsById:(NSString*)id;

@property (retain, nonatomic, readonly, getter=messages) MSGraphMessageCollectionFetcher *messages;

- (MSGraphMessageFetcher *)getMessagesById:(NSString*)id;

@property (retain, nonatomic, readonly, getter=calendars) MSGraphCalendarCollectionFetcher *calendars;

- (MSGraphCalendarFetcher *)getCalendarsById:(NSString*)id;


@property (retain, nonatomic, readonly, getter=calendar) MSGraphCalendarFetcher *calendar;
@property (retain, nonatomic, readonly, getter=calendarGroups) MSGraphCalendarGroupCollectionFetcher *calendarGroups;

- (MSGraphCalendarGroupFetcher *)getCalendarGroupsById:(NSString*)id;

@property (retain, nonatomic, readonly, getter=events) MSGraphEventCollectionFetcher *events;

- (MSGraphEventFetcher *)getEventsById:(NSString*)id;

@property (retain, nonatomic, readonly, getter=calendarView) MSGraphEventCollectionFetcher *calendarView;

- (MSGraphEventFetcher *)getCalendarViewById:(NSString*)id;


@property (retain, nonatomic, readonly, getter=userPhoto) MSGraphPhotoFetcher *userPhoto;
@property (retain, nonatomic, readonly, getter=userPhotos) MSGraphPhotoCollectionFetcher *userPhotos;

- (MSGraphPhotoFetcher *)getUserPhotosById:(NSString*)id;


@property (retain, nonatomic, readonly, getter=drive) MSGraphDriveFetcher *drive;
@property (retain, nonatomic, readonly, getter=files) MSGraphItemCollectionFetcher *files;

- (MSGraphItemFetcher *)getFilesById:(NSString*)id;


@end