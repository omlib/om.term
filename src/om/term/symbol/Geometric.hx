package om.term.symbol;

/**
	Geometric shapes
 */
enum abstract Geometric(String) to String {
	var triangleUp = "▲";
	var triangleDown = "▼";
	var triangleLeft = "◀";
	var triangleRight = "▶";
	var triangleUpSmall = "▴";
	var triangleDownSmall = "▾";
	var triangleLeftSmall = "◂";
	var triangleRightSmall = "▸";

	var diamond = "◆";
	var diamondOutline = "◇";

	var lozenge = "⬧";
	var lozengeOutline = "⬨";
}
