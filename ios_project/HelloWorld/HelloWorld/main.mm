//
//  main.m
//  HelloWorld
//
//  Created by Albert (Jinku) Gu on 8/3/16.
//  Copyright © 2016 Albert (Jinku) Gu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <iostream>

using namespace std;

int main(int argc, char * argv[]) {
    
    NSString *a = @"NSString";
    
    @autoreleasepool {
        cout<<"---->>> " << [a UTF8String]<<endl;
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
