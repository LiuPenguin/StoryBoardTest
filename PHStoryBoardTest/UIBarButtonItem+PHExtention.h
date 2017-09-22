//
//  UIBarButtonItem+PHExtention.h
//  PHStoryBoardTest
//
//  Created by 钱趣多 on 2017/9/21.
//  Copyright © 2017年 LPH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (PHExtention)
+ (instancetype)itemWithNorImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;
@end
