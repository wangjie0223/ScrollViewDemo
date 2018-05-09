//
//  WJSecondViewController.m
//  ScrollViewDemo
//
//  Created by wangjie on 2018/5/7.
//  Copyright © 2018年 wangjie. All rights reserved.
//

#import "WJSecondViewController.h"
#import <Masonry.h>

@interface WJSecondViewController ()

@end

@implementation WJSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIScrollView * scrollView = [[UIScrollView alloc]init];
    [self.view addSubview:scrollView];
    scrollView.backgroundColor = [UIColor grayColor];
    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.bottom.offset(0);
    }];
    
    UIView * contentView = [[UIView alloc]init];
    [scrollView addSubview:contentView];
    contentView.backgroundColor = [UIColor cyanColor];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(scrollView);
        make.width.offset(self.view.bounds.size.width);
        //make.height.equalTo(@1000);
    }];
    
    UIView * v1 = [[UIView alloc]init];
    [contentView addSubview:v1];
    v1.backgroundColor = [UIColor greenColor];
    [v1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@10);
        make.left.equalTo(@10);
        make.width.equalTo(@200);
        make.height.equalTo(@1000);
        make.bottom.equalTo(@(-10));
    }];
    
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
