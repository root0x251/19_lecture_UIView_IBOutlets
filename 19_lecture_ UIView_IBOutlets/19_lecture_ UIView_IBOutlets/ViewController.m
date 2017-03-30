//
//  ViewController.m
//  19_lecture_ UIView_IBOutlets
//
//  Created by Slava on 30.03.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGFloat) randomBiteFromZeroToOne {
    return (float)(arc4random() % 256) / 255;
}

- (UIColor *) randomColor {
    CGFloat r = (float) [self randomBiteFromZeroToOne];
    CGFloat g = (float) [self randomBiteFromZeroToOne];
    CGFloat b = (float) [self randomBiteFromZeroToOne];
    UIColor *color = [[UIColor alloc] initWithRed:r
                                            green:g
                                             blue:b
                                            alpha:1.f];
    return color;
}

- (void) willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    self.testView.backgroundColor = [self randomColor];
    
    for (UIView *rect in _smallRect) {
        rect.backgroundColor = [self randomColor];
    }
}

@end
