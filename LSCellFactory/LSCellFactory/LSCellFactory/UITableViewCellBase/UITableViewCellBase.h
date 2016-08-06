//
//  UITableViewCellBase.h
//  Breadtrip
//
//  Created by liushuai on 16/1/26.
//  Copyright © 2016年 liushuai. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Type;

@interface UITableViewCellBase : UITableViewCell

@property (nonatomic, strong) Type *type;

- (void)setType:(Type *)type;


@end
