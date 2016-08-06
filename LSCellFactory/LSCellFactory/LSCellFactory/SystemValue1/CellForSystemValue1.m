//
//  CellForSystemValue1.m
//  SmartHome
//
//  Created by liushuai on 16/5/22.
//  Copyright © 2016年 liushuai1992@gmail.com. All rights reserved.
//

#import "CellForSystemValue1.h"
#import "SystemValue1.h"

@implementation CellForSystemValue1

#pragma mark - dealloc

- (void)dealloc
{
    
    //[super dealloc];
}


#pragma mark - init
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuseIdentifier];
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
//    SystemValue1 *systemValue1 = (SystemValue1 *)type;
//    [super setType:systemValue1];
//    self.textLabel.text = systemValue1.stringForTextLabel;
//    self.detailTextLabel.text = systemValue1.stringForDetailTextLabel;
//    self.imageView.image = systemValue1.imageForImageView;
//    self.accessoryType = systemValue1.accessoryType;
}

@end
