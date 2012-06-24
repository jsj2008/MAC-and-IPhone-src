//
//  Handling_the_Events_of_a_Map_ViewViewController.m
//  Handling the Events of a Map View
//
//  Created by Vandad Nahavandipoor on 14/07/2011.
//  Copyright 2011 Pixolity Ltd. All rights reserved.
//

#import "Handling_the_Events_of_a_Map_ViewViewController.h"

@implementation Handling_the_Events_of_a_Map_ViewViewController

@synthesize myMapView;

- (void)didReceiveMemoryWarning{
  [super didReceiveMemoryWarning];
}

- (void)viewDidLoad{
  [super viewDidLoad];
  
  /* Create a map as big as our view */
  self.myMapView = [[MKMapView alloc] 
                    initWithFrame:self.view.bounds];
  
  /* Set the map type to Satellite */
  self.myMapView.mapType = MKMapTypeSatellite;
  
  self.myMapView.delegate = self;
  
  self.myMapView.autoresizingMask = 
    UIViewAutoresizingFlexibleWidth | 
    UIViewAutoresizingFlexibleHeight;
  
  /* Add it to our view */
  [self.view addSubview:self.myMapView];
  
}

- (void)viewDidUnload{
  [super viewDidUnload];
  self.myMapView = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation
        :(UIInterfaceOrientation)interfaceOrientation{
  return YES;
}

@end
