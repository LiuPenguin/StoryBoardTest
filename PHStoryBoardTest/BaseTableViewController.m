//
//  BaseTableViewController.m
//  PHStoryBoardTest
//
//  Created by 钱趣多 on 2017/9/21.
//  Copyright © 2017年 LPH. All rights reserved.
//

#pragma mark 设置纯色背景
 /*
 [self.navigationController.navigationBar setBackgroundImage:[[[UIColor yellowColor] colorWithAlphaComponent:1.0f] imageWithFrame:CGRectMake(0, 0, 10, 10)] forBarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
 [self.navigationController.navigationBar setShadowImage:[[UIColor clearColor] imageWithFrame:CGRectMake(0, 0, 10, 10)]];
 self.navigationController.title = @"第五";
 [self.navigationController.navigationBar setTitleTextAttributes:
 @{NSFontAttributeName:[UIFont systemFontOfSize:19],
 NSForegroundColorAttributeName:[UIColor redColor]}];
 */

/*
 UINavigationBar * bar = self.navigationController.navigationBar;
 bar.barTintColor = [UIColor redColor];
 bar.translucent = NO;
 */


/* 设置导航栏为纯透明色
 [self.navigationController.navigationBar setBackgroundImage:[UIImage new]
 forBarMetrics:UIBarMetricsDefault];
 self.navigationController.navigationBar.shadowImage = [UIImage new];
 */



#import "BaseTableViewController.h"

@interface BaseTableViewController ()

@end

@implementation BaseTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //自定义纯色导航栏相关  http://www.jianshu.com/p/d0dbba7f3abc
    
    self.navigationController.navigationBar.hidden = NO;
    //如果自定义导航栏tableViewController的self.view 就是tableView添加一个View自然会跟着滑动
    
    //设置纯色不透明导航栏背景色
    UIImage *backgroundImage = [self imageWithColor:[UIColor whiteColor]];
    [self.navigationController.navigationBar setBackgroundImage:backgroundImage forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.translucent = NO;
    
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSFontAttributeName:[UIFont systemFontOfSize:17],
       NSForegroundColorAttributeName:[UIColor colorWithRed:1.0 green:75/255.0 blue:90/255.0 alpha:1]}];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
-(UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
