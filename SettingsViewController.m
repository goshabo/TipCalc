//
//  SettingsViewController.m
//  TipCalc
//
//  Created by shabobo on 5/11/14.
//  Copyright (c) 2014 shabobo. All rights reserved.
//

#import "SettingsViewController.h"
#import "TipViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipsettingsControl;


@end

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Settings";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int checkit = [defaults integerForKey:@"percentageVal"];
    
    self.tipsettingsControl.selectedSegmentIndex = checkit;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onValChange:(id)sender {
    int perChoice = self.tipsettingsControl.selectedSegmentIndex;
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:perChoice forKey:@"percentageVal"];
    [defaults synchronize];
    
    
    NSLog(@"data saved");
    
    
}


@end
