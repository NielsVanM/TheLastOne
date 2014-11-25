//Variables
moveSpeed = 2;
moveLength = 128;

//Wandering around
if (isWalking = false)
{
    //Choose direction
    moveDirection = choose(0,1,2,3); // 0 = right 1 = left 2 = up 3 = down
    
    //Right
    if (moveDirection = 0)
    {
        //If ther isn't a collision
        if (!collision_line(x,y,x+moveSpeed,y,obj_Collision,false,true))
        {
            //Disabling walking
            isWalking = false;
            
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
            isWalking = false;
            
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
            isWalking = false;
            
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
            isWalking = false;
            
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
    walkCooldown = 2 * room_speed;
}

//Walk cooldown
if (walkCooldown > 0)
{
    walkCooldown -= 1;
}

//Changing x and y
x += hSpeed;
y += vSpeed;
