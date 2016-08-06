//
//  UITableViewBase.h
//  breadtrip
//
//  Created by dllo on 16/1/25.
//  Copyright © 2016年 liushuai. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol UITableViewDelegateForRefresh <NSObject>

- (void)refreshTableViewHeader;
- (void)refreshTableViewFooter;

@end

@interface UITableViewBase : UITableView

@property (nonatomic, assign) id<UITableViewDelegateForRefresh>delegateForRefresh;
/**
 *  @brief 创建下拉刷新
 */
- (void)createHeader;

/**
 *  @brief 创建上拉加载
 */
- (void)createFooter;

@end
