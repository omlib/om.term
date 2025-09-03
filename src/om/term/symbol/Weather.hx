package om.term.symbol;

/**
	[Weather symbols](https://en.wikipedia.org/wiki/Weather_symbol)
 */
enum abstract Weather(String) to String {
	var sun = "☀";
	var cloud = "☁";
	var umbrella = "☂";
	var snowman = "☃";
	var lightning = "⚡";
	var sunBehindCloud = "⛅";
	var sunBehindSmallCloud = "🌤";
	var sunBehindCloudWithRain = "🌦";
	var cloudWithRain = "🌧";
	var cloudWithSnow = "🌨";
	var cloudWithLightning = "🌩";
	var tornado = "🌪";
	var fog = "🌫";
	var wind = "🌬";
	var snowflake = "❄";
	var comet = "☄";
}
