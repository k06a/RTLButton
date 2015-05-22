//
//  RTLButton.m
//  RTLButton
//
//  Created by Anton Bukov on 22.05.15.
//  Copyright (c) 2015 Codeless Solutions. All rights reserved.
//

#import "RTLButton.h"

@implementation RTLButton

- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGRect frame = [super imageRectForContentRect:contentRect];
    frame.origin.x = CGRectGetMaxX(contentRect) - CGRectGetWidth(frame) - self.imageEdgeInsets.right + self.imageEdgeInsets.left - frame.origin.x;
    return frame;
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGRect frame = [super titleRectForContentRect:contentRect];
    frame.origin.x = CGRectGetMinX(frame) - CGRectGetWidth([self imageRectForContentRect:contentRect]);
    return frame;
}

@end
