<a href="https://github.com/RGSSoftware/HireMe">
  <img src="https://github.com/RGSSoftware/HireMe/blob/master/HireMeBanner.png" >
</a>

# RGSRadialGradientView

[![Version](https://img.shields.io/cocoapods/v/RGSRadialGradientView.svg?style=flat)](http://cocoapods.org/pods/RGSRadialGradientView)
[![License](https://img.shields.io/cocoapods/l/RGSRadialGradientView.svg?style=flat)](http://cocoapods.org/pods/RGSRadialGradientView)
[![Platform](https://img.shields.io/cocoapods/p/RGSRadialGradientView.svg?style=flat)](http://cocoapods.org/pods/RGSRadialGradientView)

A simple Radial Gradient View for iOS.

<img src="https://github.com/RGSSoftware/RGSRadialGradientView/blob/master/screenshots/ss1.png" alt="iPhone 5" width="396" />

## Installation

RGSRadialGradientView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "RGSRadialGradientView"
```

## Using a RGSRadialGradientView from a View Controller
```objc

...
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];

    ...

    self.argv = [[RGSRadialGradientView alloc] initWithFrame:CGRectMake(self.view.center.x - 100, 30, 200,200)];

    self.argv.interColor = [UIColor colorWithRed:0.16 green:0.50 blue:0.73 alpha:1.0];
    self.argv.outerColor = [UIColor colorWithRed:0.91 green:0.30 blue:0.24 alpha:1.0];
    self.argv.radius = CGRectGetWidth(self.argv.frame)/2;
    self.argv.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.argv];
    
    ...

}

-(void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    
    ...

    self.argv.gradientCenter = CGPointMake(CGRectGetWidth(self.argv.frame)/2, CGRectGetHeight(self.argv.frame)/2);

    ...
}
```

###Todo
As of now RGSRadialGradientView is very simplistic, but over time I hope it can grow into a first class object like : https://developer.mozilla.org/en-US/docs/Web/CSS/radial-gradient.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## License

RGSRadialGradientView is available under the MIT license. See the LICENSE file for more info.
