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

@implementation MSGraphServiceContactFetcher

@synthesize operations = _operations;

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    if (self = [super initWithUrl:urlComponent parent:parent asClass:[MSGraphServiceContact class]]) {

		_operations = [[MSGraphServiceContactOperations alloc] initOperationWithUrl:urlComponent parent:parent];
    }

    return self;
}

- (void)update:(id)entity callback:(void (^)(MSGraphServiceContact *contact, MSOrcError *e))callback {

	return [super update:entity callback:callback];
}

- (void)delete:(void (^)(int status, MSOrcError *e))callback {

	return [super deleteWithCallback:callback];
}

- (MSGraphServiceContactFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSGraphServiceContactFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

- (MSGraphServiceContactFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSGraphServiceContactFetcher *)expand:(NSString *)value {
    [super select:value];
    
    return self;
}

- (void) readWithCallback:(void (^)(MSGraphServiceContact *contact, MSOrcError *error))callback {
    [super readWithCallback:^(id response, MSOrcError *error) {
        callback(response, error);
    }];
}

- (MSGraphServiceDirectoryObjectFetcher *)manager {

	 return [[MSGraphServiceDirectoryObjectFetcher alloc] initWithUrl:@"manager" parent:self asClass:[MSGraphServiceDirectoryObject class]];
}

- (MSGraphServiceDirectoryObjectCollectionFetcher *)directReports {

    return [[MSGraphServiceDirectoryObjectCollectionFetcher alloc] initWithUrl:@"directReports" parent:self asClass:[MSGraphServiceDirectoryObject class]];
}

- (MSGraphServiceDirectoryObjectFetcher *)getDirectReportsById:(NSString *)id {

    return [[[MSGraphServiceDirectoryObjectCollectionFetcher alloc] initWithUrl:@"directReports" parent:self asClass:[MSGraphServiceDirectoryObject class]] getById:id];
}

- (MSGraphServiceDirectoryObjectCollectionFetcher *)memberOf {

    return [[MSGraphServiceDirectoryObjectCollectionFetcher alloc] initWithUrl:@"memberOf" parent:self asClass:[MSGraphServiceDirectoryObject class]];
}

- (MSGraphServiceDirectoryObjectFetcher *)getMemberOfById:(NSString *)id {

    return [[[MSGraphServiceDirectoryObjectCollectionFetcher alloc] initWithUrl:@"memberOf" parent:self asClass:[MSGraphServiceDirectoryObject class]] getById:id];
}

@end