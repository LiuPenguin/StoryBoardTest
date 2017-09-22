//
//  tabBarVC.m
//  PHStoryBordText
//
//  Created by 钱趣多 on 2017/9/19.
//  Copyright © 2017年 LPH. All rights reserved.
//

#import "tabBarVC.h"
#import "tabbarView.h"
@interface tabBarVC ()<TabBarViewDelegate>

@end

@implementation tabBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
//    UIImage * image = [self imageWithFrame:CGRectMake(0, 0,[UIScreen mainScreen].bounds.size.width, 49) alphe:1];
//    
//    self.tabBar.backgroundImage = image;
    
    
    /*
     //tabBar选中颜色和背景相关方法
     http://blog.csdn.net/qq_16231975/article/details/51788797
     */
    
    //自定义tabBar相关
    tabbarView * tabbar = [[tabbarView alloc]init];
    tabbar.frame = self.tabBar.bounds;
    tabbar.backgroundColor = [UIColor whiteColor];
    tabbar.delegate = self;
    
    NSString * imageName = nil;
    NSString * selName = nil;
    NSArray * titleArray = @[@"你的",@"我的",@"他的",@"天的",@"妹的"];
    for (int i = 0; i < self.childViewControllers.count; i++) {
        imageName = [NSString stringWithFormat:@"%d",i];
        selName = [NSString stringWithFormat:@"s%d",i];
        [tabbar addTarBarButtonWithName:imageName selName:selName titleName:titleArray[i]];
    }
    [self.tabBar addSubview:tabbar];
    
    
  
    // Do any additional setup after loading the view.
}
- (void)tabbar:(tabbarView *)tabbar didSelectedIndex:(NSInteger)selectIndex
{
    self.selectedIndex = selectIndex;
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (UIImage *) imageWithFrame:(CGRect)frame alphe:(CGFloat)alphe {
    frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
    UIColor *redColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:alphe];
    
    UIGraphicsBeginImageContext(frame.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [redColor CGColor]);
    CGContextFillRect(context, frame);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
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
