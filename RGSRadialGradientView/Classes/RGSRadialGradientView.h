//
//  RadialGradientView.h
//
//  Created by Randel Smith on 4/25/16.
//  Copyright © 2016 Randel Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RGSRadialGradientView : UIView

@property (nonatomic, strong)UIColor *interColor;
@property (nonatomic, strong)UIColor *outerColor;

@property (nonatomic)CGFloat radius;
@property (nonatomic)CGPoint gradientCenter;

@end
