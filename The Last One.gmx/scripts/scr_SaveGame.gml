//Delete file if it exists
if (file_exists('saveGame.ini')){file_delete('saveGame.ini');}

//Open/create file
ini_open('saveGame.ini');

//Writing variables
//Room
savedRoom = room
ini_write_string('Game','Room',string(savedRoom));
//Player variables
ini_write_real('Player','X',obj_Player.x);
ini_write_real('Player','Y',obj_Player.y);
ini_write_real('Player','Health',obj_Player.pHealth);
ini_write_real('Player','Water',obj_Player.pWater);
ini_write_real('Player','Food',obj_Player.pFood);
ini_write_real('Player','Stamina',obj_Player.pStamina);
//Save Inventory
ini_write_real('Inventory','Oranges',obj_Player.invAmount[0,1]);
ini_write_real('Inventory','Bread',obj_Player.invAmount[0,2]);
ini_write_real('Inventory','Berries',obj_Player.invAmount[0,3]);
ini_write_real('Inventory','Apples',obj_Player.invAmount[0,4]);
ini_write_real('Inventory','Empty Bottles',obj_Player.invAmount[1,1]);
ini_write_real('Inventory','Full Bottles',obj_Player.invAmount[1,2]);
ini_write_real('Inventory','Grenades',obj_Player.invAmount[2,1]);
ini_write_real('Inventory','Landmines',obj_Player.invAmount[2,2]);
ini_write_real('Inventory','Batteries',obj_Player.invAmount[2,3]);
//Save Guns
ini_write_real('GunAmmo','Handgun Magazine',obj_Player.gun[1,5]);
ini_write_real('GunAmmo','Handgun Total',obj_Player.gun[1,6]);
ini_write_real('GunAmmo','Handgun Unlocked',obj_Player.gun[5,1]);
ini_write_real('GunAmmo','Shotgun Magazine',obj_Player.gun[2,5]);
ini_write_real('GunAmmo','Shotgun Total',obj_Player.gun[2,6]);
ini_write_real('GunAmmo','Shotgun Unlocked',obj_Player.gun[6,1]);
ini_write_real('GunAmmo','AK47 Magazine',obj_Player.gun[3,5]);
ini_write_real('GunAmmo','AK47 Total',obj_Player.gun[3,6]);
ini_write_real('GunAmmo','AK47 Unlocked',obj_Player.gun[7,1]);
ini_write_real('GunAmmo','Machine Gun Magazine',obj_Player.gun[4,5]);
ini_write_real('GunAmmo','Machine Gun Total',obj_Player.gun[4,6]);
ini_write_real('GunAmmo','Machine Gun Unlocked',obj_Player.gun[8,1]);
//Save melee
ini_write_real('Melee','Axe Unlocked',obj_Player.melee[1,1]);
ini_write_real('Melee','Crowbar Unlocked',obj_Player.melee[2,1]);
//Save points
ini_write_real('Points','Kills',obj_Player.kills);


//Close file
ini_close();
