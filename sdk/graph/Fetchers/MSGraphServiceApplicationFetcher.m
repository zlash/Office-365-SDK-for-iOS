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

@implementation MSGraphServiceApplicationFetcher

@synthesize operations = _operations;

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    if (self = [super initWithUrl:urlComponent parent:parent asClass:[MSGraphServiceApplication class]]) {

		_operations = [[MSGraphServiceApplicationOperations alloc] initOperationWithUrl:urlComponent parent:parent];
    }

    return self;
}

- (void)update:(id)entity callback:(void (^)(MSGraphServiceApplication *application, MSOrcError *e))callback {

	return [super update:entity callback:callback];
}

- (void)delete:(void (^)(int status, MSOrcError *e))callback {

	return [super deleteWithCallback:callback];
}

- (MSGraphServiceApplicationFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSGraphServiceApplicationFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

- (MSGraphServiceApplicationFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSGraphServiceApplicationFetcher *)expand:(NSString *)value {
    [super select:value];
    
    return self;
}

- (void) readWithCallback:(void (^)(MSGraphServiceApplication *application, MSOrcError *error))callback {
    [super readWithCallback:^(id response, MSOrcError *error) {
        callback(response, error);
    }];
}

- (MSGraphServiceExtensionPropertyCollectionFetcher *)extensionProperties {

    return [[MSGraphServiceExtensionPropertyCollectionFetcher alloc] initWithUrl:@"extensionProperties" parent:self asClass:[MSGraphServiceExtensionProperty class]];
}

- (MSGraphServiceExtensionPropertyFetcher *)getExtensionPropertiesById:(NSString *)id {

    return [[[MSGraphServiceExtensionPropertyCollectionFetcher alloc] initWithUrl:@"extensionProperties" parent:self asClass:[MSGraphServiceExtensionProperty class]] getById:id];
}

- (MSGraphServiceDirectoryObjectFetcher *)createdOnBehalfOf {

	 return [[MSGraphServiceDirectoryObjectFetcher alloc] initWithUrl:@"createdOnBehalfOf" parent:self asClass:[MSGraphServiceDirectoryObject class]];
}

- (MSGraphServiceDirectoryObjectCollectionFetcher *)owners {

    return [[MSGraphServiceDirectoryObjectCollectionFetcher alloc] initWithUrl:@"owners" parent:self asClass:[MSGraphServiceDirectoryObject class]];
}

- (MSGraphServiceDirectoryObjectFetcher *)getOwnersById:(NSString *)id {

    return [[[MSGraphServiceDirectoryObjectCollectionFetcher alloc] initWithUrl:@"owners" parent:self asClass:[MSGraphServiceDirectoryObject class]] getById:id];
}

@end