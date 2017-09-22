//
//  ViewControllerThreeDetail.m
//  PHStoryBoardTest
//
//  Created by 钱趣多 on 2017/9/20.
//  Copyright © 2017年 LPH. All rights reserved.
//

#import "ViewControllerThreeDetail.h"
#import "ViewControllerThreeDetailNext.h"
@interface ViewControllerThreeDetail ()

@end

@implementation ViewControllerThreeDetail

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)toNextBtnClick:(id)sender {
    ViewControllerThreeDetailNext * vc= [[ViewControllerThreeDetailNext alloc]init];
    [self.navigationController pushViewController:vc animated:NO];
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
