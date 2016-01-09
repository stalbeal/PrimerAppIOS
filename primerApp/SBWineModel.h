//
//  SBWineModel.h
//  primerApp
//
//  Created by Stephany Berrio on 19/12/15.
//  Copyright © 2015 Stephany Berrio. All rights reserved.
//

#import <Foundation/Foundation.h>
#define NO_RATING -1

@interface SBWineModel : NSObject

//***todos los objetos llevan strong y nonatonic, esto genera los setters y getters por defecto***//
//nonatonic se usa para generar sin la seguridad extra
@property (strong, nonatomic) NSString *type;
//UIImage es una clase q representa una imagen, mas no la muestra en pantalla
@property (strong, nonatomic) UIImage *photo;
//al ser de tipo NSURL hace que el objeto deba tener formato de url y lo verifica
@property (strong, nonatomic) NSURL *wineCompanyWeb;
@property (strong, nonatomic) NSString *notes;
@property (strong, nonatomic) NSString *origin;
@property (nonatomic) int rating; //0-5
@property (strong, nonatomic) NSArray *grapes;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *wineCompanyName;

//metodos de clase

+(id) wineWithName:(NSString *) aName
   wineCompanyName:(NSString *) aWineCompanyName
              type:(NSString *) aType
            origin:(NSString *)  anOrigin
    wineCompanyWeb:(NSURL *) aWineCompanyWeb
             notes:(NSString *) aNotes
            grapes:(NSArray *) aGrapes
            rating:(int ) aRating
             photo:(UIImage *) aPhoto;

+(id) wineWithName:(NSString *) aName
   wineCompanyName:(NSString *) aWineCompanyName
              type:(NSString *) aType
            origin:(NSString *)  anOrigin;

//constructor designado, acepta todos los parametros de la clase

-(id) initWithName:(NSString *) aName
   wineCompanyName:(NSString *) aWineCompanyName
              type:(NSString *) aType
            origin:(NSString *)  anOrigin
    wineCompanyWeb:(NSURL *) aWineCompanyWeb
             notes:(NSString *) aNotes
            grapes:(NSArray *) aGrapes
            rating:(int ) aRating
             photo:(UIImage *) aPhoto;

-(id) initWithName:(NSString *) aName
   wineCompanyName:(NSString *) aWineCompanyName
              type:(NSString *) aType
            origin:(NSString *)  anOrigin;





@end
