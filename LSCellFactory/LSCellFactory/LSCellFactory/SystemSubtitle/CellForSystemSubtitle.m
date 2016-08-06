//
//  CellForSystemSubtitle.m
//  SmartHome
//
//  Created by liushuai on 16/5/22.
//  Copyright © 2016年 liushuai1992@gmail.com. All rights reserved.
//

#import "CellForSystemSubtitle.h"
#import "SystemSubtitle.h"

@implementation CellForSystemSubtitle

#pragma mark - dealloc

- (void)dealloc
{
    
    //[super dealloc];
}


#pragma mark - init
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createSubViews];
    }
    return self;
}

#pragma mark - createSubViews
- (void)createSubViews {
    //cell style
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
    
}

#pragma mark - layout
- (void)layoutSubviews {
    [super layoutSubviews];
    
}

#pragma mark - deliverModel
- (void)setType:(Type *)type {
    [super setType:type];
//    SystemSubtitle *systemSubtitle = (SystemSubtitle *)type;
//    [super setType:systemSubtitle];
//    self.textLabel.text = systemSubtitle.stringForTextLabel;
//    self.detailTextLabel.text = systemSubtitle.stringForDetailTextLabel;
//    self.imageView.image = systemSubtitle.imageForImageView;
//    self.accessoryType = systemSubtitle.accessoryType;
}

@end
