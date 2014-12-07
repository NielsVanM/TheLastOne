//If file exist open it
if (file_exists('settings.ini'))
{
    ini_open('settings.ini');
    
    //Read variables
    global.music = ini_read_real('Prefs','Music',1);
    global.sound = ini_read_real('Prefs','Sound',1);
    global.particles = ini_read_real('Prefs','Particles',1);
    
    //Closing file
    ini_close();
}
