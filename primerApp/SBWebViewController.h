//
//  SBWebViewController.h
//  primerApp
//
//  Created by Stephany Berrio on 7/01/16.
//  Copyright © 2016 Stephany Berrio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SBWineModel.h"


@interface SBWebViewController : UIViewController<UIWebViewDelegate>

@property (strong, nonatomic) SBWineModel *model;
@property (weak, nonatomic) IBOutlet UIWebView *browser;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityViewIndicator;

-(id) initWithModel:(SBWineModel *) aModel;

@end
