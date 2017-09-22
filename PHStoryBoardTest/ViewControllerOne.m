//
//  ViewControllerOne.m
//  PHStoryBoardTest
//
//  Created by 钱趣多 on 2017/9/20.
//  Copyright © 2017年 LPH. All rights reserved.
//

#import "ViewControllerOne.h"

@interface ViewControllerOne ()

@end

@implementation ViewControllerOne


- (void)viewDidLoad {
    [super viewDidLoad];
    self.navbarV.navTitleLab.text = @"ONE";
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark 拦截跳转事件
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSLog(@"===============================>>>>>>>>%@",[segue identifier]);
    /*
     可以通过segue.sourceViewController获取到下一个界面的引用，然后向下一个界面传入需要的参数
     */
}

/**
 *  跳转前时触发，如果返回NO,阻止跳转
 *  @param identifier identifier代表的是segue的identifier，而不是storyboard中控制器的identifier。 这里的identifier其实与prepareForSegue：sender 方法中的[segue identifier]其实是同一个id
 *  @param sender     sender代表触发跳转事件的控件，这里代表登陆的Button
 *
 *  @return YES 跳转，NO 阻止storyboard跳转
 */
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(nullable id)sender
{
    NSLog(@"identifier:%@   sender:%@",identifier,sender);
    
    //阻止跳转
    if([identifier isEqualToString:@"ViewControllerOne"] && (0 == 0)){
        NSLog(@"在此做判定，根据需求拦截跳转事件");
        return NO;
    }
    return YES;
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
