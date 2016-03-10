//
//  ViewController.m
//  ios-constraintTest
//
//  Created by caa on 3/10/16.
//  Copyright © 2016 yahoo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *superView=self.view;
    
    UIButton *theButton=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    
   
    
    [theButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    
 
    
    [theButton setTitle:@"Hello" forState:UIControlStateNormal];
    
 
    
    [superView addSubview:theButton];
    
  
    

    NSLayoutConstraint *cn= [NSLayoutConstraint  constraintWithItem:theButton
                             
                                                          attribute:NSLayoutAttributeCenterX
                             
                                                          relatedBy:NSLayoutRelationEqual
                             
                                                             toItem:superView
                             
                                                          attribute:NSLayoutAttributeCenterX
                             
                                                         multiplier:1.0
                             
                                                           constant:0.0
                             
                             ];
    
    [superView addConstraint:cn];
    
    cn= [NSLayoutConstraint  constraintWithItem:theButton
         
                                      attribute:NSLayoutAttributeBottom
         
                                      relatedBy:NSLayoutRelationEqual
         
                                         toItem:superView
         
                                      attribute:NSLayoutAttributeBottom
         
                                     multiplier:1.0
         
                                       constant:-50.0
         
         ];
    
    [superView addConstraint:cn];
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
