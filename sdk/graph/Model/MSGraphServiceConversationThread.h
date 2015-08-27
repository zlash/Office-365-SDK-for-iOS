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

@class MSGraphServiceRecipient;
@class MSGraphServicePost;

#import <Foundation/Foundation.h>
#import "MSOrcBaseEntity.h"

/**
* The header for type ConversationThread.
*/

@interface MSGraphServiceConversationThread : MSOrcBaseEntity

@property (copy, nonatomic, readwrite, getter=id, setter=setId:) NSString *Id;
@property (copy, nonatomic, readwrite, getter=toRecipients, setter=setToRecipients:) NSMutableArray *ToRecipients;
@property (copy, nonatomic, readwrite, getter=ccRecipients, setter=setCcRecipients:) NSMutableArray *CcRecipients;
@property (copy, nonatomic, readwrite, getter=preview, setter=setPreview:) NSString *Preview;
@property (copy, nonatomic, readwrite, getter=posts, setter=setPosts:) NSMutableArray *Posts;

@end