//
//  ViewController.h
//  Calculator
//
//  Created by Matt Deuschle on 11/18/15.
//  Copyright © 2015 Matt Deuschle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int currentOperation;
    float result;
    float currentNumber;
}

@property (weak, nonatomic) IBOutlet UILabel *label;


@end

