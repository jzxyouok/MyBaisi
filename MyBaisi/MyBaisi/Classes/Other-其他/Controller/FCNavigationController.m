//
//  FCNavigationController.m
//  MyBaisi
//
//  Created by mac  on 16/1/27.
//  Copyright © 2016年 GFC. All rights reserved.
//

#import "FCNavigationController.h"

@interface FCNavigationController ()

@end

@implementation FCNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.childViewControllers.count > 0) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@"返回" forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
//        button.
    }
    [super pushViewController:viewController animated:animated];
}
@end
