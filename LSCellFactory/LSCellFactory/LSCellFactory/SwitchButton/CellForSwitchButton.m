//
//  CellForSwitchButton.m
//  SmartHome
//
//  Created by liushuai on 16/5/23.
//  Copyright © 2016年 liushuai1992@gmail.com. All rights reserved.
//

#import "CellForSwitchButton.h"

@implementation CellForSwitchButton

#pragma mark - dealloc

- (void)dealloc
{
    
    //[super dealloc];
}


#pragma mark - init
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createSubViews];
    }
    return self;
}

#pragma mark - createSubViews
- (void)createSubViews {
    //cell style
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
    self.switchButton = [[UISwitch alloc] init];
    [self addSubview:self.switchButton];
    [self.switchButton addTarget:self action:@selector(switchButtonHandle:) forControlEvents:UIControlEventValueChanged];
    self.accessoryView = self.switchButton;
    
}

#pragma mark - layout
- (void)layoutSubviews {
    [super layoutSubviews];
    
}

#pragma mark - switch button handle
- (void)switchButtonHandle:(UISwitch *)switchButton {
    if (self.switchButton.on) {
        [self performSelector:@selector(setSwitchButtonOnByDelegeate) withObject:nil afterDelay:0.2f];
    } else {
        [self performSelector:@selector(setSwitchButtonOffByDelegeate) withObject:nil afterDelay:0.2f];
    }
}

- (void)setSwitchButtonOnByDelegeate {
    DELEGATE_RESPONDS_WITH(didSetSwitchButtonOn:, self);
    //DELEGATE_RESPONDS(didSetSwitchButtonOn)
}

- (void)setSwitchButtonOffByDelegeate {
    //DELEGATE_RESPONDS(didSetSwitchButtonOff);
    DELEGATE_RESPONDS_WITH(didSetSwitchButtonOff:, self);
}

#pragma mark - deliverModel
- (void)setType:(Type *)type {
    [super setType:type];
}



@end
