//
//  BRApp.h
//  WWDC2014
//
//  Created by b123400 on 15/4/14.
//  Copyright (c) 2014 b123400. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    BRAppTypeLilium,
    BRAppTypeHFT,
    BRAppTypeMaha,
    BRAppTypeKinocam,
    BRAppTypeGifCam,
} BRAppType;

@interface BRApp : NSObject

//@property (nonatomic, strong) NSString *appName;
//@property (nonatomic, strong) UIImage* appIcon;
//@property (nonatomic, strong) NSURL* appURL;
//@property (nonatomic, strong) NSString* appDescription;

+ (instancetype)appWithType:(BRAppType)type;

- (NSString*)appName;
- (UIImage*) appIcon;
- (NSURL*) appURL;
- (NSString*) appDescription;
- (NSArray*)screenShots;
- (NSString*)identifier;

@end
