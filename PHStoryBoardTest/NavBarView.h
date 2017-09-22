//
//  NavBarView.h
//  PHStoryBordText
//
//  Created by 钱趣多 on 2017/9/19.
//  Copyright © 2017年 LPH. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^navBackBtnBlock)();

@interface NavBarView : UIView

@property (nonatomic,copy) navBackBtnBlock backBtnBlock;

@property (weak, nonatomic) IBOutlet UILabel *navTitleLab;
@property (weak, nonatomic) IBOutlet UIButton *backBtn;
- (IBAction)backClick:(id)sender;


+(instancetype)initialNavView;
@end
