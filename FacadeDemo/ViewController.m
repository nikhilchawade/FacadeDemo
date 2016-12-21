//
//  ViewController.m
//  FacadeDemo
//
//  Created by Nikhil Chawade on 21/12/16.
//  Copyright © 2016 TheLeanApps Solution. All rights reserved.
//

#import "ViewController.h"
#import "BaseClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[BaseClass sharedManager] getAlbums];
    [[BaseClass sharedManager] saveAlbums];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
