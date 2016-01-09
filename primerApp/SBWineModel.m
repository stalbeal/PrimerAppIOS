//
//  SBWineModel.m
//  primerApp
//
//  Created by Stephany Berrio on 19/12/15.
//  Copyright © 2015 Stephany Berrio. All rights reserved.
//

#import "SBWineModel.h"

@implementation SBWineModel

#pragma mark - Class methods

+(id) wineWithName:(NSString *) aName
   wineCompanyName:(NSString *) aWineCompanyName
              type:(NSString *) aType
            origin:(NSString *)  anOrigin
    wineCompanyWeb:(NSURL *) aWineCompanyWeb
             notes:(NSString *) aNotes
            grapes:(NSArray *) aGrapes
            rating:(int ) aRating
             photo:(UIImage *) aPhoto{
    return [[self alloc] initWithName:aName
                      wineCompanyName:aWineCompanyName
                                 type:aType
                               origin:anOrigin
                       wineCompanyWeb:aWineCompanyWeb
                                notes:aNotes
                               grapes:aGrapes
                               rating:aRating
                                photo:aPhoto];
}

+(id) wineWithName:(NSString *) aName
   wineCompanyName:(NSString *) aWineCompanyName
              type:(NSString *) aType
            origin:(NSString *)  anOrigin{
    return [[self alloc] initWithName:aName
                      wineCompanyName:aWineCompanyName
                                 type:aType
                                origin:anOrigin];
}

#pragma mark - Init

-(id) initWithName:(NSString *) aName
   wineCompanyName:(NSString *) aWineCompanyName
              type:(NSString *) aType
            origin:(NSString *)  anOrigin
    wineCompanyWeb:(NSURL *) aWineCompanyWeb
             notes:(NSString *) aNotes
            grapes:(NSArray *) aGrapes
            rating:(int ) aRating
             photo:(UIImage *) aPhoto{
//si es la clase super se le manda el inicializador designado, por descender de NSObject sele envia init
    if (self = [super init]) {
        //se asignan los parametros a las instancias
         _name=aName;//metodo setter
        _wineCompanyName=aWineCompanyName;
        _type=aType;
        _origin=anOrigin;
        _photo=aPhoto;
        _rating=aRating;
        _grapes=aGrapes;
        _notes=aNotes;
        _wineCompanyWeb=aWineCompanyWeb;
        
        
    }
    return self;
}

-(id) initWithName:(NSString *) aName
   wineCompanyName:(NSString *) aWineCompanyName
              type:(NSString *) aType
            origin:(NSString *) anOrigin{
    
    return [self initWithName:aName
              wineCompanyName:aWineCompanyName
                         type:aType
                       origin:anOrigin
               wineCompanyWeb:nil
                        notes:nil
                       grapes:nil
                        rating:NO_RATING
                        photo:nil];
    
}

@end
