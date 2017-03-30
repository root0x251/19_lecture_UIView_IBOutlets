//
//  ViewController.h
//  19_lecture_ UIView_IBOutlets
//
//  Created by Slava on 30.03.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//@property (weak, nonatomic) IBOutlet UIView *testView;
// так же надо убрать саязь со storyboard
@property (weak, nonatomic) IBOutlet UIView *testView;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *smallRect;


@end

