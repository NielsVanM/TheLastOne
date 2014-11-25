///Zombie AI
///Wandering around
if (lockedOn = false)
{
    if (isWalking = false)
    {
        //Choose direction
        moveDirection = choose(0,1,2,3); // 0 = right 1 = left 2 = up 3 = down
        
        //Right
        if (moveDirection = 0)
        {
            //If there isn't a collision
            if (!collision_line(x,y,x+moveSpeed,y,obj_Collision,false,true))
            {
                //Disable walking
                isWalking = true;
                
                //Set sprite
                sprite_index = spr_Zombie1_Right;
                image_speed = imgSpeed;
                
                //Setting x and y the object is moving towards
                towardsX = x + moveLength;
                towardsY = y;
                    
                //Setting hSpeed & vSpeed
                hSpeed = moveSpeed;
                vSpeed = 0;
            }
        }
            
        //Left
        if (moveDirection = 1)
        {
            //If there isn't a collision
            if (!collision_line(x,y,x-moveSpeed,y,obj_Collision,false,true))
            {
                //Disable walking
                isWalking = true;
                
                //Set sprite
                sprite_index = spr_Zombie1_Left;
                image_speed = imgSpeed;
                
                //Setting x and y the object is moving towards
                towardsX = x - moveLength;
                towardsY = y;
                    
                //Setting hSpeed & vSpeed
                hSpeed = -moveSpeed;
                vSpeed = 0;
            }
        }
            
        //Up
        if (moveDirection = 2)
        {
            //If there isn't a collision
            if (!collision_line(x,y,x,y-moveLength,obj_Collision,false,true))
            {
                //Disable walking
                isWalking = true;
                    
                //Set sprite
                sprite_index = spr_Zombie1_Up;
                image_speed = imgSpeed;
                
                //Setting x and y the object is moving towards
                towardsX = x;
                towardsY = y - moveLength;
                    
                //Setting hSpeed & vSpeed
                hSpeed = 0;
                vSpeed = -moveSpeed;
            }
        }
        //Down
        if (moveDirection = 3)
        {
            //If there isn't a collision
            if (!collision_line(x,y,x,y+moveLength,obj_Collision,false,true))
            {
                //Disable walking
                isWalking = true;
                
                //Set sprite
                sprite_index = spr_Zombie1_Down;
                image_speed = imgSpeed;
                
                //Setting x and y the object is moving towards
                towardsX = x;
                towardsY = y + moveLength;
                    
                //Setting hSpeed & vSpeed
                hSpeed = 0;
                vSpeed = moveSpeed;
            }
        }
    }
        
    //If destination is reached reset hSpeed & vSpeed
    if (x = towardsX && y = towardsY)
    {
        hSpeed = 0;
        vSpeed = 0;
        if (global.walkCooldown = 0){global.walkCooldown = 2 * room_speed;}
    }
        
    //Walk cooldown
    if (global.walkCooldown > 0){global.walkCooldown -= 1; image_speed = 0; image_index = 1;}
    if (global.walkCooldown = 1){isWalking = false;}
    if (global.walkCooldown = 0){image_speed = imgSpeed;}
}

///Player tracking

//Moving on to player
if (distance_to_object(obj_Player) < trackRange && distance_to_object(obj_Player) > hitRange)
{
    //Setting lockedOn
    lockedOn = true;    
}

//Changing x and y
x += hSpeed;
y += vSpeed;
