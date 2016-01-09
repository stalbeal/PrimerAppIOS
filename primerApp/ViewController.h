//
//  ViewController.h
//  primerApp
//
//  Created by Stephany Berrio on 22/12/15.
//  Copyright © 2015 Stephany Berrio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SBWineModel.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) SBWineModel *model;

//IBOutlet le dice al controlador q esta relacionado con una vista
//todos los label llevan weak
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *wineNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *typeLabel;
@property (weak, nonatomic) IBOutlet UILabel *originLabel;
@property (weak, nonatomic) IBOutlet UILabel *grapesLabel;
@property (weak, nonatomic) IBOutlet UILabel *notesLabel;
@property (weak, nonatomic) IBOutlet UIImageView *photoView;

@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *ratingViews;





-(id) initWithModel:(SBWineModel *) aModel;

//IBAction le dice al controlador q esta relacionado con una vista
-(IBAction)displayWeb:(id)sender;

@end
