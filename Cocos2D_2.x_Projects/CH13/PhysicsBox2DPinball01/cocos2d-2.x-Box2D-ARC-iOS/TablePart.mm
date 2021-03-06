//
//  Bumper.m
//  PhysicsBox2d
//
//  Created by Steffen Itterheim on 22.09.10.
//  Copyright 2010 Steffen Itterheim. All rights reserved.
//
//  Enhanced to use PhysicsEditor shapes and retina display
//  by Andreas Loew / http://www.physicseditor.de
//

#import "TablePart.h"
#import "Helper.h"

@implementation TablePart

-(id) initWithWorld:(b2World*)world position:(CGPoint)pos name:(NSString*)name
{
	if ((self = [super initWithShape:name inWorld:world]))
	{
        // set the body position
        physicsBody->SetTransform([Helper toMeters:pos], 0.0f);

        // make the body static
        physicsBody->SetType(b2_staticBody);
	}
	return self;
}

+(id) tablePartInWorld:(b2World*)world position:(CGPoint)pos name:(NSString*)name
{
	return [[self alloc] initWithWorld:world position:pos name:name];
}

@end
