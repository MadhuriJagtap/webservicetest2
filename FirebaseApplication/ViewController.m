//
//  ViewController.m
//  FirebaseApplication
//
//  Created by Felix-Madhuri on 02/12/16.
//  Copyright © 2016 com.felix-its. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _ref=[[FIRDatabase database]referenceFromURL:@"https://employeedatabase-68d3c.firebaseio.com/"];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)insertrecord:(id)sender {
    
    NSMutableDictionary *outerdic=[[NSMutableDictionary alloc]init];
    
    NSMutableDictionary *d1=[[NSMutableDictionary alloc]init];
    [d1 setValue:@10 forKey:@"rollno"];
    [d1 setValue:@"Madhuri" forKey:@"name"];
    
    
    NSMutableDictionary *d2=[[NSMutableDictionary alloc]init];
    [d2 setValue:@20 forKey:@"rollno"];
    [d2 setValue:@"Sonal" forKey:@"name"];
    
    
    NSMutableDictionary *d3=[[NSMutableDictionary alloc]init];
    [d3 setValue:@30 forKey:@"rollno"];
    [d3 setValue:@"Pooja" forKey:@"name"];
    
    [outerdic setValue:d1 forKey:@"student1"];
    [outerdic setValue:d2 forKey:@"student2"];
    [outerdic setValue:d3 forKey:@"student3"];
    
    
    [[_ref child:@"studentinfo"]setValue:outerdic];
    
}

- (IBAction)readrecord:(id)sender {
    
    
    [[_ref child:@"studentinfo"]observeEventType:FIRDataEventTypeChildAdded withBlock:^(FIRDataSnapshot * _Nonnull snapshot) {
        
        NSLog(@"%@",snapshot.value[@"name"]);
        
    }];
    
    
    
    
}
@end
