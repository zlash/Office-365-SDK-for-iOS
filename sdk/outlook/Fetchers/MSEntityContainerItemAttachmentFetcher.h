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
@class MSEntityContainerItemFetcher;
@class MSEntityContainerItemAttachmentOperations;

#import <core/core.h>
#import "MSEntityContainerModels.h"

/**
* The header for type MSEntityContainerItemAttachmentFetcher.
*/


@interface MSEntityContainerItemAttachmentFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSEntityContainerItemAttachmentOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void) readWithCallback:(void (^)(MSEntityContainerItemAttachment *itemAttachment, MSOrcError *error))callback;
- (void)update:(MSEntityContainerItemAttachment *)itemAttachment callback:(void(^)(MSEntityContainerItemAttachment *itemAttachment, MSOrcError *error))callback;
- (void)delete:(void(^)(int status, MSOrcError *error))callback;
- (MSEntityContainerItemAttachmentFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSEntityContainerItemAttachmentFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSEntityContainerItemAttachmentFetcher *)select:(NSString *)params;
- (MSEntityContainerItemAttachmentFetcher *)expand:(NSString *)value;

@property (retain, nonatomic, readonly, getter=item) MSEntityContainerItemFetcher *item;

@end