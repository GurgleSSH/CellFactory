//
//  CellForSwitchButton.h
//  SmartHome
//
//  Created by liushuai on 16/5/23.
//  Copyright © 2016年 liushuai1992@gmail.com. All rights reserved.
//

#import "UITableViewCellBase.h"

@class CellForSwitchButton;

@protocol CellForSwitchButtonDelegate <NSObject>

- (void)didSetSwitchButtonOn:(CellForSwitchButton *)cell;
- (void)didSetSwitchButtonOff:(CellForSwitchButton *)cell;

@end

@interface CellForSwitchButton : UITableViewCellBase

@property (nonatomic, strong) UISwitch *switchButton;
@property (nonatomic, strong) NSIndexPath *indexPath;

@property (nonatomic, weak) id<CellForSwitchButtonDelegate> delegate;

#pragma mark - deliverModel
- (void)setType:(Type *)type;

@end
