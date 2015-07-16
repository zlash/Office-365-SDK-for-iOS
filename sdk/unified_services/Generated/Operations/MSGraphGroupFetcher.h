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
@class MSGraphDirectoryObjectFetcher;
@class MSGraphDirectoryObjectCollectionFetcher;
@class MSGraphItemFetcher;
@class MSGraphItemCollectionFetcher;
@class MSGraphGroupOperations;

#import <core/core.h>
#import "MSGraphModels.h"

/**
* The header for type MSGraphGroupFetcher.
*/


@interface MSGraphGroupFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSGraphGroupOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void) readWithCallback:(void (^)(MSGraphGroup *group, MSOrcError *error))callback;
- (void)update:(MSGraphGroup *)group callback:(void(^)(MSGraphGroup *group, MSOrcError *error))callback;
- (void)delete:(void(^)(int status, MSOrcError *error))callback;
- (MSGraphGroupFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphGroupFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSGraphGroupFetcher *)select:(NSString *)params;
- (MSGraphGroupFetcher *)expand:(NSString *)value;
@property (retain, nonatomic, readonly, getter=appRoleAssignments) MSGraphAppRoleAssignmentCollectionFetcher *appRoleAssignments;

- (MSGraphAppRoleAssignmentFetcher *)getAppRoleAssignmentsById:(NSString*)id;

@property (retain, nonatomic, readonly, getter=members) MSGraphDirectoryObjectCollectionFetcher *members;

- (MSGraphDirectoryObjectFetcher *)getMembersById:(NSString*)id;

@property (retain, nonatomic, readonly, getter=memberOf) MSGraphDirectoryObjectCollectionFetcher *memberOf;

- (MSGraphDirectoryObjectFetcher *)getMemberOfById:(NSString*)id;


@property (retain, nonatomic, readonly, getter=createdOnBehalfOf) MSGraphDirectoryObjectFetcher *createdOnBehalfOf;
@property (retain, nonatomic, readonly, getter=owners) MSGraphDirectoryObjectCollectionFetcher *owners;

- (MSGraphDirectoryObjectFetcher *)getOwnersById:(NSString*)id;

@property (retain, nonatomic, readonly, getter=files) MSGraphItemCollectionFetcher *files;

- (MSGraphItemFetcher *)getFilesById:(NSString*)id;


@end