//
//  AppDelegate.m
//  primerApp
//
//  Created by Stephany Berrio on 16/11/15.
//  Copyright © 2015 Stephany Berrio. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "SBWineModel.h"
#import  "SBWebViewController.h"


@implementation AppDelegate


- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //creamos obajeto del modelo SBWineModel
    SBWineModel *vinoTinto = [SBWineModel wineWithName:@"Bembibre"
                                         wineCompanyName:@"Bominio Tares"
                                                    type:@"Tinto"
                                                  origin:@"El Bierzo"
                                          wineCompanyWeb:[NSURL URLWithString:@"https://www.google.com"]
                                                   notes:@"Este vino muestra toda complejidad y la elegancia Mencia. En fase visual luce un color rojo picota muy cubierto con tonalidades..."
                                                grapes:@[@"Mencia"]
                                                rating:5
                                                   photo:[UIImage imageNamed:@"bembibre.jpg"]];
    SBWineModel *vino2 = [SBWineModel wineWithName:@"vino 2"
                                       wineCompanyName:@"Bominio Tares"
                                                  type:@"Tinto"
                                                origin:@"El Bierzo"
                                        wineCompanyWeb:[NSURL URLWithString:@"https://www.google.com"]
                                                 notes:@"Este vino muestra toda complejidad y la elegancia Mencia. En fase visual luce un color rojo picota muy cubierto con tonalidades..."
                                                grapes:@[@"Mencia"]
                                                rating:5
                                                 photo:[UIImage imageNamed:@"bembibre.jpg"]];
    SBWineModel *vino3 = [SBWineModel wineWithName:@"vino 3"
                                       wineCompanyName:@"vino 3 Tares"
                                                  type:@"Tinto"
                                                origin:@"El Bierzo"
                                        wineCompanyWeb:[NSURL URLWithString:@"https://www.google.com"]
                                                 notes:@"Este vino muestra toda complejidad y la elegancia Mencia. En fase visual luce un color rojo picota muy cubierto con tonalidades..."
                                                grapes:@[@"Mencia"]
                                                rating:5
                                                 photo:[UIImage imageNamed:@"bembibre.jpg"]];
    
    //creamos un objeto wineviewcontroller para cada objeto de tipo vino
    ViewController *wineViewController = [[ViewController alloc] initWithModel:vinoTinto];
    ViewController *wine2VC =[[ViewController alloc] initWithModel:vino2];
    ViewController *wine3VC =[[ViewController alloc]initWithModel:vino3];
    //SBWebViewController *webViewController = [[SBWebViewController alloc] initWithModel:vinoTinto];
   
    //Agregando navigation para cada vista, iniciado solo con un controlador
    UINavigationController *vino1NavViewController=[[UINavigationController alloc]initWithRootViewController:wineViewController];
    UINavigationController *vino2NavViewController=[[UINavigationController alloc]initWithRootViewController:wine2VC];
    UINavigationController *vino3NavViewController=[[UINavigationController alloc]initWithRootViewController:wine3VC];
    
    //creamos un combinador, que en este caso seran tabs
    UITabBarController *tabViewController =[[UITabBarController alloc] init];
    //asignamos los controladores que apareceran en la vista, aparecen en el orden q se ponen
     tabViewController.viewControllers=@[vino1NavViewController,vino2NavViewController,vino3NavViewController];
     
     //le asignamos el controlador raiz, que generalmente es un combinador
     self.window.rootViewController= tabViewController;
    
    //le asignamos el controlador raiz, que generalmente es un combinador
    self.window.rootViewController= tabViewController;
    
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor orangeColor];
    //MainViewController *main= [MainViewController new];
   // self.window.rootViewController=main;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
