//Delete file if it exists
if (file_exists('settings.ini')){file_delete('settings.ini');}

//Open new file/create new file
ini_open('settings.ini');

//Writing variables
ini_write_real('Prefs','Music',global.music);
ini_write_real('Prefs','Sound',global.sound);
ini_write_real('Prefs','Particles',global.particles);

//Closing file
ini_close();
