//
//  BRAppDetailViewController.h
//  WWDC2014
//
//  Created by b123400 on 15/4/14.
//  Copyright (c) 2014 b123400. All rights reserved.
//

#import <StoreKit/StoreKit.h>
#import <UIKit/UIKit.h>
#import "BRApp.h"

@interface BRAppDetailViewController : UIViewController <SKStoreProductViewControllerDelegate>

+ (instancetype)viewControllerWithApp:(BRApp*)app;

@end
