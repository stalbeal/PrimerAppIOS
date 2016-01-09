//
//  ViewController.m
//  primerApp
//
//  Created by Stephany Berrio on 22/12/15.
//  Copyright © 2015 Stephany Berrio. All rights reserved.
//

#import "ViewController.h"
#import "SBWebViewController.h"

@implementation ViewController
-(id) initWithModel:(SBWineModel *) aModel{
    if (self=[super initWithNibName:nil
                             bundle:nil]) {
        _model=aModel;
        self.title= aModel.name;
    }
    return self;
}


//nibNAmeOrNil es el nombre del xib, el xib se compila como nib
//nibBundleOrNil bundle es una carpeta q se hace pasar por fichero
//se pasa el nombre y la especificacion del bundle donde se encuntra
//si recibiera nil buscaria el que tiene el mismo nombre de la clase y q este en el bundle principal
/*-(id) initWithNibName:(NSString *)nibNameOrNil
               bundle:(NSBundle *)nibBundleOrNil{
    
    self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //
    }
    return self;
}*/

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self syncModelWithView];
}

//para recibir mensajes de uso de memoria
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//se emplea para mantener comunicados modelo y vista
//recibe un bool q define si la vista aparecera con animacion o no
-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.tintColor=[UIColor colorWithRed:0.5
                                                                      green:0
                                                                       blue:0.13
                                                                      alpha:1];
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Actions
-(IBAction)displayWeb:(id)sender{
    NSLog(@"Go to %@", self.model.wineCompanyWeb);
    //creamos un objeto de tipo webviewcontroller
    SBWebViewController *webViewController=[[SBWebViewController alloc] initWithModel:self.model];
    //para el navigation, hacemos un push para apilar este controler
    [self.navigationController pushViewController:webViewController animated:YES];
}





#pragma mark - Utils
-(void)syncModelWithView{

    self.nameLabel.text=self.model.name;
    self.notesLabel.text=self.model.notes;
    self.grapesLabel.text=[self arrayToString:self.model.grapes];
    self.photoView.image=self.model.photo;
    self.typeLabel.text=self.model.type;
    self.originLabel.text=self.model.origin;
    self.wineNameLabel.text=self.model.wineCompanyName;
    
    [self displayRating: self.model.rating];
    [self.notesLabel setNumberOfLines:0];
    //ponemos el numero de lineas en 0 para que utilice todas las lineas q necesite

}
//metodo para mostrar el raiting del vino
-(void) displayRating:(int) aRaiting{
    
    [self clearRaitings];
    
    //creamos una imagen y le asignamos el nombre de la imagen a través del metodo imageNamed
    //de los objetos UIImage
    UIImage *glass =[UIImage imageNamed:@"splitView_score_glass"];
    for (int i=0; i<aRaiting; i++) {
        //a todas las imagenes le asignamos la imagen creada glass
        [[self.ratingViews objectAtIndex:i] setImage:glass];
    }
}

-(void) clearRaitings{
    //recorrems las imageviews q tenemos
    for (UIImageView *imgView in self.ratingViews) {
        //a cada imgView lo hacemos null
        imgView.image=nil;
    }
}

//metodo para pasar un arreglo a string
-(NSString *) arrayToString:(NSArray *) anArray{
    NSString *aux=nil;
    if([anArray count]==1){
        aux=[@"100% " stringByAppendingString:[anArray lastObject]];

    }else{
        aux= [[anArray componentsJoinedByString:@", "] stringByAppendingString:@"."];
    }
    return aux;
}


@end
