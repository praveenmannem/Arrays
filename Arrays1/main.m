//
//  main.m
//  Arrays1
//
//  Created by Praveen on 2017-02-16.
//  Copyright © 2017 Praveen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        //Arrays Two types
        //1 . Nsarray
        //2. NsMutableArray
        
        //NSArray
        
        NSArray *languagesArray = [[NSArray alloc] initWithObjects:@"c",@"java",@"Objective C",@"Swift",@"Php",@".Net",@"Js",@"Html", nil];
        
        
        NSLog(@"print the names array %@",languagesArray);
        
        NSUInteger countOfArray = [languagesArray count];
        
        NSLog(@"count Of array %lu",(unsigned long)countOfArray);
        
        NSString *objectAtindex = [languagesArray objectAtIndex:5];
        //Terminating app due to uncaught exception 'NSRangeException', reason: '*** -[__NSArrayI objectAtIndex:]: index 10 beyond bounds [0 .. 7]'
        
        NSLog(@"print the object %@",objectAtindex);
        
        
        NSString *firstObject = [languagesArray firstObject];//[names objectAtIndex:0];
        NSString *lastObject  = [languagesArray lastObject];//[names objectAtIndex:countOfArray-1];
        
        NSLog(@"print the first object %@ and last Object %@",firstObject,lastObject);
        
        //NSMutableArray
        
        NSMutableArray *cityNamesArray = [[NSMutableArray alloc] initWithObjects:@"Hyderabad", nil];
        
        [cityNamesArray addObject:@"Delhi"];
        [cityNamesArray addObject:@"Nellore"];
        [cityNamesArray addObjectsFromArray:[[NSArray alloc] initWithObjects:@"Banglore",@"Cennai",@"Mumbai", nil]];
        
        NSLog(@"print the names array %@",cityNamesArray);
        
        
        NSMutableArray *mobileType = [[NSMutableArray alloc] initWithObjects:@"iphone",@"samsung",@"iball", nil];
        //insert
        
        [mobileType insertObject:@"motorola" atIndex:0];
        
        NSLog(@"print the mobiles after insertion %@", mobileType);
        
        //remove
        
        [mobileType removeObject:@"iball"];//[mobileType removeObjectAtIndex: 0];
        
        NSLog(@"print the mobiles after removing %@", mobileType);
        
        //replace
        
        [mobileType replaceObjectAtIndex:0 withObject:@"micromax"];
        
        NSLog(@"print the mobiles after replacing %@", mobileType);
        
    }
    return 0;
}

