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
        //If ther is no collision on the way
        if (!collision_line(x,y,x+moveLength,y,obj_Collision,false,true))
        {
            //Set walking
            isWalking = true;
            
            //Set coordinates moving towards
            towardsX = 
            towardsY =
            
            //Move object
            move_towards_point(x+moveLength,y,moveSpeed);
            walkTimer = 4 * room_speed;
        }
    }
    
    //Left
    //Up
    //Down
}

//Walktimer
if (isWalking = true)
{
    //Decay walktimer
    walkTimer -= 1;
    //Ensureing the timer doesn't go below 0
    if (walkTimer < 0){walkTimer = 0;}
    //Resetting isWalking
    if (walkTimer = 0)
    {
        isWalking = false;
    }
}
