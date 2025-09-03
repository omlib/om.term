package om.term.symbol;

/**
	[Alchemical](https://en.wikipedia.org/wiki/Alchemical_symbol)
 */
enum abstract Alchemical(String) to String {
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
