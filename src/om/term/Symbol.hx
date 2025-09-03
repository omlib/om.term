package om.term;

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

/**
	[Alchemical](https://en.wikipedia.org/wiki/Alchemical_symbol)
 */
enum abstract AlchemicalSymbol(String) to String {
	// Three primes
	var mercury = "☿";
	var salt = "🜔";
	var sulfur = "🜍";

	// Four basic elements
	var air = "🜁";
	var fire = "🜂";
	var earth = "🜃";
	var water = "🜄";

	var aether = "🜀";

	// Seven planetary metals
	var lead = "♄"; // Saturn
	var tin = "♃"; // Jupiter
	var iron = "♂"; // Mars
	var gold = "☉"; // Sun
	var copper = "♀"; // Venus
	var silver = "☽"; // Moon

	// mercury is ☿ (Mercury)
	// Mundane elements
	var antimony = "♁";
	var arsenic = "🜺";
	var bismuth = "🜘";
	var magnesium = "⊛";

	// Alchemical compounds
	var salAmmoniac = "🜹";
	var aquaFortis = "🜅";
	var aquaRegia = "🜆";
	var cinnabar = "🜓";
	var vitriol = "🜖";

	// Alchemical processes
	var sublimation = "🝀"; // or distillation
	var separation = "🝂";
	var solution = "🝆";
	var amalgamation = "🝛";
	var conjunction = "⚯";
	var digestion = "🝩";

	// Units
	var hour = "🝮";
	var dram = "ʒ";
	var ounce = "℥";
	var scruple = "℈";
	var pound = "℔";
	var dayNight = "🝰";
	var month = "🝱";
}

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

/**
	[Braille patterns](https://en.wikipedia.org/wiki/Braille_Patterns)
 */
enum abstract Braille(String) to String {
	var spinner1 = "⠋";
	var spinner2 = "⠙";
	var spinner3 = "⠹";
	var spinner4 = "⠸";
	var spinner5 = "⠼";
	var spinner6 = "⠴";
	var spinner7 = "⠦";
	var spinner8 = "⠧";
	var spinner9 = "⠇";
	var spinner10 = "⠏";

	var dots1 = "⡀";
	var dots2 = "⡄";
	var dots3 = "⡆";
	var dots4 = "⡇";
	var dots5 = "⡏";
	var dots6 = "⡟";
	var dots7 = "⡿";
	var dots8 = "⣿";
}

/**
	Card suits
 */
enum abstract CartSuit(String) to String {
	var spades = "♠";
	var hearts = "♡";
	var diamonds = "♢";
	var clubs = "♣";
}

/**
	Chess pieces
 */
enum abstract Chess(String) to String {
	var whiteKing = "♔";
	var whiteQueen = "♕";
	var whiteRook = "♖";
	var whiteBishop = "♗";
	var whiteKnight = "♘";
	var whitePawn = "♙";
	var blackKing = "♚";
	var blackQueen = "♛";
	var blackRook = "♜";
	var blackBishop = "♝";
	var blackKnight = "♞";
	var blackPawn = "♟";
}

/**
	Dice
 */
enum abstract Dice(String) to String {
	var one = "⚀";
	var two = "⚁";
	var three = "⚂";
	var four = "⚃";
	var five = "⚄";
	var six = "⚅";
}

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

