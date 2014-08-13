//
//  ListClient.m
//  office365-lists-sdk
//
//  Created by Gustavo on 7/22/14.
//  Copyright (c) 2014 Lagash. All rights reserved.
//

#import "ListClient.h"
#import "ListEntity.h"
#import "office365-base-sdk/HttpConnection.h"
#import "office365-base-sdk/Constants.h"
#import "office365-base-sdk/NSString+NSStringExtensions.h"

@implementation ListClient

const NSString *apiUrl = @"/_api/lists";

- (NSURLSessionDataTask *)getLists:(void (^)(NSMutableArray *lists, NSError *error))callback{
    
    NSString *url = [NSString stringWithFormat:@"%@%@", self.Url , apiUrl];
    HttpConnection *connection = [[HttpConnection alloc] initWithCredentials:self.Credential url:url];
    
    NSString *method = (NSString*)[[Constants alloc] init].Method_Get;
    
    return [connection execute:method callback:^(NSData  *data, NSURLResponse *reponse, NSError *error) {
        NSMutableArray *array = [NSMutableArray array];
        
        if(error == nil){
            array = [self parseData : data];
        }
        
        callback(array, error);
    }];
}

- (NSURLSessionDataTask *)getList:(NSString *)name callback:(void (^)(ListEntity *list, NSError *))callback{
    
    NSString *url = [NSString stringWithFormat:@"%@%@/GetByTitle('%@')", self.Url , apiUrl, [name urlencode]];
    HttpConnection *connection = [[HttpConnection alloc] initWithCredentials:self.Credential url:url];
    
    NSString *method = (NSString*)[[Constants alloc] init].Method_Get;
    
    return [connection execute:method callback:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSMutableArray *array = [NSMutableArray array];
        ListEntity *entity;
        if(error == nil){
            array = [self parseData : data];
            entity = [array objectAtIndex:0];
        }
        
        callback(entity ,error);
    }];
}

- (NSMutableArray *)parseData:(NSData *)data{
    
    NSMutableArray *array = [NSMutableArray array];
    
    NSDictionary *jsonResult = [NSJSONSerialization JSONObjectWithData:data
                                                               options: NSJSONReadingMutableContainers
                                                                 error:nil];
    
    NSArray *jsonArray = [[jsonResult valueForKey : @"d"] valueForKey : @"results"];
    
    if(jsonArray != nil){
        for (NSDictionary *value in jsonArray) {
            ListEntity *sharepointList = [[ListEntity alloc] init];
            [sharepointList createFromJson:value];
            [array addObject:sharepointList];
        }
    }else{
        NSDictionary *jsonItem =[jsonResult valueForKey : @"d"];
        ListEntity *sharepointList = [[ListEntity alloc] init];
        [sharepointList createFromJson:jsonItem];
        [array addObject:sharepointList];
    }
    
    
    
    return array;
}

@end