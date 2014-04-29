//
//  BRApp.m
//  WWDC2014
//
//  Created by b123400 on 15/4/14.
//  Copyright (c) 2014 b123400. All rights reserved.
//

#import "BRApp.h"

@interface BRApp ()

@property (assign, nonatomic) BRAppType type;

@end

@implementation BRApp

+ (instancetype)appWithType:(BRAppType)type{
    BRApp *newApp = [[BRApp alloc] init];
    newApp.type = type;
    return newApp;
}

- (NSString*)appName{
    switch (self.type) {
        case BRAppTypeLilium:
            return @"Lilium";
            break;
        case BRAppTypeHFT:
            return @"Hong Kong Farrie Timetable";
            break;
        case BRAppTypeGifCam:
            return @"Gifcam";
            break;
        case BRAppTypeKinocam:
            return @"Kinocam";
            break;
        case BRAppTypeMaha:
            return @"Maha";
            break;
    }
    return @"";
}
- (UIImage*) appIcon{
    switch (self.type) {
        case BRAppTypeLilium:
            return [UIImage imageNamed:@"lilium"];
            break;
        case BRAppTypeHFT:
            return [UIImage imageNamed:@"hft"];
            break;
        case BRAppTypeGifCam:
            return [UIImage imageNamed:@"gifcam"];
            break;
        case BRAppTypeKinocam:
            return [UIImage imageNamed:@"kinocam"];
            break;
        case BRAppTypeMaha:
            return [UIImage imageNamed:@"maha"];
            break;
    }
    return nil;
}
- (NSURL*) appURL{
    return nil;
}
- (NSString*) appDescription{
    switch (self.type) {
        case BRAppTypeLilium:
            return @"Lilium is a gesture-based image browser for your social networks, it searches for image on your social networks' timeline and display it in a beautiful way, with gorgeous animation.\n It supports Twitter,Facebook,Instagram,Flickr and Tumblr.";
            break;
        case BRAppTypeHFT:
            return @"This app allows you to check Hong Kong's ferry schedules in a convenient way.\nBuild-in timetables for islands with details:, Pier gate closing time, Time Remaining, Kind (slow or fast), Journey Time, Estimated Time Of Arrival, Prices, Map. It also uses GPS to locates and selects island automatically.";
            break;
        case BRAppTypeGifCam:
            return @"So much less than a VIDEO, so much more than a PIC.\n\
            \n\
Gif the shiny (funny) snippets of your life into frame by frame gif animations! Gif.Cam is a little app captures and shares your fun in a tiny .gif format clip, fast and easily!";
            break;
        case BRAppTypeKinocam:
            return @"Kinocam is a fun way to share life in motion.\n\
            \n\
            Shoot a vintage movie like on an old hand-crank camera, transform everyday moments into works of art you will want to share with friends.";
            break;
        case BRAppTypeMaha:
            return  @"Maha is a Twitter client, focusing on animations and interface.\
Other apps give you themes to select, but never give you a full customization. Maha allows you to pick whatever color you want, tune your client with your taste!\
            With gorgeous animations, this app is also lightning fast , which can perform smooth animations even on iPhone 3G, give you another level of user experience. ";
            break;
    }
    return @"";
}

-(NSArray *)screenShots{
    switch (self.type) {
        case BRAppTypeLilium:
            return @[[UIImage imageNamed:@"lilium1"],[UIImage imageNamed:@"lilium2"]];
            break;
        case BRAppTypeHFT:
            return @[[UIImage imageNamed:@"hft1"],[UIImage imageNamed:@"hft2"]];
            break;
        case BRAppTypeGifCam:
            return @[[UIImage imageNamed:@"gifcam1"],[UIImage imageNamed:@"gifcam2"]];
            break;
        case BRAppTypeKinocam:
            return @[[UIImage imageNamed:@"kinocam1"],[UIImage imageNamed:@"kinocam2"]];
            break;
        case BRAppTypeMaha:
            return @[[UIImage imageNamed:@"maha1"],[UIImage imageNamed:@"maha2"]];
            break;
    }
    return nil;
}

-(NSNumber *)identifier{
    switch (self.type) {
        case BRAppTypeLilium:
            return @598278036;
            break;
        case BRAppTypeHFT:
            return @398874057;
            break;
        case BRAppTypeGifCam:
            return @781418280;
            break;
        case BRAppTypeKinocam:
            return @652645145;
            break;
        case BRAppTypeMaha:
            return @427243487;
            break;
    }
    return nil;
}

@end
