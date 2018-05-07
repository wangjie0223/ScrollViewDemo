//
//  FirstViewController.m
//  ScrollViewDemo
//
//  Created by wangjie on 2018/4/14.
//  Copyright © 2018年 wangjie. All rights reserved.
//

#import "FirstViewController.h"
#import "XHHomeTableViewCell.h"
@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIView *content;
@property (nonatomic,strong)UITableView * tableView;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.scrollView.layer.contents = (__bridge id _Nullable)([UIImage imageNamed:@"hou"].CGImage);
    self.scrollView.contentInset = UIEdgeInsetsMake(200, 0, 0, 0);
    //[self.scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
    

    
    
    
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
