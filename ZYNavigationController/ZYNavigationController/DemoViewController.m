//
//  DemoViewController.m
//  ZYNavigationController
//
//  Created by ZYVincent on 15-7-15.
//  Copyright (c) 2015年 ZYProSoft. All rights reserved.
//

#import "DemoViewController.h"

@interface DemoViewController ()

@end

@implementation DemoViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    NSArray *colors = @[
                        [UIColor yellowColor],
                        [UIColor blueColor],
                        [UIColor brownColor],
                        [UIColor purpleColor],
                        ];
    
    self.view.backgroundColor = [colors objectAtIndex:arc4random()%colors.count];
    
    UIButton *pushButton = [TVGDebugQuickUI buttonAddOnView:self.view title:@"push" target:self selector:@selector(pushNew)];
    
    pushButton.gjcf_left = 30.f;
    pushButton.gjcf_top = 150.f;
}

- (void)pushNew
{
    DemoViewController *demoVC = [[DemoViewController alloc]init];
    
    [self.navigationController pushViewController:demoVC animated:YES];
}


@end
