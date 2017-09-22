//
//  NavBarView.m
//  PHStoryBordText
//
//  Created by 钱趣多 on 2017/9/19.
//  Copyright © 2017年 LPH. All rights reserved.
//

#import "NavBarView.h"

@implementation NavBarView

- (IBAction)backClick:(id)sender {
    self.backBtnBlock();
}

+(instancetype)initialNavView{
    return   [[[NSBundle mainBundle] loadNibNamed:@"NavBarView" owner:self options:nil] lastObject];
}

/*
 通过xib加载控件,不会执行init方法和initWithFrame方法
 会执行initWithCoder方法和awakeFromNib方法
 如果想通过xib加载控件时,一定不能通过[Class alloc] init]方法来创建控件
 通常会让类提供一个类方法,该类方法可以快速从xib中创建View
 
 - (instancetype)initWithFrame:(CGRect)frame
 {
 self = [super initWithFrame:frame];
 
 if (self) {
 [[NSBundle mainBundle] loadNibNamed:@"PHView" owner:self options:nil];
 self.contentView.frame = self.bounds;
 [self addSubview:self.contentView];
 }
 
 return self;
 }
 */

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
