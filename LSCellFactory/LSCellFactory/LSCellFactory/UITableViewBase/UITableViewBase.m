//
//  UITableViewBase.m
//  breadtrip
//
//  Created by dllo on 16/1/25.
//  Copyright © 2016年 liushuai. All rights reserved.
//

#import "UITableViewBase.h"
#import "MJRefresh.h"


@interface UITableViewBase ()

@end

@implementation UITableViewBase

#pragma mark - init
- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super initWithFrame:frame style:style];
    if (self) {
        //some code
    }
    return self;
}

/**
 *  @brief 创建下拉刷新
 */
- (void)createHeader {
    self.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        if (self.delegateForRefresh && [self.delegateForRefresh respondsToSelector:@selector(refreshTableViewHeader)]) {
            [self.delegateForRefresh refreshTableViewHeader];
            [self performSelector:@selector(endRefreshHeader) withObject:nil afterDelay:1];
        }
    }];
    
}

/**
 *  @brief 创建上拉加载
 */
- (void)createFooter {
    self.mj_footer = [MJRefreshAutoNormalFooter footerWithRefreshingBlock:^{
        if (self.delegateForRefresh && [self.delegateForRefresh respondsToSelector:@selector(refreshTableViewFooter)]) {
            [self.delegateForRefresh refreshTableViewFooter];
            [self endRefreshFooter];
        }
    }];
}

- (void)endRefreshHeader {
    [self.mj_header endRefreshing];
}

- (void)endRefreshFooter {
    [self.mj_footer endRefreshing];
}

- (void)loadMoreData {
    if (self.delegateForRefresh && [self.delegateForRefresh respondsToSelector:@selector(refreshTableViewFooter)]) {
        [self.delegateForRefresh refreshTableViewFooter];
        [self endRefreshFooter];
    }
}

#pragma mark - layout
- (void)layoutSubviews {
    [super layoutSubviews];
    
}





/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

@end
