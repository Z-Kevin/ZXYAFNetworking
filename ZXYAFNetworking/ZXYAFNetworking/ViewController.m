//
//  ViewController.m
//  ZXYAFNetworking
//
//  Created by ZXY on 15/5/15.
//  Copyright (c) 2015年 zxy. All rights reserved.
//

#import "ViewController.h"
#import "ZXYNetWork.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[ZXYNetWork sharedManager] checkNetWorkingLinked];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
