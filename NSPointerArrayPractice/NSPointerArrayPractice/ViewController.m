//
//  ViewController.m
//  NSPointerArrayPractice
//
//  Created by Алексей on 18.04.2018.
//  Copyright © 2018 Алексей. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Create pointer array and add 10 objects inside
    NSPointerArray *pointerArray = [[NSPointerArray alloc] init];
    
    for (int i = 0; i < 10; i++) {
        NSString *str = [NSString stringWithFormat:@"String %d", i];
        [pointerArray addPointer:str];
    }
    
    // Check arrays count
    NSLog(@"PointerArray count = %lu", [pointerArray count]);
    
    // Nil several objects, added to the array and check count once again
    [pointerArray replacePointerAtIndex:4 withPointer:nil];
    [pointerArray replacePointerAtIndex:9 withPointer:nil];
    [pointerArray replacePointerAtIndex:2 withPointer:nil];
    
    NSLog(@"PointerArray count = %lu", [pointerArray count]);
    
    [pointerArray release];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
