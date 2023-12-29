package options;

class PEJPSettings extends BaseOptionsMenu
{
	public function new()
	{
		title = 'PE-JP Settings';
		rpcTitle = 'PE-JPオリジナル設定'; //for Discord Rich Presence

        var option:Option = new Option('互換モード',
        'Modを導入した環境でHudがうまく表示されない場合、\nこのオプションをONにすると改善する場合があります。',
        'gokan',
        'bool');
        addOption(option);

		//I'd suggest using "Downscroll" as an example for making your own option since it is the simplest here
		var option:Option = new Option('完全日本語モード', //Name
			'アセットが日本ご使用のものになります。', //Description
			'alljapanese', //Save data variable name
			'bool'); //Variable type
		addOption(option);

		var option:Option = new Option('for engier',
			'日本語を勉強したい外国人向け\nLets learn Japanese!',
			'jpforengier',
			'bool');
		addOption(option);

        var option:Option = new Option('Japanese Mode',
        'VS Giraffeなどの日本語ダイアログを実装したModで\n日本語ダイアログを表示するようにします。',
        'jpmode',
        'bool');
        addOption(option);

		super();
	}
}