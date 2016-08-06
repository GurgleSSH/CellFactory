//
//  UITableViewCellBase.m
//  Breadtrip
//
//  Created by liushuai on 16/1/26.
//  Copyright © 2016年 liushuai. All rights reserved.
//

#import "UITableViewCellBase.h"
#import "Type.h"


@interface UITableViewCellBase ()


@end

@implementation UITableViewCellBase

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setType:(Type *)type {
    self.textLabel.text = type.stringForTextLabel;
    self.detailTextLabel.text = type.stringForDetailTextLabel;
    self.imageView.image = type.imageForImageView;
    self.accessoryType = type.accessoryType;
    
}

#pragma mark - layout
- (void)layoutSubviews {
    [super layoutSubviews];
    self.imageView.frame = CGRectMake(self.frame.origin.x + 20, self.frame.size.height / 2 / 2, 22, 22);
    self.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0);
}

@end
