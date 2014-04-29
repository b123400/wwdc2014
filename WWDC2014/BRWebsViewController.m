//
//  BRWebsViewController.m
//  WWDC2014
//
//  Created by b123400 on 15/4/14.
//  Copyright (c) 2014 b123400. All rights reserved.
//

#import "BRWebsViewController.h"

@interface BRWebsViewController ()

@end

@implementation BRWebsViewController

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
- (IBAction)gotoNovelSphere:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://novelsphere.jp"]];
}
- (IBAction)gotoAdd2Home:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://add2home.b123400.net"]];
}
- (IBAction)gotoButai:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://but.ai"]];
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
