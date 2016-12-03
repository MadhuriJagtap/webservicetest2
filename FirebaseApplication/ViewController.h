//
//  ViewController.h
//  FirebaseApplication
//
//  Created by Felix-Madhuri on 02/12/16.
//  Copyright © 2016 com.felix-its. All rights reserved.
//

#import <UIKit/UIKit.h>
@import Firebase;


@interface ViewController : UIViewController

- (IBAction)insertrecord:(id)sender;

- (IBAction)readrecord:(id)sender;

@property(nonatomic,retain)FIRDatabaseReference *ref;


@end

