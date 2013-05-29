//
//  V2ViewController.m
//  drawGraphs
//
//  Created by Bhaskar on 22/05/13.
//  Copyright (c) 2013 V2 Solutions. All rights reserved.
//

#import "V2ViewController.h"

@interface V2ViewController ()

@end

@implementation V2ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//	[self getAllCountryNames];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)getAllCountryNames
{
    NSMutableArray *countriesArray = [NSMutableArray array];
    NSLocale *locale = [[NSLocale alloc]initWithLocaleIdentifier:@"en_us"];
    NSArray *countryArray = [NSLocale ISOCountryCodes];
        NSLog(@"country codes %@",countryArray);
    for (NSString *countryCode in countryArray) {
//        NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
        NSString *displayNameString = [locale displayNameForKey:NSLocaleCountryCode value:countryCode];
        [countriesArray addObject:displayNameString];
        
    }
    [countriesArray sortedArrayUsingSelector:@selector(compare:)];
    
    NSLog(@"count is %d",countriesArray.count);
    
    NSLog(@"country names %@",countriesArray);
}

@end
