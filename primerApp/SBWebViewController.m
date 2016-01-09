//
//  SBWebViewController.m
//  primerApp
//
//  Created by Stephany Berrio on 7/01/16.
//  Copyright © 2016 Stephany Berrio. All rights reserved.
//

#import "SBWebViewController.h"


@implementation SBWebViewController


-(id) initWithModel:(SBWineModel *) aModel{
    if (self= [super initWithNibName:nil bundle:nil]) {
        _model=aModel;
        self.title=@"Web";//seteamos el titulo que aparecera en el tab
    }
    return self;
}

-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self displayURL:self.model.wineCompanyWeb];
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

#pragma mark - Utils

-(void) displayURL:(NSURL *) anURL{
    //le decimos al navegador que el mismo es su delegado
    self.browser.delegate=self;
    //ponemos visible el activityViewIndicator
    self.activityViewIndicator.hidden=NO;
    //le decimos que inicie la animación
    [self.activityViewIndicator startAnimating];
    //le decioms que inicie la url a cargar
    [self.browser loadRequest:[NSURLRequest requestWithURL:anURL]];
}

#pragma mark - UIWebViewDelegate
//metodo para acciones cuando la web finalice de cargar
-(void) webViewDidFinishLoad:(UIWebView *)webView{
    //le decimos al indicatod(ruedita q carga) que finalice
    [self.activityViewIndicator stopAnimating];
    //ocultamos el activityViewIndicator(ruedita de cargando)
    [self.activityViewIndicator setHidden:YES];
    
    
}
@end
