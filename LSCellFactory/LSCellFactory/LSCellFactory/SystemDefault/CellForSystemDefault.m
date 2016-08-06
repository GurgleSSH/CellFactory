//
//  CellForSystemDefault.m
//  SmartHome
//
//  Created by liushuai on 16/5/22.
//  Copyright © 2016年 liushuai1992@gmail.com. All rights reserved.
//

#import "CellForSystemDefault.h"
#import "SystemDefault.h"

@implementation CellForSystemDefault

#pragma mark - dealloc

- (void)dealloc
{
    
    //[super dealloc];
}


#pragma mark - init
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
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
//    SystemDefault *systemDefault = (SystemDefault *)type;
//    [super setType:systemDefault];
//    self.textLabel.text = systemDefault.stringForTextLabel;
//    self.imageView.image = systemDefault.imageForImageView;
//    self.accessoryType = systemDefault.accessoryType;
}


@end
