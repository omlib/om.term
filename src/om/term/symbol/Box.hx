package om.term.symbol;

/**
	[Box drawing characters](https://en.wikipedia.org/wiki/Box-drawing_character)
 */
enum abstract Box(String) to String {
	var lightHorizontal = "─";
	var lightVertical = "│";
	var lightDownAndRight = "┌";
	var lightDownAndLeft = "┐";
	var lightUpAndRight = "└";
	var lightUpAndLeft = "┘";
	var lightVerticalAndRight = "├";
	var lightVerticalAndLeft = "┤";
	var lightDownAndHorizontal = "┬";
	var lightUpAndHorizontal = "┴";
	var lightVerticalAndHorizontal = "┼";

	var heavyHorizontal = "━";
	var heavyVertical = "┃";
	var heavyDownAndRight = "┏";
	var heavyDownAndLeft = "┓";
	var heavyUpAndRight = "┗";
	var heavyUpAndLeft = "┛";
	var heavyVerticalAndRight = "┣";
	var heavyVerticalAndLeft = "┫";
	var heavyDownAndHorizontal = "┳";
	var heavyUpAndHorizontal = "┻";
	var heavyVerticalAndHorizontal = "╋";

	var doubleHorizontal = "═";
	var doubleVertical = "║";
	var doubleDownAndRight = "╔";
	var doubleDownAndLeft = "╗";
	var doubleUpAndRight = "╚";
	var doubleUpAndLeft = "╝";
	var doubleVerticalAndRight = "╠";
	var doubleVerticalAndLeft = "╣";
	var doubleDownAndHorizontal = "╦";
	var doubleUpAndHorizontal = "╩";
	var doubleVerticalAndHorizontal = "╬";
}
