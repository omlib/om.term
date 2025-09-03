package om.term.symbol;

/*
	_FALLBACKS = {
	'info': '¡',
	'success': 'v',
	'warning': '!!',
	'error': '×'
 */
/***/
enum abstract Symbol(String) to String {
	var tick = "✔";
	var cross = "✖";
	var star = "★";
	var square = "▇";
	var squareSmall = "◻";
	var squareSmallFilled = "◼";
	var play = "▶";
	var circle = "◯";
	var circleFilled = "◉";
	var circleDotted = "◌";
	var circleDouble = "◎";
	var circleCircle = "ⓞ";
	var circleCross = "ⓧ";
	var circlePipe = "Ⓘ";
	var bullet = "●";
	var dot = "․";
	var line = "─";
	var ellipsis = "…";
	var pointer = "❯";
	var pointerSmall = "›";
	var info = "ℹ";
	var warning = "⚠";
	var hamburger = "☰";
	var smiley = "㋡";
	var mustache = "෴";
	var heart = "♥";
	var arrowUp = "↑";
	var arrowDown = "↓";
	var arrowLeft = "←";
	var arrowRight = "→";
	var radioOn = "◉";
	var radioOff = "◯";
	var checkboxOn = "☒";
	var checkboxOff = "☐";
	var checkboxCircleOn = "ⓧ";
	var checkboxCircleOff = "Ⓘ";
	var questionMarkPrefix = "？";
	var oneHalf = "½";
	var oneThird = "⅓";
	var oneQuarter = "¼";
	var oneFifth = "⅕";
	var oneSixth = "⅙";
	var oneSeventh = "⅐";
	var oneEighth = "⅛";
	var oneNinth = "⅑";
	var oneTenth = "⅒";
	var twoThirds = "⅔";
	var twoFifths = "⅖";
	var threeQuarters = "¾";
	var threeFifths = "⅗";
	var threeEighths = "⅜";
	var fourFifths = "⅘";
	var fiveSixths = "⅚";
	var fiveEighths = "⅝";
	var sevenEighths = "⅞";

	var INFO = info;
	var SUCCESS = tick;
	var WARNING = warning;
	var ERROR = cross;
}
