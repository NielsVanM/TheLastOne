//Load variablse
if (file_exists('saveGame.ini')){
    //Open file
    ini_open('saveGame.ini');    
    //Load Variables into game
    //Load room
    var loadedRoom = ini_read_real('Room','Room',rm_MainWorld_New);
    room_goto(rm_MainWorld_New);
    //Load player data
    obj_Player.x = ini_read_real('Player','X',448);
    obj_Player.y = ini_read_real('Player','Y',384);
    obj_Player.pHealth = ini_read_real('Player','Health',100);
    obj_Player.pWater = ini_read_real('Player','Water',100);
    obj_Player.pFood = ini_read_real('Player','Food',100);
    obj_Player.pStamina = ini_read_real('Player','Stamina',100);
    //Load inventory
    obj_Player.invAmount[0,1] = ini_read_real('Inventory','Oranges',0);
    obj_Player.invAmount[0,2] = ini_read_real('Inventory','Bread',0);
    obj_Player.invAmount[0,3] = ini_read_real('Inventory','Berries',0);
    obj_Player.invAmount[0,4] = ini_read_real('Inventory','Apples',0);
    obj_Player.invAmount[1,1] = ini_read_real('Inventory','Empty Bottles',0);
    obj_Player.invAmount[1,2] = ini_read_real('Inventory','Full Bottles',0);
    obj_Player.invAmount[2,1] = ini_read_real('Inventory','Grenades',0);
    obj_Player.invAmount[2,2] = ini_read_real('Inventory','Landmines',0);
    obj_Player.invAmount[2,3] = ini_read_real('Inventory','Batteries',0);
    //Load guns
    obj_Player.gun[1,5] = ini_read_real('GunAmmo','Handgun Magazine',0);
    obj_Player.gun[1,6] = ini_read_real('GunAmmo','Handgun Total',0);
    obj_Player.gun[5,1] = ini_read_real('GunAmmo','Handgun Unlocked',false);
    obj_Player.gun[2,5] = ini_read_real('GunAmmo','Shotgun Magazine',0);
    obj_Player.gun[2,6] = ini_read_real('GunAmmo','Shotgun Total',0);
    obj_Player.gun[6,1] = ini_read_real('GunAmmo','Shotgun Unlocked',false);
    obj_Player.gun[3,5] = ini_read_real('GunAmmo','AK47 Magazine',0);
    obj_Player.gun[3,6] = ini_read_real('GunAmmo','AK47 Total',0);
    obj_Player.gun[7,1] = ini_read_real('GunAmmo','AK47 Unlocked',false);
    obj_Player.gun[4,5] = ini_read_real('GunAmmo','Machine Gun Magazine',0);
    obj_Player.gun[4,6] = ini_read_real('GunAmmo','Machine Gun Total',0);
    obj_Player.gun[8,1] = ini_read_real('GunAmmo','Machine Gun Unlocked',false);
    //Load melee
    obj_Player.melee[1,1] = ini_read_real('Melee','Axe Unlocked',false);
    obj_Player.melee[2,1] = ini_read_real('Melee','Axe Unlocked',false);
    //Load kills
    obj_Player.kills = ini_read_real('Points','Kills',0);
    
    //Close file
    ini_close();
}
