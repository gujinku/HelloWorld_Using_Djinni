//
//  FileController.m
//  HelloWorld
//
//  Created by Albert (Jinku) Gu on 8/4/16.
//  Copyright © 2016 Albert (Jinku) Gu. All rights reserved.
//

#import "FileController.h"

@implementation FileController

- (nonnull NSString *)getSandboxPath
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return paths.firstObject;
}

@end
