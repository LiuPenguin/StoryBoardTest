//
//  tabbarView.h
//  PHStoryBordText
//
//  Created by 钱趣多 on 2017/9/19.
//  Copyright © 2017年 LPH. All rights reserved.
//

#import <UIKit/UIKit.h>

@class tabbarView;

@protocol TabBarViewDelegate <NSObject>

@optional

- (void)tabbar:(tabbarView*)tabbar didSelectedIndex:(NSInteger)selectIndex;

@end



@interface tabbarView : UIView

@property(nonatomic,weak)id <TabBarViewDelegate>delegate;

- (void)addTarBarButtonWithName:(NSString *)name selName:(NSString *)selName titleName:(NSString *)titleName;

@end
