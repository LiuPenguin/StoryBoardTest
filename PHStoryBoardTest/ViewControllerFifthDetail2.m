//
//  ViewControllerFifthDetail2.m
//  PHStoryBoardTest
//
//  Created by 钱趣多 on 2017/9/21.
//  Copyright © 2017年 LPH. All rights reserved.
//

#import "ViewControllerFifthDetail2.h"

@interface ViewControllerFifthDetail2 ()<UIGestureRecognizerDelegate>

@end

@implementation ViewControllerFifthDetail2

- (void)viewDidLoad {
    [super viewDidLoad];
    // 自定义返回按钮
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 74, 44)];
    [button setTitle:@"王俨2" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    [button addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
    
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithNorImage:@"left" highImage:@"" target:self action:@selector(back:)];
    
    // Do any additional setup after loading the view.
}

//解决向右滑动返回上层界面的问题
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];    if (self.navigationController.viewControllers.count > 1) {          // 记录系统返回手势的代理
         self.navigationController.interactivePopGestureRecognizer.delegate = self;          // 设置系统返回手势的代理为当前控制器
        self.navigationController.interactivePopGestureRecognizer.delegate = self;
    }
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];     // 设置系统返回手势的代理为我们刚进入控制器的时候记录的系统的返回手势代理
    self.navigationController.interactivePopGestureRecognizer.delegate = self;
}
#pragma mark - UIGestureRecognizerDelegate
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    return self.navigationController.childViewControllers.count > 1;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return self.navigationController.viewControllers.count > 1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)back:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
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
