//
//  CBPipe.m
//  CrappyBird
//
//  Created by Sean Wertheim on 3/8/14.
//  Copyright (c) 2014 Sean Wertheim. All rights reserved.
//

#import "CBPipe.h"

@implementation CBPipe

+(CBPipe*)pipeWithHeight:(CGFloat)height{
    NSString *pipeImageName;
    CGFloat pipeYOffset;
    
//    pipeImageName = @"PipeTop";
//    pipeYOffset = -[[UIScreen mainScreen] applicationFrame].size.height;
    
    pipeImageName = @"PipeBottom";
    pipeYOffset = 54;
    
    CBPipe *pipe = [[CBPipe alloc] initWithImageNamed:pipeImageName];
    [pipe setCenterRect:CGRectMake(26.0/56, 26.0/56, 4.0/56, 4.0/56)];
    [pipe setYScale:height/pipe.size.height];
    [pipe setPosition:CGPointMake(320+(pipe.size.width/2), abs(pipeYOffset + (pipe.size.height/2)))];
    
    pipe.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:pipe.size];
    [pipe.physicsBody setAffectedByGravity:NO];
    [pipe.physicsBody setDynamic:NO];
    
    return pipe;
}

@end
