//
//  ViewController.h
//  SpeechSample
//
//  Created by Shinya Hirai on 2015/07/23.
//  Copyright (c) 2015年 Shinya Hirai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)tapBtn:(id)sender;
- (IBAction)inputSiri:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textSiri;

@end

