//
//  BRAppDetailViewController.m
//  WWDC2014
//
//  Created by b123400 on 15/4/14.
//  Copyright (c) 2014 b123400. All rights reserved.
//

#import "BRAppDetailViewController.h"
#import "UIView+Interaction.h"

@interface BRAppDetailViewController ()

@property (nonatomic, strong) BRApp *app;

@property (weak, nonatomic) IBOutlet UIImageView *appLogoView;
@property (weak, nonatomic) IBOutlet UILabel *appNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *appDescriptionLabel;
@property (weak, nonatomic) IBOutlet UIImageView *screenshot1View;
@property (weak, nonatomic) IBOutlet UIImageView *screenshot2View;
@property (weak, nonatomic) IBOutlet UIButton *appstoreButton;

@end

@implementation BRAppDetailViewController

+ (instancetype)viewControllerWithApp:(BRApp *)app{
    BRAppDetailViewController *controller = [[UIStoryboard storyboardWithName:@"Content_iPad" bundle:nil] instantiateViewControllerWithIdentifier:@"appdetail"];
    controller.app = app;
    return controller;
}

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
    self.appNameLabel.text = self.app.appName;
    self.appDescriptionLabel.text = self.app.appDescription;
    self.appLogoView.image = self.app.appIcon;
    
    NSArray *screenShots = self.app.screenShots;
    self.screenshot1View.image = [screenShots objectAtIndex:0];
    self.screenshot2View.image = [screenShots objectAtIndex:1];
    
    self.appLogoView.layer.cornerRadius = 30;
    self.appLogoView.clipsToBounds = YES;
    [self.appstoreButton setTouchReactionEnabled:NO];
}
- (IBAction)appstoreButtonTapped:(id)sender {
    self.appstoreButton.enabled = NO;
    SKStoreProductViewController *productVC = [[SKStoreProductViewController alloc] init];
    productVC.delegate = self;
    NSDictionary *productParameters = @{ SKStoreProductParameterITunesItemIdentifier : self.app.identifier};
    [productVC loadProductWithParameters:productParameters completionBlock:^(BOOL result, NSError *error) {
        if (error) {
            [[[UIAlertView alloc] initWithTitle:[error localizedDescription]
                                       message:nil
                                      delegate:nil
                             cancelButtonTitle:@"Ok"
                             otherButtonTitles:nil, nil] show];
        }
        if (result) {
            [self presentViewController:productVC animated:YES completion:nil];
        }
        self.appstoreButton.enabled = YES;
    }];
}

- (void)productViewControllerDidFinish:(SKStoreProductViewController *)viewController{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
