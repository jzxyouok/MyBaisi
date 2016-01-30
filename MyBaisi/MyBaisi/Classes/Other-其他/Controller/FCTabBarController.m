//
//  FCTabBarController.m
//  MyBaisi
//
//  Created by mac  on 16/1/27.
//  Copyright © 2016年 GFC. All rights reserved.
//

#import "FCTabBarController.h"
#import "FCNavigationController.h"
#import "FCEssenceViewController.h"
#import "FCNewViewController.h"
#import "FCFriendTrendsViewController.h"
#import "FCMeViewController.h"
#import "FCTabBar.h"

@interface FCTabBarController ()

@end

@implementation FCTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // 通过appearance统一设置所有UITabBarItem的文字属性
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSFontAttributeName] = attrs[NSFontAttributeName];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    
    
    // 添加子控制器
    [self setupChildVC:[[FCEssenceViewController alloc]init] title:@"精华" image:@"tabBar_essence_icon" highImage:@"tabBar_essence_click_icon"];
    
    [self setupChildVC:[[FCEssenceViewController alloc]init] title:@"最新" image:@"tabBar_new_icon" highImage:@"tabBar_new_click_icon"];
    
    [self setupChildVC:[[FCEssenceViewController alloc]init] title:@"关注" image:@"tabBar_friendTrends_icon" highImage:@"tabBar_friendTrends_click_icon"];
    
    [self setupChildVC:[[FCEssenceViewController alloc]init] title:@"我" image:@"tabBar_me_icon" highImage:@"tabBar_me_click_icon"];
    
    // 修改系统的tabBar
    [self setValue:[[FCTabBar alloc]init] forKeyPath:@"tabBar"];
    
}

- (void)setupChildVC:(UIViewController *)vc title:(NSString *)title image:(NSString *)image highImage:(NSString *)highImage
{
    vc.view.backgroundColor = FCRandomColor;
    vc.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:highImage];
    FCNavigationController *nav = [[FCNavigationController alloc]initWithRootViewController:vc];
    [self addChildViewController:nav];
}

@end
