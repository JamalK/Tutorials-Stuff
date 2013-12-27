//
//  AppDetailViewController.h
//  RSSreader
//
//  Created by Jamal Kharrat on 5/28/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (strong,nonatomic)NSString *url;

@end
