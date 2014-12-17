///Zombie AI

if (instance_exists(obj_Controller_PauseMenu))
{
    if (global.pause = true){image_speed = 0; exit;}
}

//Depth correctin
depth = y * -1;

///Wandering around
if (lockedOn = false){
    if (isWalking = false){
        //Choose direction
        moveDirection = choose(0,1,2,3); // 0 = right 1 = left 2 = up 3 = down
        
        //Right
        if (moveDirection = 0){
            //If there isn't a collision
            if (!collision_line(x,y,x+moveLength,y,obj_Collision,false,true)){
                //Disable walking
                isWalking = true;
                
                //Set sprite
                image_speed = imgSpeed;
                if (tag = 1){sprite_index = spr_Zombie1_Right;}
                if (tag = 2){sprite_index = spr_Zombie2_Right;}
                if (tag = 3){sprite_index = spr_Zombie3_Right;}
                if (tag = 4){sprite_index = spr_Zombie4_Right;}
                if (tag = 5){sprite_index = spr_Zombie5_Right;}
                if (tag = 6){sprite_index = spr_Zombie6_Right;}
                if (tag = 7){sprite_index = spr_Zombie7_Right;}
                if (tag = 8){sprite_index = spr_Zombie8_Right;}
                
                //Setting x and y the object is moving towards
                towardsX = x + moveLength;
                towardsY = y;
                    
                //Setting hSpeed & vSpeed
                hSpeed = moveSpeed;
                vSpeed = 0;
            }
        }
            
        //Left
        if (moveDirection = 1){
            //If there isn't a collision            
            if (!collision_line(x,y,x-moveLength,y,obj_Collision,false,true)){
                //Disable walking
                isWalking = true;
                
                //Set sprite
                image_speed = imgSpeed;
                if (tag = 1){sprite_index = spr_Zombie1_Left;}
                if (tag = 2){sprite_index = spr_Zombie2_Left;}
                if (tag = 3){sprite_index = spr_Zombie3_Left;}
                if (tag = 4){sprite_index = spr_Zombie4_Left;}
                if (tag = 5){sprite_index = spr_Zombie5_Left;}
                if (tag = 6){sprite_index = spr_Zombie6_Left;}
                if (tag = 7){sprite_index = spr_Zombie7_Left;}
                if (tag = 8){sprite_index = spr_Zombie8_Left;}
                
                //Setting x and y the object is moving towards
                towardsX = x - moveLength;
                towardsY = y;
                    
                //Setting hSpeed & vSpeed
                hSpeed = -moveSpeed;
                vSpeed = 0;
            }
        }
            
        //Up
        if (moveDirection = 2){
            //If there isn't a collision
            if (!collision_line(x,y,x,y-moveLength,obj_Collision,false,true)){
                //Disable walking
                isWalking = true;
                    
                //Set sprite
                image_speed = imgSpeed;
                if (tag = 1){sprite_index = spr_Zombie1_Up;}
                if (tag = 2){sprite_index = spr_Zombie2_Up;}
                if (tag = 3){sprite_index = spr_Zombie3_Up;}
                if (tag = 4){sprite_index = spr_Zombie4_Up;}
                if (tag = 5){sprite_index = spr_Zombie5_Up;}
                if (tag = 6){sprite_index = spr_Zombie6_Up;}
                if (tag = 7){sprite_index = spr_Zombie7_Up;}
                if (tag = 8){sprite_index = spr_Zombie8_Up;}
                
                //Setting x and y the object is moving towards
                towardsX = x;
                towardsY = y - moveLength;
                    
                //Setting hSpeed & vSpeed
                hSpeed = 0;
                vSpeed = -moveSpeed;
            }
        }
        //Down
        if (moveDirection = 3){
            //If there isn't a collision
            if (!collision_line(x,y,x,y+moveLength,obj_Collision,false,true)){
                //Disable walking
                isWalking = true;
                
                //Set sprite
                image_speed = imgSpeed;
                if (tag = 1){sprite_index = spr_Zombie1_Down;}
                if (tag = 2){sprite_index = spr_Zombie2_Down;}
                if (tag = 3){sprite_index = spr_Zombie3_Down;}
                if (tag = 4){sprite_index = spr_Zombie4_Down;}
                if (tag = 5){sprite_index = spr_Zombie5_Down;}
                if (tag = 6){sprite_index = spr_Zombie6_Down;}
                if (tag = 7){sprite_index = spr_Zombie7_Down;}
                if (tag = 8){sprite_index = spr_Zombie8_Down;}
                
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
    if (x = towardsX && y = towardsY){
        hSpeed = 0;
        vSpeed = 0;
        if (walkCooldown = 0){walkCooldown = 2 * room_speed;}
    }
        
    //Walk cooldown
    if (walkCooldown > 0){walkCooldown -= 1; image_speed = 0; image_index = 1;}
    if (walkCooldown = 1){isWalking = false;}
    if (walkCooldown = 0){image_speed = imgSpeed;}
}

if (instance_exists(obj_Player)){
    ///Player tracking
    if (!collision_line(x,y,obj_Player.x,obj_Player.y,obj_Collision,false,true)){
    
        //Sneaking
        if (global.keySneak = 1) {
            trackRange = 50;
        } else {
            trackRange = 200;
        }
        //Tracking
        if (distance_to_object(obj_Player) < trackRange) {
                lockedOn = true;
        }
    }
    
    if (lockedOn = true){ 
        //Moving on to player
        if (distance_to_object(obj_Player) < trackRange && distance_to_object(obj_Player) > hitRange){
            //Lockedon
            lockedOn = true
            
            //Stopping zombie
            hSpeed = 0;
            vSpeed = 0;
            image_speed = 0;
            
            //Moving to player
            if (!collision_line(x,y,obj_Player.x,obj_Player.y,obj_Collision,false,true)){
                //Towards player.x
                if (toggleCoor = 0){
                    if (x < obj_Player.x){
                        hSpeed = moveSpeed;
                        image_speed = imgSpeed;
                        if (tag = 1){sprite_index = spr_Zombie1_Right;}
                        if (tag = 2){sprite_index = spr_Zombie2_Right;}
                        if (tag = 3){sprite_index = spr_Zombie3_Right;}
                        if (tag = 4){sprite_index = spr_Zombie4_Right;}
                        if (tag = 5){sprite_index = spr_Zombie5_Right;}
                        if (tag = 6){sprite_index = spr_Zombie6_Right;}
                        if (tag = 7){sprite_index = spr_Zombie7_Right;}
                        if (tag = 8){sprite_index = spr_Zombie8_Right;}
                    }
                    if(x > obj_Player.x){
                        hSpeed = -moveSpeed;
                        image_speed = imgSpeed;
                        if (tag = 1){sprite_index = spr_Zombie1_Left;}
                        if (tag = 2){sprite_index = spr_Zombie2_Left;}
                        if (tag = 3){sprite_index = spr_Zombie3_Left;}
                        if (tag = 4){sprite_index = spr_Zombie4_Left;}
                        if (tag = 5){sprite_index = spr_Zombie5_Left;}
                        if (tag = 6){sprite_index = spr_Zombie6_Left;}
                        if (tag = 7){sprite_index = spr_Zombie7_Left;}
                        if (tag = 8){sprite_index = spr_Zombie8_Left;}
                    }
                    if (x = obj_Player.x){toggleCoor = 1;}
                }
                
                //Towards player.y
                if (toggleCoor = 1){
                    if (y < obj_Player.y){
                        vSpeed = moveSpeed;
                        image_speed = imgSpeed;
                        if (tag = 1){sprite_index = spr_Zombie1_Down;}
                        if (tag = 2){sprite_index = spr_Zombie2_Down;}
                        if (tag = 3){sprite_index = spr_Zombie3_Down;}
                        if (tag = 4){sprite_index = spr_Zombie4_Down;}
                        if (tag = 5){sprite_index = spr_Zombie5_Down;}
                        if (tag = 6){sprite_index = spr_Zombie6_Down;}
                        if (tag = 7){sprite_index = spr_Zombie7_Down;}
                        if (tag = 8){sprite_index = spr_Zombie8_Down;}
                    }
                    if (y > obj_Player.y){
                        vSpeed = -moveSpeed;
                        image_speed = imgSpeed;
                        if (tag = 1){sprite_index = spr_Zombie1_Up;}
                        if (tag = 2){sprite_index = spr_Zombie2_Up;}
                        if (tag = 3){sprite_index = spr_Zombie3_Up;}
                        if (tag = 4){sprite_index = spr_Zombie4_Up;}
                        if (tag = 5){sprite_index = spr_Zombie5_Up;}
                        if (tag = 6){sprite_index = spr_Zombie6_Up;}
                        if (tag = 7){sprite_index = spr_Zombie7_Up;}
                        if (tag = 8){sprite_index = spr_Zombie8_Up;}
                    }
                    if (y = obj_Player.y){toggleCoor = 0;}
                }
            }
        }
        
        //Hitting the player
        if (distance_to_object(obj_Player) < hitRange){
            hSpeed = 0;
            vSpeed = 0;
            image_speed = 0;
            image_index = 1;
            
            //Hurt Player
        }
        
        //Losing the player
        if (distance_to_object(obj_Player) > trackRange){
            lockedOn = false;
            isWalking = false;
            hSpeed = 0;
            vSpeed = 0;
        }
    }
}

//Changing x and y
x += hSpeed;
y += vSpeed;
