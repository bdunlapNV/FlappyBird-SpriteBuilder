#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
    timeSinceObstacle = 0.0f;
    
    
    
}

-(void)update:(CCTime)delta
// this will be run every frame
// delta is the time that has elapsed since the last time it was run.
// This is usually 1/60th of a second, but can be bigger if the game slows down.

timeSinceObstacle += delta; //approximately 1/60th of a second
// check to see if 2 seconds have passed
if (timeSinceObstacle > 2.0f);
{
    // add a new obstacle
    [self addObstacle];
    
    //then reset the timer
    timeSinceObstacle = 0.0f
}
{
    // put update code here
}

// put new methods here
- (void)TouchBegan:(UITouch *)touch withEvent:(UITouch *)event {
    //this will get called every time the player touches the screen
    [character flap];
    float timeSinceObstacle;
    
}

@end
