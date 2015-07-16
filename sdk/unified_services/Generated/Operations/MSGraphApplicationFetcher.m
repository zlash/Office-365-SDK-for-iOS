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
#import "MSGraphFetchers.h"

@implementation MSGraphApplicationFetcher

@synthesize operations = _operations;

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    if (self = [super initWithUrl:urlComponent parent:parent asClass:[MSGraphApplication class]]) {

		_operations = [[MSGraphApplicationOperations alloc] initOperationWithUrl:urlComponent parent:parent];
    }

    return self;
}

- (void)update:(id)entity callback:(void (^)(MSGraphApplication *application, MSOrcError *e))callback {

	return [super update:entity callback:callback];
}

- (void)delete:(void (^)(int status, MSOrcError *e))callback {

	return [super deleteWithCallback:callback];
}

- (MSGraphApplicationFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSGraphApplicationFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

- (MSGraphApplicationFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSGraphApplicationFetcher *)expand:(NSString *)value {
    [super select:value];
    
    return self;
}

- (void) readWithCallback:(void (^)(MSGraphApplication *application, MSOrcError *error))callback {
    [super readWithCallback:^(id response, MSOrcError *error) {
        callback(response, error);
    }];
}

- (MSGraphExtensionPropertyCollectionFetcher *)extensionProperties {

    return [[MSGraphExtensionPropertyCollectionFetcher alloc] initWithUrl:@"extensionProperties" parent:self asClass:[MSGraphExtensionProperty class]];
}

- (MSGraphExtensionPropertyFetcher *)getExtensionPropertiesById:(NSString *)id {

    return [[[MSGraphExtensionPropertyCollectionFetcher alloc] initWithUrl:@"extensionProperties" parent:self asClass:[MSGraphExtensionProperty class]] getById:id];
}

- (MSGraphDirectoryObjectFetcher *)createdOnBehalfOf {

	 return [[MSGraphDirectoryObjectFetcher alloc] initWithUrl:@"createdOnBehalfOf" parent:self asClass:[MSGraphDirectoryObject class]];
}

- (MSGraphDirectoryObjectCollectionFetcher *)owners {

    return [[MSGraphDirectoryObjectCollectionFetcher alloc] initWithUrl:@"owners" parent:self asClass:[MSGraphDirectoryObject class]];
}

- (MSGraphDirectoryObjectFetcher *)getOwnersById:(NSString *)id {

    return [[[MSGraphDirectoryObjectCollectionFetcher alloc] initWithUrl:@"owners" parent:self asClass:[MSGraphDirectoryObject class]] getById:id];
}

@end