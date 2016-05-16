//
//  RGSViewController.m
//  RGSRadialGradientView
//
//  Created by Randel Smith on 05/14/2016.
//  Copyright (c) 2016 Randel Smith. All rights reserved.
//

#import "RGSViewController.h"

@interface RGSViewController ()

@property (strong, nonatomic) RGSRadialGradientView *argv;

@end

@implementation RGSViewController


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    
    self.argv = [[RGSRadialGradientView alloc] initWithFrame:CGRectMake(self.view.center.x - 100, 30, 200,200)];
    
    self.argv.interColor = [UIColor colorWithRed:0.16 green:0.50 blue:0.73 alpha:1.0];
    self.argv.outerColor = [UIColor colorWithRed:0.91 green:0.30 blue:0.24 alpha:1.0];
    self.argv.radius = CGRectGetWidth(self.argv.frame)/2;
    self.argv.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.argv];
    
    
}

-(void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    self.backgroundRGV.outerColor = [UIColor colorWithRed:0.97 green:0.42 blue:0.11 alpha:1.0];
    self.backgroundRGV.interColor = [UIColor colorWithRed:0.98 green:0.85 blue:0.38 alpha:1.0];
    
    self.backgroundRGV.radius = self.backgroundRGV.frame.size.width + self.backgroundRGV.frame.size.width/32;
    self.backgroundRGV.gradientCenter = CGPointMake(CGRectGetMidX(self.backgroundRGV.frame), CGRectGetMidY(self.backgroundRGV.frame));
    
    self.argv.gradientCenter = CGPointMake(CGRectGetWidth(self.argv.frame)/2, CGRectGetHeight(self.argv.frame)/2);
}


@end
