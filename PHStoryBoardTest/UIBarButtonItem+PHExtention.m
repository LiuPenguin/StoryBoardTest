//
//  UIBarButtonItem+PHExtention.m
//  PHStoryBoardTest
//
//  Created by 钱趣多 on 2017/9/21.
//  Copyright © 2017年 LPH. All rights reserved.
//

#import "UIBarButtonItem+PHExtention.h"

@implementation UIBarButtonItem (PHExtention)
+ (instancetype)itemWithNorImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    btn.frame = CGRectMake(0, 0, 74, 44);
    [btn setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    [btn sizeToFit];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    UIView *containVew = [[UIView alloc] initWithFrame:btn.bounds];
    [containVew addSubview:btn];
    return [[UIBarButtonItem alloc]initWithCustomView:containVew];
}

@end
