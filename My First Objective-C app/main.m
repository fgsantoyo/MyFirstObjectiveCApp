//
//  main.m
//  My First Objective-C app
//
//  Created by Fernando Garcia, Jr on 3/15/14.
//  Copyright (c) 2014 Fernando Garcia, Jr. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        int answer = 0;
        int guess = 0;
        int turns = 0;
        answer = arc4random() % 100 + 1;
        
        while(guess != answer){
            turns++;
            NSLog(@"Turn #%i: Enter a number between 1 and 100", turns);
            scanf("%i", &guess);
            if (guess > answer) {
                NSLog(@"Guess was too High!");
            } else if(guess < answer){
                NSLog(@"Guess was to Low!");
            } else {
                NSLog(@"You are correct!! The answer is %i. It just took you %i turns", answer, turns);
            }
        }
    }
    return 0;
}

