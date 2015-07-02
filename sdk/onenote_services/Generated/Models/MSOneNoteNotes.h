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

@class MSOneNoteNotebook;
@class MSOneNoteSection;
@class MSOneNoteSectionGroup;
@class MSOneNotePage;
@class MSOneNoteResource;

#import <Foundation/Foundation.h>
#import "MSOneNoteProtocols.h"
#import "MSOrcBaseEntity.h"

/**
* The header for type Notes.
*/

@interface MSOneNoteNotes : MSOrcBaseEntity
@property (retain, nonatomic, readwrite, getter=id, setter=setId:) NSString *id;
@property (retain, nonatomic, readwrite, getter=notebooks, setter=setNotebooks:) NSMutableArray<MSOneNoteNotebook> *notebooks;
@property (retain, nonatomic, readwrite, getter=sections, setter=setSections:) NSMutableArray<MSOneNoteSection> *sections;
@property (retain, nonatomic, readwrite, getter=sectionGroups, setter=setSectionGroups:) NSMutableArray<MSOneNoteSectionGroup> *sectionGroups;
@property (retain, nonatomic, readwrite, getter=pages, setter=setPages:) NSMutableArray<MSOneNotePage> *pages;
@property (retain, nonatomic, readwrite, getter=resources, setter=setResources:) NSMutableArray<MSOneNoteResource> *resources;

@end