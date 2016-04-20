//
//  UIImageView+corner.m
//  高效设置圆角
//
//  Created by myApplePro01 on 16/4/19.
//  Copyright © 2016年 LSH. All rights reserved.
//

#import "UIImageView+corner.h"

@implementation UIImageView (corner)
- (UIImage *)circleImageViewDrawInRectRoundedCorners:(CGFloat)roundCorner{
    
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, false, [UIScreen mainScreen].scale);
    [[UIBezierPath bezierPathWithRoundedRect:self.bounds
                                cornerRadius:roundCorner] addClip];
    [self.image drawInRect:self.bounds];
    UIImage  *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

- (UIImage *)circleImageViewDrawRectWithRoundedCorners:(CGFloat)roundCorner RectCorner:(UIRectCorner)RectCorner{
    
//    CGRect rect = CGRectMake(0, 0, self.bounds.size.width,self.bounds.size.height);
//    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:rect      byRoundingCorners:RectCorner    cornerRadii:CGSizeMake(roundCorner, roundCorner)];
//    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
//    maskLayer.frame = rect;
//    maskLayer.path = maskPath.CGPath;
//    self.layer.mask = maskLayer;
//    self.layer.shouldRasterize = YES;
//    self.layer.rasterizationScale = [UIScreen mainScreen].scale;
//    return nil;
//当shouldRasterize设成true时，layer被渲染成一个bitmap，并缓存起来，等下次使用时不会再重新去渲染了。实现圆角本身就是在做颜色混合（blending），如果每次页面出来时都blending，消耗太大，这时shouldRasterize = yes，下次就只是简单的从渲染引擎的cache里读取那张bitmap，节约系统资源
   
    CGRect rect = CGRectMake(0, 0, self.bounds.size.width,self.bounds.size.height);
    UIGraphicsBeginImageContextWithOptions(rect.size, false, [UIScreen mainScreen].scale);
    CGContextAddPath(UIGraphicsGetCurrentContext(), [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:RectCorner cornerRadii:CGSizeMake(roundCorner, roundCorner)].CGPath);
    CGContextClip(UIGraphicsGetCurrentContext());
    [self drawRect:rect];
    CGContextDrawPath(UIGraphicsGetCurrentContext(), kCGPathFillStroke);
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

@end
