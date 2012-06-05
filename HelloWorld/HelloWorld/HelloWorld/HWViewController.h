//
//  HWViewController.h
//  HelloWorld
//
//  Created by administrador administraor on 12/05/12.
//  Copyright (c) 2012 ITESM-CEM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HWViewController : UIViewController



@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UILabel *lblResult;

- (IBAction)clearTextBox:(id)sender;
- (IBAction)touchOustsideKeyboard:(id)sender;
- (IBAction)textEdited:(id)sender;
- (IBAction)urlApple:(id)sender;
- (IBAction)timeButton:(id)sender;
- (IBAction)changeBackground:(id)sender;


@end
