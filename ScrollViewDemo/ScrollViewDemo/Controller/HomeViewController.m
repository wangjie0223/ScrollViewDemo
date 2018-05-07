//
//  HomeViewController.m
//  ScrollViewDemo
//
//  Created by wangjie on 2018/4/14.
//  Copyright © 2018年 wangjie. All rights reserved.
//

#import "HomeViewController.h"
#import "XHHomeTableViewCell.h"
#import <Masonry.h>
#import "FirstViewController.h"
#import "WJSecondViewController.h"
@interface HomeViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong)UITableView * tableView;
@property (nonatomic,strong)NSArray * array;


@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"ScrollViewDemo";
    self.view.backgroundColor = [UIColor whiteColor];
    [self createTableView];
    //创建数据源
    self.array = @[@"Xib版_FirstViewController",@"代码版_WJSecondViewController"];
    
}


- (void)createTableView{
    
    self.tableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    UIEdgeInsets padding = UIEdgeInsetsMake(0, 0, 0, 0);
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view).with.insets(padding);
    }];
    self.tableView.layer.contents = (__bridge id _Nullable)([UIImage imageNamed:@"hou"].CGImage);
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    //注册
    [self.tableView registerNib:[UINib nibWithNibName:@"WJHomeTableViewCell" bundle:nil] forCellReuseIdentifier:@"home_cell"];
    self.tableView.tableFooterView = [[UIView alloc]init];

}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    XHHomeTableViewCell * cell = [XHHomeTableViewCell cellWithTableView:tableView];
    cell.textLabel.text = self.array[indexPath.row];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row == 0) {
         FirstViewController * vc = [[FirstViewController alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
    }else if (indexPath.row == 1){
        WJSecondViewController * vc = [[WJSecondViewController alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
    }else
        return;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
