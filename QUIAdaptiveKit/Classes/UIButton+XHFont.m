//
//  UIButton+XHFont.m
//  QUIAdaptiveKit
//
//  Created by Quinn_F on 2018/7/30.
//  Copyright © 2018年 quinn. All rights reserved.
//

#import "UIButton+XHFont.h"
#import <objc/runtime.h>
#import "Constrants.h"

@implementation UIButton (XHFont)
- (void)setAdaptive:(BOOL)font_Adaptive {
    if(font_Adaptive){
        CGFloat fontSize = self.titleLabel.font.pointSize;
        self.titleLabel.font = [UIFont systemFontOfSize:fontSize * XH_SCREEN_SCALE];
    }
    objc_setAssociatedObject(self, @selector(adaptive), @(font_Adaptive), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (BOOL)adaptive {
    NSNumber *value = objc_getAssociatedObject(self, @selector(adaptive));
    return [value boolValue];
}
@end
