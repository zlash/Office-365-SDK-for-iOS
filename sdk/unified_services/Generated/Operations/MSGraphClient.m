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

/**
* The implementation file for type MSGraphClient.
*/

@implementation MSGraphClient

- (instancetype)initWithUrl:(NSString *)url dependencyResolver:(id<MSOrcDependencyResolver>)resolver {

    return [super initWithUrl:url dependencyResolver:resolver];
}

- (MSGraphDirectoryObjectCollectionFetcher *)directoryObjects {

	return [[MSGraphDirectoryObjectCollectionFetcher alloc] initWithUrl:@"directoryObjects" parent:self];
}
- (MSGraphApplicationCollectionFetcher *)applications {

	return [[MSGraphApplicationCollectionFetcher alloc] initWithUrl:@"applications" parent:self];
}
- (MSGraphContactCollectionFetcher *)contacts {

	return [[MSGraphContactCollectionFetcher alloc] initWithUrl:@"contacts" parent:self];
}
- (MSGraphDeviceConfigurationCollectionFetcher *)deviceConfiguration {

	return [[MSGraphDeviceConfigurationCollectionFetcher alloc] initWithUrl:@"deviceConfiguration" parent:self];
}
- (MSGraphDeviceCollectionFetcher *)devices {

	return [[MSGraphDeviceCollectionFetcher alloc] initWithUrl:@"devices" parent:self];
}
- (MSGraphGroupCollectionFetcher *)groups {

	return [[MSGraphGroupCollectionFetcher alloc] initWithUrl:@"groups" parent:self];
}
- (MSGraphDirectoryRoleCollectionFetcher *)directoryRoles {

	return [[MSGraphDirectoryRoleCollectionFetcher alloc] initWithUrl:@"directoryRoles" parent:self];
}
- (MSGraphDirectoryRoleTemplateCollectionFetcher *)directoryRoleTemplates {

	return [[MSGraphDirectoryRoleTemplateCollectionFetcher alloc] initWithUrl:@"directoryRoleTemplates" parent:self];
}
- (MSGraphServicePrincipalCollectionFetcher *)servicePrincipals {

	return [[MSGraphServicePrincipalCollectionFetcher alloc] initWithUrl:@"servicePrincipals" parent:self];
}
- (MSGraphTenantDetailCollectionFetcher *)tenantDetails {

	return [[MSGraphTenantDetailCollectionFetcher alloc] initWithUrl:@"tenantDetails" parent:self];
}
- (MSGraphUserCollectionFetcher *)users {

	return [[MSGraphUserCollectionFetcher alloc] initWithUrl:@"users" parent:self];
}
- (MSGraphOAuth2PermissionGrantCollectionFetcher *)oauth2PermissionGrants {

	return [[MSGraphOAuth2PermissionGrantCollectionFetcher alloc] initWithUrl:@"oauth2PermissionGrants" parent:self];
}
- (MSGraphSubscribedSkuCollectionFetcher *)subscribedSkus {

	return [[MSGraphSubscribedSkuCollectionFetcher alloc] initWithUrl:@"subscribedSkus" parent:self];
}

@end