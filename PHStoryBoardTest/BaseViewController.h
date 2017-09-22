//
//  BaseViewController.h
//  PHStoryBoardTest
//
//  Created by 钱趣多 on 2017/9/20.
//  Copyright © 2017年 LPH. All rights reserved.
//



#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController
@property(nonatomic,strong)NavBarView * navbarV;
-(void)setNavTitle:(NSString *)string;
@end
