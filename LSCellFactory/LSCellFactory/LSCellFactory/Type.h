//
//  Type.h
//  SmartHome
//
//  Created by liushuai on 16/5/22.
//  Copyright © 2016年 liushuai1992@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Type : NSObject

@property (nonatomic, copy) NSString *stringForTextLabel;
@property (nonatomic, copy) NSString *stringForDetailTextLabel;
@property (nonatomic, strong) UIImage * imageForImageView;
@property (nonatomic) UITableViewCellAccessoryType accessoryType;

@end
