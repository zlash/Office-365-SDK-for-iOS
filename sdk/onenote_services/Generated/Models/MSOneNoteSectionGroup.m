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

#import "MSOneNoteModels.h"

/**
* The implementation file for type MSOneNoteSectionGroup.
*/

@implementation MSOneNoteSectionGroup	

@synthesize odataType = _odataType;
@synthesize sectionsUrl = _sectionsUrl;
@synthesize sectionGroupsUrl = _sectionGroupsUrl;
@synthesize name = _name;
@synthesize createdBy = _createdBy;
@synthesize lastModifiedBy = _lastModifiedBy;
@synthesize lastModifiedTime = _lastModifiedTime;
@synthesize id = _id;
@synthesize $$__self = _$$__self;
@synthesize createdTime = _createdTime;
@synthesize parentNotebook = _parentNotebook;
//@synthesize parentSectionGroup = _parentSectionGroup;
@synthesize sections = _sections;
@synthesize sectionGroups = _sectionGroups;

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OneNote.Api.SectionGroup";
    }

	return self;
}

 
- (void)setSectionsUrl:(NSString *)  sectionsUrl;
{
    _sectionsUrl =  sectionsUrl;
    [self valueChanged:sectionsUrl forProperty:@"sectionsUrl"];
}

 
- (void)setSectionGroupsUrl:(NSString *)  sectionGroupsUrl;
{
    _sectionGroupsUrl =  sectionGroupsUrl;
    [self valueChanged:sectionGroupsUrl forProperty:@"sectionGroupsUrl"];
}

 
- (void)setName:(NSString *)  name;
{
    _name =  name;
    [self valueChanged:name forProperty:@"name"];
}

 
- (void)setCreatedBy:(NSString *)  createdBy;
{
    _createdBy =  createdBy;
    [self valueChanged:createdBy forProperty:@"createdBy"];
}

 
- (void)setLastModifiedBy:(NSString *)  lastModifiedBy;
{
    _lastModifiedBy =  lastModifiedBy;
    [self valueChanged:lastModifiedBy forProperty:@"lastModifiedBy"];
}

 
- (void)setLastModifiedTime:(NSDate *)  lastModifiedTime;
{
    _lastModifiedTime =  lastModifiedTime;
    [self valueChanged:lastModifiedTime forProperty:@"lastModifiedTime"];
}

 
- (void)setId:(NSString *)  id;
{
    _id =  id;
    [self valueChanged:id forProperty:@"id"];
}

 
- (void)setSelf:(NSString *)  $$__self;
{
    _$$__self =  $$__self;
    [self valueChanged:$$__self forProperty:@"$$__self"];
}

 
- (void)setCreatedTime:(NSDate *)  createdTime;
{
    _createdTime =  createdTime;
    [self valueChanged:createdTime forProperty:@"createdTime"];
}

 
- (void)setParentNotebook:(MSOneNoteNotebook *)  parentNotebook;
{
    _parentNotebook =  parentNotebook;
    [self valueChanged:parentNotebook forProperty:@"parentNotebook"];
}

 
/*- (void)setParentSectionGroup:(MSOneNoteSectionGroup *)  parentSectionGroup;
{
    _parentSectionGroup =  parentSectionGroup;
    [self valueChanged:parentSectionGroup forProperty:@"parentSectionGroup"];
}*/

 
- (void)setSections:(NSMutableArray<MSOneNoteSection> *)  sections;
{
    _sections =  sections;
    [self valueChanged:sections forProperty:@"sections"];
}

 
- (void)setSectionGroups:(NSMutableArray<MSOneNoteSectionGroup> *)  sectionGroups;
{
    _sectionGroups =  sectionGroups;
    [self valueChanged:sectionGroups forProperty:@"sectionGroups"];
}

@end