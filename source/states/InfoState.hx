package states;

import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;
import flixel.group.FlxGroup;
import flixel.graphics.FlxGraphic;

import states.MainMenuState;
import states.TitleState;
import openfl.utils.Assets;

class InfoState extends MusicBeatState
{
	public static var updateVersion:String = CoolUtil.checkForUpdates();
	// var leftState:Bool = false;
	// var okText:Alphabet;
	// var bg:FlxSprite;
	// var warnText:FlxText;
	// var subversionpath:String = "assets/embed/EngineData/subversion.txt";
    // var bferpath:String = "embed/EngineData/bfer.txt";

    var subversion:String;
    var bfer:String;
    var majorfeat:String;

	override function create()
	{
		super.create();
		subversion = 'Beta';
        bfer = 'FNF - ATFS Engine 0.1.2';
        majorfeat = 'Nothing yet!';

			persistentUpdate = false;
			MusicBeatState.switchState(new states.ErrorInfoState('ATFS Engine Info\n
			Engine Version: ${MainMenuState.psychEngineVersion}\n
			Latest Version Available: ${updateVersion}\n
			Subversion: ${subversion}.\n
			Built For: ${bfer}\n
			Has major features: ${majorfeat}\n
			-----------------------------------------------\n
			Thank you for using the Engine!\n
			-Zefer Xp',
				// function() CoolUtil.browserLoad("https://github.com/ZeferXp/FNF-AtfsEngine/"),
				function() MusicBeatState.switchState(new states.MainMenuState())));
			return;
	}
}