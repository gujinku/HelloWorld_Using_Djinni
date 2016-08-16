//
//  FileController.h
//  HelloWorld
//
//  Created by Albert (Jinku) Gu on 8/4/16.
//  Copyright © 2016 Albert (Jinku) Gu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HWSandboxManager.h"

@interface FileController : NSObject<HWSandboxManager>

- (nonnull NSString *)getSandboxPath;

@end
