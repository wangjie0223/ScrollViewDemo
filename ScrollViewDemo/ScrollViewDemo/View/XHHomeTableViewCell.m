//
//  XHHomeTableViewCell.m
//  XiaoHuaDaQuan
//
//  Created by wangjie on 2018/3/22.
//  Copyright © 2018年 wangjie. All rights reserved.
//

#import "XHHomeTableViewCell.h"


@implementation XHHomeTableViewCell


+ (instancetype)cellWithTableView:(UITableView *)tableView{
    static NSString *identifier = @"Home";
    XHHomeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[XHHomeTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    return cell;
}


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor groupTableViewBackgroundColor];
        //[self createUI];
    }
    return self;
}




- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
