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
#import "MSGraphServiceFetchers.h"

/**
* The implementation file for type MSGraphServiceExtensionPropertyCollectionFetcher.
*/

@implementation MSGraphServiceExtensionPropertyCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    return [super initWithUrl:urlComponent parent:parent asClass:[MSGraphServiceExtensionProperty class]];
}

- (void)add:(MSGraphServiceExtensionProperty*)entity callback:(void (^)(MSGraphServiceExtensionProperty *extensionProperty, MSOrcError *error))callback {
	
	return [super add:entity callback:^(id entityAdded, MSOrcError *e) {

        callback(entityAdded,e);
    }];
}

- (MSGraphServiceExtensionPropertyFetcher *)getById:(NSString *)id {

    return [[MSGraphServiceExtensionPropertyFetcher alloc] initWithUrl:[[NSString alloc] initWithFormat:@"('%@')" ,id] parent:self];
}

- (MSGraphServiceExtensionPropertyCollectionFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSGraphServiceExtensionPropertyCollectionFetcher *)filter:(NSString *)params{
    [super filter:params];
    
    return self;
}

- (MSGraphServiceExtensionPropertyCollectionFetcher *)search:(NSString *)params {
    [super search:params];
    
    return self;
}

- (MSGraphServiceExtensionPropertyCollectionFetcher *)top:(int)value {
    [super top:value];
    
    return self;
}

- (MSGraphServiceExtensionPropertyCollectionFetcher *)skip:(int)value {
    [super skip:value];
    
    return self;
}

- (MSGraphServiceExtensionPropertyCollectionFetcher *)expand:(NSString *)value {
    [super expand:value];
    
    return self;
}

- (MSGraphServiceExtensionPropertyCollectionFetcher *)orderBy:(NSString *)params {
    [super orderBy:params];
    
    return self;
}

- (MSGraphServiceExtensionPropertyCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSGraphServiceExtensionPropertyCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

@end