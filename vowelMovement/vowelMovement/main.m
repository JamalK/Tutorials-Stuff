//
//  main.m
//  vowelMovement
//
//  Created by Jamal Kharrat on 5/26/13.
//  Copyright (c) 2013 Jamal Kharrat. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSArray *oldStrings = [NSArray arrayWithObjects:@"Sauerkraut",@"Raygun",@"Big Nerd Ranch",@"Mississippi",nil];
        
        NSLog(@"Old strings %@",oldStrings);
        
        
        NSMutableArray *newStrings = [NSMutableArray array];
        
        NSMutableArray *fib = [NSMutableArray array];
        
        //create a list of vowels
        NSArray *vowels = [NSArray arrayWithObjects:@"a",@"i",@"o",@"u",@"i",nil];
        
        void(^devowlizer)(id,NSUInteger,BOOL *);
        
        
        void(^fibionacci)(int);
        
        fibionacci=^(int count)
        {
            int x =0;
            int y=1;
            for (int i=1; i<10;i++ )
            {
                int x1=x;
                x=y;
                y=y+x1;
                

                NSLog(@"number is %d",x);
                [fib addObject:[NSNumber numberWithInt:x]];
//                [fib addObject:[NSNumber numberWithInt:3]];
                
            }
        };
        
        devowlizer=^(id string, NSUInteger i, BOOL *stop)
        {
            NSRange yRange = [string rangeOfString:@"y" options:NSCaseInsensitiveSearch];
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            if (yRange.location!=NSNotFound)
            {  *stop=YES;
                return ;}
            
            for (NSString *s in vowels)
            {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
                
                
            }
            [newStrings addObject:newString];
            
        };
        
        [oldStrings enumerateObjectsUsingBlock:devowlizer];
        NSLog(@"new Strings : %@",newStrings);
        
        fib = [NSMutableArray arrayWithObject:fibionacci];
        

        

        
        
        
    }
    return 0;
}

