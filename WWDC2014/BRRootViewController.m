//
//  BRRootViewController.m
//  WWDC2014
//
//  Created by b123400 on 14/4/14.
//  Copyright (c) 2014 b123400. All rights reserved.
//

#import "BRRootViewController.h"

@interface BRRootViewController ()

@end

@implementation BRRootViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Content_iPad" bundle:nil];
    UIViewController *controller = [storyboard instantiateInitialViewController];
    [self.navigationController pushViewController:controller animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
