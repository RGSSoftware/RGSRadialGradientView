//
//  RadialGradientView.m
//
//  Created by Randel Smith on 4/25/16.
//  Copyright © 2016 Randel Smith. All rights reserved.
//

#import "RGSRadialGradientView.h"

@implementation RGSRadialGradientView

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self baseInit];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self baseInit];
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self baseInit];
    }
    return self;
}

-(void)baseInit{
    self.radius = MIN((self.bounds.size.width /2), self.bounds.size.height/2);
    self.gradientCenter = self.center;
}

- (void)drawRect:(CGRect)rect
{
    
    CGFloat ir = 0.0, ig = 0.0, ib = 0.0, ia = 0.0;
    [self.interColor getRed:&ir green:&ig blue:&ib alpha:&ia];
    
    CGFloat or = 0.0, og = 0.0, ob = 0.0, oa = 0.0;
    [self.outerColor getRed:&or green:&og blue:&ob alpha:&oa];
    
    CGFloat colorComponents[] = {ir, ig, ib, ia,
        or, og, ob , oa};
    
    CGFloat locations[] = {0, 1};
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    
    CGGradientRef gradient = CGGradientCreateWithColorComponents(colorSpace, colorComponents, locations, 2);
    
    CGContextDrawRadialGradient(context, gradient, self.gradientCenter, 0.0, self.gradientCenter, self.radius, 0);
    CGContextRestoreGState(context);
    
    CGColorSpaceRelease(colorSpace);
    CGGradientRelease(gradient);
}
@end
