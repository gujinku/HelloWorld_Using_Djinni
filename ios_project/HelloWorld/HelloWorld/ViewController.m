//
//  ViewController.m
//  HelloWorld
//
//  Created by Albert (Jinku) Gu on 8/3/16.
//  Copyright © 2016 Albert (Jinku) Gu. All rights reserved.
//

#import "ViewController.h"
#import "HWHelloWorld.h"
#import "FileController.h"


@interface ViewController ()

@end

@implementation ViewController {
    HWHelloWorld *_helloWorldInterface;
    
    UIButton *_helloButton;
    UIButton *_documentsButton;
    UITextView *_helloTextView;
    UITextView *_documentsTextView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // instantiate our library interface
    _helloWorldInterface = [HWHelloWorld createWithSandboxManager: [[FileController alloc] init]];
    
    // create a button programatically for the demo
    _helloButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_helloButton addTarget:self action:@selector(buttonWasPressed:) forControlEvents:UIControlEventTouchUpInside];
    [_helloButton setTitle:@"Get Hello World!" forState:UIControlStateNormal];
    _helloButton.frame = CGRectMake(20.0, 20.0, 280.0, 40.0);
    [self.view addSubview:_helloButton];
    
    // create a button programatically for the demo
    _documentsButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_documentsButton addTarget:self action:@selector(buttonWasPressed:) forControlEvents:UIControlEventTouchUpInside];
    [_documentsButton setTitle:@"Get Documents Path!" forState:UIControlStateNormal];
    _documentsButton.frame = CGRectMake(20.0, 80.0, 280.0, 40.0);
    [self.view addSubview:_documentsButton];
    
    // create a text view programatically
    _helloTextView = [[UITextView alloc] init];
    // x, y, width, height
    _helloTextView.frame = CGRectMake(20.0, 140.0, 280.0, 100.0);
    [self.view addSubview:_helloTextView];
    
    // create a text view programatically
    _documentsTextView = [[UITextView alloc] init];
    // x, y, width, height
    _documentsTextView.frame = CGRectMake(20.0, 260.0, 280.0, 100.0);
    [self.view addSubview:_documentsTextView];
    
}

- (void)buttonWasPressed:(UIButton*)sender
{
    //NSString *response = [_helloWorldInterface getHelloWorld];
    NSString *response = nil;
    UITextView *textView = nil;
    if(sender == _helloButton)
    {
        response = [_helloWorldInterface getHelloWorld];
        textView = _helloTextView;
    }
    else
    {
        response = [_helloWorldInterface getSandboxPath];
        textView = _documentsTextView;
    }
    
    textView.text = [NSString stringWithFormat:@"%@\n%@", response, textView.text];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
