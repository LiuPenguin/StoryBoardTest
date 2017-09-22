//
//  FifthTableVC.m
//  PHStoryBoardTest
//
//  Created by 钱趣多 on 2017/9/21.
//  Copyright © 2017年 LPH. All rights reserved.
//

#import "FifthTableVC.h"
#import "player.h"
#import "TableViewCell.h"
#import "ViewControllerFifthDetail.h"
@interface FifthTableVC (){
    
    NSMutableArray *players;
}
@end

@implementation FifthTableVC
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.tabBarController.tabBar.hidden = NO;
    self.navigationController.navigationBar.hidden = NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
#warning 如果用self.title的方式 或者 self.navigationController.title 会重新设置TabbarButton的 层级也靠上 覆盖了自定义的tabBarbutton
    self.navigationItem.title = @"嘻嘻哈哈";
    
    players = [NSMutableArray arrayWithCapacity:0];
    
    player *play = [[player alloc] init];
    play.name = @"Bill Evans";
    play.game = @" Tic-Tac-Toe Tic-Tac-Toe Tic-Tac-Toe Tic-Tac-Toe Tic-Tac-Toe Tic-Tac-Toe Tic-Tac-Toe Tic-Tac-Toe Tic-Tac-Toe Tic-Tac-Toe Tic-Tac-Toe Tic-Tac-Toe Tic-Tac-Toe Tic-Tac-Toe";
    play.rating = 4;
    [players addObject:play];
    
    
    player *play2 = [[player alloc] init];
    play2.name = @"Evans";
    play2.game = @"dfgbhnjmkdfgbhnjmkdfgbhnjmkdfgbhnjmkdfgbhnjmkdfgbhnjmkdfgbhnjmkdfgbhnjmkdfgbhnjmkdfgbhnjmkdfgbhnjmkdfgbhnjmkdfgbhnjmkdfgbhnjmk";
    play2.rating = 3;
    [players addObject:play2];
    
    
    player *play3 = [[player alloc] init];
    play3.name = @"Peterson Evans";
    play3.game = @" pin the Bottl pin the Bottl pin the Bottl pin the Bottl pin the Bottl pin the Bottl pin the Bottl pin the Bottl pin the Bottl pin the Bottl pin the Bottl pin the Bottl pin the Bottl pin the Bottl pin the Bottl pin the Bottl pin the Bottl pin the Bottl pin the Bottl pin the Bottl pin the Bottl pin the Bottl";
    play3.rating = 5;
    [players addObject:play3];
    
    

    /*
     设置导航栏返回按钮属性
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] init];
    backItem.title = @"返回";
    self.navigationController.navigationBar.backIndicatorImage = @"";
    backItem.image = [UIImage imageNamed:@"left"];
    self.navigationItem.backBarButtonItem = backItem;
     */
    [self.tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"TableViewCell"];
    // Do any additional setup after loading the view.
    
}

#pragma mark 重写父类的TableView的代理方法
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return players.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
 
    UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:@"PlayerCell"];
    player *play = [players objectAtIndex:indexPath.row];
    cell.textLabel.text = play.name;
    cell.detailTextLabel.text = play.game;
  
  
  /*
    
    TableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell"];
    
    player *play = [players objectAtIndex:indexPath.row];
    cell.titleLab.text = play.name;
    cell.textContent.text = play.game;
    
       */
    return cell;

}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"点击了cell");
    
//    //跳转之后设置
    self.tabBarController.tabBar.hidden = YES;
    [self.navigationController pushViewController:[ViewControllerFifthDetail new] animated:NO];
    
}
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
#pragma mark 监听storyBoard点击跳转事件
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    //通过segue判断要跳转到哪个页面
    if ([segue.identifier isEqualToString:@"ViewControllerFivthDetail2"]) {
        NSLog(@"跳转");
//        self.tabBarController.tabBar.hidden = YES;
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
