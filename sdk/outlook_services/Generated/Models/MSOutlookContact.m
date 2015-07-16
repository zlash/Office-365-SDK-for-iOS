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

#import "MSOutlookModels.h"

/**
* The implementation file for type MSOutlookContact.
*/

@implementation MSOutlookContact	

@synthesize odataType = _odataType;
@synthesize ParentFolderId = _parentFolderId;
@synthesize Birthday = _birthday;
@synthesize FileAs = _fileAs;
@synthesize DisplayName = _displayName;
@synthesize GivenName = _givenName;
@synthesize Initials = _initials;
@synthesize MiddleName = _middleName;
@synthesize NickName = _nickName;
@synthesize Surname = _surname;
@synthesize Title = _title;
@synthesize Generation = _generation;
@synthesize EmailAddresses = _emailAddresses;
@synthesize ImAddresses = _imAddresses;
@synthesize JobTitle = _jobTitle;
@synthesize CompanyName = _companyName;
@synthesize Department = _department;
@synthesize OfficeLocation = _officeLocation;
@synthesize Profession = _profession;
@synthesize BusinessHomePage = _businessHomePage;
@synthesize AssistantName = _assistantName;
@synthesize Manager = _manager;
@synthesize HomePhones = _homePhones;
@synthesize BusinessPhones = _businessPhones;
@synthesize MobilePhone1 = _mobilePhone1;
@synthesize HomeAddress = _homeAddress;
@synthesize BusinessAddress = _businessAddress;
@synthesize OtherAddress = _otherAddress;
@synthesize YomiCompanyName = _yomiCompanyName;
@synthesize YomiGivenName = _yomiGivenName;
@synthesize YomiSurname = _yomiSurname;

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OutlookServices.Contact";
		_emailAddresses = [[NSMutableArray alloc] initWithCollectionType:@"MSOutlookEmailAddress"];
		_imAddresses = [[NSMutableArray alloc] initWithCollectionType:@"MSOutlookString"];
		_homePhones = [[NSMutableArray alloc] initWithCollectionType:@"MSOutlookString"];
		_businessPhones = [[NSMutableArray alloc] initWithCollectionType:@"MSOutlookString"];
    }

	return self;
}

- (void)setParentFolderId:(NSString *) parentFolderId {
    _parentFolderId = parentFolderId;
	[self valueChanged:parentFolderId forProperty:@"ParentFolderId"];
}
    
- (void)setBirthday:(NSDate *) birthday {
    _birthday = birthday;
	[self valueChanged:birthday forProperty:@"Birthday"];
}
    
- (void)setFileAs:(NSString *) fileAs {
    _fileAs = fileAs;
	[self valueChanged:fileAs forProperty:@"FileAs"];
}
    
- (void)setDisplayName:(NSString *) displayName {
    _displayName = displayName;
	[self valueChanged:displayName forProperty:@"DisplayName"];
}
    
- (void)setGivenName:(NSString *) givenName {
    _givenName = givenName;
	[self valueChanged:givenName forProperty:@"GivenName"];
}
    
- (void)setInitials:(NSString *) initials {
    _initials = initials;
	[self valueChanged:initials forProperty:@"Initials"];
}
    
- (void)setMiddleName:(NSString *) middleName {
    _middleName = middleName;
	[self valueChanged:middleName forProperty:@"MiddleName"];
}
    
- (void)setNickName:(NSString *) nickName {
    _nickName = nickName;
	[self valueChanged:nickName forProperty:@"NickName"];
}
    
- (void)setSurname:(NSString *) surname {
    _surname = surname;
	[self valueChanged:surname forProperty:@"Surname"];
}
    
- (void)setTitle:(NSString *) title {
    _title = title;
	[self valueChanged:title forProperty:@"Title"];
}
    
- (void)setGeneration:(NSString *) generation {
    _generation = generation;
	[self valueChanged:generation forProperty:@"Generation"];
}
    
- (void)setEmailAddresses:(NSMutableArray *) emailAddresses {
    _emailAddresses = emailAddresses;
	[self valueChanged:emailAddresses forProperty:@"EmailAddresses"];
}
    
- (void)setImAddresses:(NSMutableArray *) imAddresses {
    _imAddresses = imAddresses;
	[self valueChanged:imAddresses forProperty:@"ImAddresses"];
}
    
- (void)setJobTitle:(NSString *) jobTitle {
    _jobTitle = jobTitle;
	[self valueChanged:jobTitle forProperty:@"JobTitle"];
}
    
- (void)setCompanyName:(NSString *) companyName {
    _companyName = companyName;
	[self valueChanged:companyName forProperty:@"CompanyName"];
}
    
- (void)setDepartment:(NSString *) department {
    _department = department;
	[self valueChanged:department forProperty:@"Department"];
}
    
- (void)setOfficeLocation:(NSString *) officeLocation {
    _officeLocation = officeLocation;
	[self valueChanged:officeLocation forProperty:@"OfficeLocation"];
}
    
- (void)setProfession:(NSString *) profession {
    _profession = profession;
	[self valueChanged:profession forProperty:@"Profession"];
}
    
- (void)setBusinessHomePage:(NSString *) businessHomePage {
    _businessHomePage = businessHomePage;
	[self valueChanged:businessHomePage forProperty:@"BusinessHomePage"];
}
    
- (void)setAssistantName:(NSString *) assistantName {
    _assistantName = assistantName;
	[self valueChanged:assistantName forProperty:@"AssistantName"];
}
    
- (void)setManager:(NSString *) manager {
    _manager = manager;
	[self valueChanged:manager forProperty:@"Manager"];
}
    
- (void)setHomePhones:(NSMutableArray *) homePhones {
    _homePhones = homePhones;
	[self valueChanged:homePhones forProperty:@"HomePhones"];
}
    
- (void)setBusinessPhones:(NSMutableArray *) businessPhones {
    _businessPhones = businessPhones;
	[self valueChanged:businessPhones forProperty:@"BusinessPhones"];
}
    
- (void)setMobilePhone1:(NSString *) mobilePhone1 {
    _mobilePhone1 = mobilePhone1;
	[self valueChanged:mobilePhone1 forProperty:@"MobilePhone1"];
}
    
- (void)setHomeAddress:(MSOutlookPhysicalAddress *) homeAddress {
    _homeAddress = homeAddress;
	[self valueChanged:homeAddress forProperty:@"HomeAddress"];
}
    
- (void)setBusinessAddress:(MSOutlookPhysicalAddress *) businessAddress {
    _businessAddress = businessAddress;
	[self valueChanged:businessAddress forProperty:@"BusinessAddress"];
}
    
- (void)setOtherAddress:(MSOutlookPhysicalAddress *) otherAddress {
    _otherAddress = otherAddress;
	[self valueChanged:otherAddress forProperty:@"OtherAddress"];
}
    
- (void)setYomiCompanyName:(NSString *) yomiCompanyName {
    _yomiCompanyName = yomiCompanyName;
	[self valueChanged:yomiCompanyName forProperty:@"YomiCompanyName"];
}
    
- (void)setYomiGivenName:(NSString *) yomiGivenName {
    _yomiGivenName = yomiGivenName;
	[self valueChanged:yomiGivenName forProperty:@"YomiGivenName"];
}
    
- (void)setYomiSurname:(NSString *) yomiSurname {
    _yomiSurname = yomiSurname;
	[self valueChanged:yomiSurname forProperty:@"YomiSurname"];
}
    
@end