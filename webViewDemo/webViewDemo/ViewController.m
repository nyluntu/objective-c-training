//
//  ViewController.m
//  webViewDemo
//
//  Created by Sovelluskontti on 03/03/2017.
//  Copyright © 2017 Sovelluskontti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Load remote url
    /*
     NSString *urlString = @"https://www.google.com";
     NSURL *url = [NSURL URLWithString:urlString];
     NSURLRequest *request = [NSURLRequest requestWithURL:url];
     [self.webView loadRequest:request];
     */
    
    // Load local static file
    NSString *localUrl = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:nil];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL fileURLWithPath:localUrl]];
    [self.webView loadRequest:request];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
