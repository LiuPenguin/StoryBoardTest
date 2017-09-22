//
//  BaseViewController.m
//  PHStoryBoardTest
//
//  Created by 钱趣多 on 2017/9/20.
//  Copyright © 2017年 LPH. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController
-(NavBarView *)navbarV{
    if (!_navbarV) {
        _navbarV = [NavBarView initialNavView];
        _navbarV.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 64);
    }
    return _navbarV;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
    [self.view addSubview:self.navbarV];
    typeof(self) __weakSelf = self;
    self.navbarV.backBtnBlock = ^{
        [__weakSelf.navigationController popViewControllerAnimated:YES];
    };
    // Do any additional setup after loading the view.
}
-(void)setNavTitle:(NSString *)string{
    self.navbarV.navTitleLab.text =  string;
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
