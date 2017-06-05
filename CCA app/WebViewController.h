//
//  WebViewController.h
//  CCA app
//
//  Created by Melia Fuller on 11/27/16.
//  Copyright © 2016 Joshua Fuller. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController <UIWebViewDelegate>{
}
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@end


