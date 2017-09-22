//
//  BaseRootViewController.m
//  PHStoryBoardTest
//
//  Created by 钱趣多 on 2017/9/20.
//  Copyright © 2017年 LPH. All rights reserved.
//

#import "BaseRootViewController.h"

@interface BaseRootViewController ()

@end

@implementation BaseRootViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.tabBarController.tabBar.hidden = NO;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navbarV.backBtn.hidden = YES;
    // Do any additional setup after loading the view.
}
#pragma mark 监听storyBoard点击跳转事件
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    //通过segue判断要跳转到哪个页面
    if ([segue.identifier isEqualToString:@"ViewControllerOne"]||[segue.identifier isEqualToString:@"ViewControllerTwo"]||[segue.identifier isEqualToString:@"ViewControllerThree"]||[segue.identifier isEqualToString:@"ViewControllerFour"]||[segue.identifier isEqualToString:@"ViewControllerFive"]) {
        NSLog(@"跳转");
        self.tabBarController.tabBar.hidden = YES;
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
