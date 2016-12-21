//
//  BaseClass.m
//  FacadeDemo
//
//  Created by Nikhil Chawade on 21/12/16.
//  Copyright © 2016 TheLeanApps Solution. All rights reserved.
//

#import "BaseClass.h"
#import "ClientClass.h"
#import "ManagerClass.h"

@implementation BaseClass

ClientClass *client;
ManagerClass *Manager;


+ (id)sharedManager {
    static BaseClass *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

- (id)init {
    if (self = [super init]) {
     client = [[ClientClass alloc]init];
     Manager = [[ManagerClass alloc]init];
        
    }
    return self;
}

-(NSArray *)getAlbums{
    [client getRequest];
    return [Manager getAlbums];
}

-(void)saveAlbums{
    [client postRequest];
    [Manager saveAlbums];
}


@end
