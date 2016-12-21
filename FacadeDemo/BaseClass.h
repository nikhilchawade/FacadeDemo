//
//  BaseClass.h
//  FacadeDemo
//
//  Created by Nikhil Chawade on 21/12/16.
//  Copyright © 2016 TheLeanApps Solution. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseClass : NSObject

+ (id)sharedManager;
-(NSArray *)getAlbums;
-(void)saveAlbums;

@end
