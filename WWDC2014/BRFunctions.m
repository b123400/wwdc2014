//
//  BRFunctions.m
//  perSecond
//
//  Created by b123400 on 01/07/2011.
//  Copyright 2011 home. All rights reserved.
//

#import "BRFunctions.h"

@interface BRFunctions ()

@end

@implementation BRFunctions

static BRFunctions *sharedObject=nil;
#pragma mark - utils
+(BRFunctions*)sharedObject{
	if(!sharedObject){
		sharedObject=[[BRFunctions alloc]init];
	}
	return sharedObject;
}

+(CGSize)screenSize{
	if(UIInterfaceOrientationIsLandscape([[UIApplication sharedApplication] statusBarOrientation])){
		CGSize size=CGSizeMake([[UIScreen mainScreen] bounds].size.height, [[UIScreen mainScreen] bounds].size.width);
		return size;
	}else{
		return [[UIScreen mainScreen] bounds].size;
	}
}

+ (NSString *)applicationDocumentsDirectory {
    
    NSArray *paths =
    NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = ([paths count] > 0) ? [paths objectAtIndex:0] : nil;
    return basePath;
}

@end
