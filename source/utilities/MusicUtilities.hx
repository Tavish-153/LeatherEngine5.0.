package utilities;

import flixel.FlxG;

class MusicUtilities
{

    /**
    * This function returns the string path of the current music that should be played (as a replacement for the title screen music)
    */
    public static function GetTitleMusicPath():String
    {
        if (FlxG.save.data.oldTitle)
            return Paths.music('title');
        else
            if (Date.now().getDay() == 5 && Date.now().getHours() >= 18 || FlxG.save.data.nightMusic)
                return Paths.music('freakyNightMenu');
            else
                return Paths.music('freakyMenu');

        return Paths.music('freakyMenu');
    }
}