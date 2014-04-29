//
//  BRAppsViewController.m
//  WWDC2014
//
//  Created by b123400 on 15/4/14.
//  Copyright (c) 2014 b123400. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "BRAppsViewController.h"
#import "BRAppDetailViewController.h"

@interface BRAppsViewController ()

- (void)gotoDetailWithType:(BRAppType)type;

@end

@implementation BRAppsViewController

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
    for (UIView *thisView in self.view.subviews) {
        if ([thisView isKindOfClass:[UIButton class]]) {
            thisView.layer.cornerRadius = 10;
            thisView.layer.masksToBounds = YES;
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)goToLilium:(id)sender {
    [self gotoDetailWithType:BRAppTypeLilium];
}
- (IBAction)goToHFT:(id)sender {
    [self gotoDetailWithType:BRAppTypeHFT];
}
- (IBAction)gotoMaha:(id)sender {
    [self gotoDetailWithType:BRAppTypeMaha];
}
- (IBAction)gotoKinocam:(id)sender {
    [self gotoDetailWithType:BRAppTypeKinocam];
}
- (IBAction)gotoGifcam:(id)sender {
    [self gotoDetailWithType:BRAppTypeGifCam];
}


- (void)gotoDetailWithType:(BRAppType)type{
    BRAppDetailViewController *controller = [BRAppDetailViewController viewControllerWithApp:[BRApp appWithType:type]];
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
