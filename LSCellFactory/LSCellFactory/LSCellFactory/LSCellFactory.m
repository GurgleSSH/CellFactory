//
//  LSCellFactory.m
//  SmartHome
//
//  Created by liushuai on 16/5/22.
//  Copyright © 2016年 liushuai1992@gmail.com. All rights reserved.
//

#import "LSCellFactory.h"
#import "Type.h"

@implementation LSCellFactory

/**
 *  @brief cell工厂，根据传入的model类型创建指定的cell
 *
 *  @param type model类型
 *
 *  @return 指定类型的cell
 */
+ (UITableViewCellBase *)cellForModel:(Type *)type {
    //根据类名拼接类字符串
    NSString *classString = [@"CellFor" stringByAppendingString:NSStringFromClass([type class])];
    //根据类名创建类
    Class class = NSClassFromString(classString);
    //用基类指针指向这个类并创建类的实例对象
    UITableViewCellBase *cell = [[class alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:NSStringFromClass([type class])];
    return cell;
}


@end
