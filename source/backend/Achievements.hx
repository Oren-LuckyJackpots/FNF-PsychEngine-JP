package backend;

class Achievements {
	public static var achievementsStuff:Array<Dynamic> = [ //Name, Description, Achievement save tag, Hidden achievement
		["Freaky on a Friday Night",	"FridayのNightにFunkin'した。",						'friday_night_play',	 true],
		["She Calls Me Daddy Too",		"Week 1をフルコンボ！",                				'week1_nomiss',			false],
		["No More Tricks",				"Week 2をフルコンボ！",                				'week2_nomiss',			false],
		["Call Me The Hitman",			"Week 3をフルコンボ！",                				'week3_nomiss',			false],
		["Lady Killer",					"Week 4をフルコンボ！",                				'week4_nomiss',			false],
		["Missless Christmas",			"Week 5をフルコンボ！",                				'week5_nomiss',			false],
		["Highscore!!",					"Week 6をフルコンボ！",                				'week6_nomiss',			false],
		["God Effing Damn It!",			"Week 7をフルコンボ！",                				'week7_nomiss',			false],
		["What a Funkin' Disaster!",	"20%以下の精度で曲をクリアする。",                 	'ur_bad',				false],
		["Perfectionist",				"全てSick!!の状態で曲をクリアする。",   			'ur_good',				false],
		["Roadkill Enthusiast",			"Henchmenを50体ほど倒す。",             			'roadkill_enthusiast',	false],
		["Oversinging Much...?",		"プレイ中にノーツを押したままにして10秒が経過した。", 'oversinging',			false],
		["Hyperactive",					"動いている状態で曲をクリアする。",    				'hype',					false],
		["Just the Two of Us",			"2つのキーを押したまま曲をクリアする。",   			'two_keys',				false],
		["Toaster Gamer",				"トースターのように低スペックなPCでFunkin'しましたね！？",'toastie',				false],
		["Debugger",					"CHART EDITORから隠し曲「Test」をクリアする。",     	'debugger',				 true]
	];
	public static var achievementsMap:Map<String, Bool> = new Map<String, Bool>();

	public static var henchmenDeath:Int = 0;
	public static function unlockAchievement(name:String):Void {
		FlxG.log.add('実績解除！ "' + name +'"');
		achievementsMap.set(name, true);
		FlxG.sound.play(Paths.sound('confirmMenu'), 0.7);
	}

	public static function isAchievementUnlocked(name:String) {
		if(achievementsMap.exists(name) && achievementsMap.get(name)) {
			return true;
		}
		return false;
	}

	public static function getAchievementIndex(name:String) {
		for (i in 0...achievementsStuff.length) {
			if(achievementsStuff[i][2] == name) {
				return i;
			}
		}
		return -1;
	}

	public static function loadAchievements():Void {
		if(FlxG.save.data != null) {
			if(FlxG.save.data.achievementsMap != null) {
				achievementsMap = FlxG.save.data.achievementsMap;
			}
			if(henchmenDeath == 0 && FlxG.save.data.henchmenDeath != null) {
				henchmenDeath = FlxG.save.data.henchmenDeath;
			}
		}
	}
}