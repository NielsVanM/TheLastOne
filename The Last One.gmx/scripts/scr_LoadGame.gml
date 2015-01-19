//Load variablse
if (file_exists('game.ini')){
    //Open file
    ini_open('game.ini');
    
    //Load Variables into game
    //Load room
    room_goto(ini_read_real('Room','Room','rm_MainWorld_New'));
    //Load player data
    obj_Player.x = ini_read_real('Player','X',448);
    obj_Player.y = ini_read_real('Player','Y',384);
    obj_Player.pHealth = ini_read_real('Player','Health',100);
    obj_Player.pWater = ini_read_real('Player','Water',100);
    obj_Player.pFood = ini_read_real('Player','Food',100);
    obj_Player.pStamina = ini_read_real('Player','Stamina',100);
    //Load inventory
    obj_Player.invAmount[0,1] = ini_read_real('Inventory','Oranges','0');
    obj_Player.invAmount[0,2] = ini_read_real('Inventory','Bread','0');
    obj_Player.invAmount[0,3] = ini_read_real('Inventory','Berries','0');
    obj_Player.invAmount[0,4] = ini_read_real('Inventory','Apples','0');
    obj_Player.invAmount[1,1] = ini_read_real('Inventory','Empty Bottles','0');
    obj_Player.invAmount[1,2] = ini_read_real('Inventory','Full Bottles','0');
    obj_Player.invAmount[2,1] = ini_read_real('Inventory','Grenades','0');
    obj_Player.invAmount[2,2] = ini_read_real('Inventory','Landmines','0');
    obj_Player.invAmount[2,3] = ini_read_real('Inventory','Batteries','0');
    //Load guns
}
