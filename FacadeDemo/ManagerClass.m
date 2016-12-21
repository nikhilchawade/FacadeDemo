//
//  ManagerClass.m
//  FacadeDemo
//
//  Created by Nikhil Chawade on 21/12/16.
//  Copyright © 2016 TheLeanApps Solution. All rights reserved.
//

#import "ManagerClass.h"

NSArray *albums;

@implementation ManagerClass

-(id)init{
    
    self = [super init];
    if(self){
        albums = [[NSArray alloc]initWithObjects:@"One",@"Two",@"Three",@"Four", nil];
    }
    return self;
}

-(NSArray *)getAlbums{
    return albums;
}
-(void)saveAlbums{
    NSLog(@"Save Album");
}

@end
