//
//  HWViewController.m
//  HelloWorld
//
//  Created by administrador administraor on 12/05/12.
//  Copyright (c) 2012 ITESM-CEM. All rights reserved.
//

#import "HWViewController.h"

@implementation HWViewController
@synthesize lblResult;
@synthesize txtName;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)viewDidUnload
{
    [self setTxtName:nil];
    [self setLblResult:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)clearTextBox:(id)sender {
    [txtName setText: @""];
}

- (IBAction)touchOustsideKeyboard:(id)sender {
    [txtName resignFirstResponder];
    [txtName setText:@"Write your name..."];
}

- (IBAction)textEdited:(id)sender {
    [sender resignFirstResponder];
    NSString *result = [NSString stringWithString:@"Hello "];
    [lblResult setText:[result stringByAppendingString:[txtName text]]];
}

- (IBAction)urlApple:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://www.apple.com.mx"]];
}

- (IBAction)timeButton:(id)sender {
    NSDate *today = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"MM/dd/yyyy hh:mma"];
    NSString *dateString = [dateFormat stringFromDate:today];
    [lblResult setText: dateString];
}

- (IBAction)changeBackground:(id)sender {
}
@end
