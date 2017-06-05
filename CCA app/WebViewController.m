//
//  WebViewController.m
//  CCA app
//
//  Created by Melia Fuller on 11/27/16.
//  Copyright © 2016 Joshua Fuller. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.webView.delegate = self;
    [self configureView];
    self.webView.dataDetectorTypes=UIDataDetectorTypeLink;
    self.webView.scalesPageToFit = true;
    self.webView.contentMode = UIViewContentModeScaleAspectFit;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)configureView
{
    // Update the user interface for the detail item.
    NSURL *url = [NSURL URLWithString:@"http://www.ccastudentwisdom.com/"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView  loadRequest:request];
    
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    if (navigationType == UIWebViewNavigationTypeLinkClicked && [request.URL.absoluteString containsString:@"ccastudentwisdom"] == false) {
        [[UIApplication sharedApplication] openURL:[request URL]];
        return NO;
    }
    
    return YES;
}




@end
