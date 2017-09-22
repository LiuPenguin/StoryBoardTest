//
//  UIColor+CreateImage.m
//  PHStoryBoardTest
//
//  Created by 钱趣多 on 2017/9/21.
//  Copyright © 2017年 LPH. All rights reserved.
//

#import "UIColor+CreateImage.h"

@implementation UIColor (CreateImage)
//创建纯色图片
- (UIImage *)imageWithFrame:(CGRect)frame {
    
    UIImage *image = nil;
    
    if (self) {
        
        UIView *view         = [[UIView alloc] initWithFrame:frame];
        view.backgroundColor = self;
        
        UIGraphicsBeginImageContext(view.frame.size);
        [[view layer] renderInContext:UIGraphicsGetCurrentContext()];
        image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
    }
    
    return image;
}
@end
