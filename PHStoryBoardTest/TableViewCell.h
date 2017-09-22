//
//  TableViewCell.h
//  PHStoryBoardTest
//
//  Created by 钱趣多 on 2017/9/22.
//  Copyright © 2017年 LPH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLab;
@property (weak, nonatomic) IBOutlet UITextView *textContent;

@end
