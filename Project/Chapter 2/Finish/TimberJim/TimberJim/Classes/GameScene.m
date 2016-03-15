//
//  GameScene.m
//  TimberJim
//
//  Created by Jeremy Novak on 3/11/16.
//  Copyright (c) 2016 Jeremy Novak. All rights reserved.
//

#import "GameScene.h"

#pragma mark - Class Private Interface
@interface GameScene()

@property CGSize viewSize;
@property NSTimeInterval lastUpdateTime;

@end

#pragma mark - Class Implementation
@implementation GameScene

#pragma mark - Init
-(instancetype)initWithSize:(CGSize)size {
    
    if ((self = [super initWithSize:size])) {
        
        [self setupScene];
    }
    
    return self;
}


#pragma mark - Setup
-(void)setupScene {
    
    // Configure the class properties
    _viewSize = self.size;
    _lastUpdateTime = 0.0;
    
    // Set the backgroundColor to Black
    self.backgroundColor = [SKColor blackColor];
    
    // Create an instance of our Bitmap font and make a label with it.
    BMGlyphFont *glyphFont = [BMGlyphFont fontWithName:@"GameFont"];
    BMGlyphLabel *label = [BMGlyphLabel labelWithText:@"Yay, it works!" font:glyphFont];
    label.position = ScreenCenter();
    [self addChild:label];
    
    // Run a scale sequence action on the label
    [label runAction:[SKAction scaleTo:1.1 duration:0.25] completion:^{
        [label runAction:[SKAction scaleTo:1.0 duration:0.25]];
    }];
    
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [touches anyObject];
    CGPoint touchLocation = [touch locationInNode:self.scene];
    
    
}

-(void)update:(NSTimeInterval)currentTime {
    // Calculate "Delta"
    NSTimeInterval delta = currentTime - self.lastUpdateTime;
    self.lastUpdateTime = currentTime;
    
    
}

@end
