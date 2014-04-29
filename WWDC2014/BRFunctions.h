//
//  BRFunctions.h
//  perSecond
//
//  Created by b123400 on 01/07/2011.
//  Copyright 2011 home. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface BRFunctions : NSObject {
	
}

+(BRFunctions*)sharedObject;

+(CGSize)screenSize;
+ (NSString *)applicationDocumentsDirectory;

@end
