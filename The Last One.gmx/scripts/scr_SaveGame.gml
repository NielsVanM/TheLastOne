//Delete file if it exists
if (file_exists('game.ini')){file_delete('game.ini');}

//Open/create file
ini_open('game.ini');

//Writing variables
ini_write_real('Player','X',obj_Player.x);
ini_write_real('Player','Y',obj_Player.y);

//Close file
ini_close();
