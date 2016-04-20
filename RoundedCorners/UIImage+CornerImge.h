//
//  UIImage+CornerImge.h
//  高效设置圆角
//
//  Created by myApplePro01 on 16/4/19.
//  Copyright © 2016年 LSH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (CornerImge)

/**
 *  图片圆角
 */
+ (id)createRoundedRectImage:(UIImage *)image
                        size:(CGSize)size
                      radius:(NSInteger)r;
@end
