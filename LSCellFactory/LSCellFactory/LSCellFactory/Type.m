//
//  Type.m
//  SmartHome
//
//  Created by liushuai on 16/5/22.
//  Copyright © 2016年 liushuai1992@gmail.com. All rights reserved.
//

#import "Type.h"


@implementation Type

- (NSString *)stringForTextLabel {
    if (!_stringForTextLabel) {
        _stringForTextLabel = [[NSString alloc] init];
    }
    return _stringForTextLabel;
}

- (NSString *)stringForDetailTextLabel {
    if (!_stringForDetailTextLabel) {
        _stringForDetailTextLabel = [[NSString alloc] init];
    }
    return _stringForDetailTextLabel;
}

- (UIImage *)imageForImageView {
    if (!_imageForImageView) {
        _imageForImageView = [[UIImage alloc] init];
    }
    return _imageForImageView;
}




@end
