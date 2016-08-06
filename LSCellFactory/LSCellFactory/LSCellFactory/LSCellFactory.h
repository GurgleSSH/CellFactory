//
//  LSCellFactory.h
//  SmartHome
//
//  Created by liushuai on 16/5/22.
//  Copyright © 2016年 liushuai1992@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSCellFactory : NSObject

/**
 *  @brief cell工厂，根据传入的model类型创建指定的cell
 *
 *  @param type model类型
 *
 *  @return 指定类型的cell
 */
+ (UITableViewCellBase *)cellForModel:(Type *)type;

@end
