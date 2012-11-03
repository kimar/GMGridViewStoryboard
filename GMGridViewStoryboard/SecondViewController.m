//
//  SecondViewController.m
//  GMGridViewStoryboard
//
//  Created by Marcus Kida on 03.11.12.
//  Copyright (c) 2012 Marcus Kida. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
{
    IBOutlet UILabel *m_CellNumberLabel;
    int m_CellNumber;
}
@end

@implementation SecondViewController

@synthesize m_CellNumber;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSLog(@"m_CellNumber = %d", m_CellNumber);
    m_CellNumberLabel.text = [NSString stringWithFormat:@"I'm Cell %d's content!", m_CellNumber];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBActions
- (IBAction)closeMe:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:^()
    {
        NSLog(@"Going back to first one...");
    }];
}
@end
