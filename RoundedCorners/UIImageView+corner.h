//
//  UIImageView+corner.h
//  高效设置圆角
//
//  Created by myApplePro01 on 16/4/19.
//  Copyright © 2016年 LSH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (corner)
- (UIImage *)circleImageViewDrawInRectRoundedCorners:(CGFloat)roundCorner;

/**
 *  设置圆角
 *  RectCorner  圆角区域
 */
- (UIImage *)circleImageViewDrawRectWithRoundedCorners:(CGFloat)roundCorner RectCorner:(UIRectCorner)RectCorner;
@end
