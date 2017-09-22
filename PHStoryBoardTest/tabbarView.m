//
//  tabbarView.m
//  PHStoryBordText
//
//  Created by 钱趣多 on 2017/9/19.
//  Copyright © 2017年 LPH. All rights reserved.
//

#import "tabbarView.h"

@interface tabbarView()

@property (nonatomic, weak) UIButton *selectedBtn;

@end

@implementation tabbarView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (void)addTarBarButtonWithName:(NSString *)name selName:(NSString *)selName titleName:(NSString *)titleName
{
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:selName] forState:UIControlStateSelected];
    [button setTitle:titleName forState:UIControlStateNormal];
    [button setTitleColor:[UIColor colorWithRed:76/255.0f green:76/255.0f blue:76/255.0f alpha:1] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor colorWithRed:241/255.0f green:84/255.0f blue:90/255.0f alpha:1] forState:UIControlStateSelected];
    [button setTitleEdgeInsets:UIEdgeInsetsMake(0, -10, -35, 0)];
    [button setImageEdgeInsets:UIEdgeInsetsMake(-8, 0, 0, -35)];
    button.titleLabel.font = [UIFont systemFontOfSize:12];
    [button addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchDown];
    [self addSubview:button];
}

- (void)btnClicked:(UIButton *)button
{
    self.selectedBtn.selected = NO;
    button.selected = YES;
    self.selectedBtn = button;
    
    if ([self.delegate respondsToSelector:@selector(tabbar:didSelectedIndex:)]) {
        [self.delegate tabbar:self didSelectedIndex:button.tag];
    }
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat btnX = 0;
    CGFloat btnY = 0;
    CGFloat btnW = self.frame.size.width /self.subviews.count;
    CGFloat btnH = self.frame.size.height;
    
    for (int i = 0; i < self.subviews.count; i++) {
        UIButton * btn =  self.subviews[i];
        btn.tag = i;
        btnX = i * btnW;
        [btn setFrame:CGRectMake(btnX, btnY, btnW, btnH)];
        if (i == 0) {
            [self btnClicked:btn];
        }
    }
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
