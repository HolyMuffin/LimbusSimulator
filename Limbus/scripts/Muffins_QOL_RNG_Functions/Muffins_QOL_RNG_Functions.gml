
//returns either 0 or 1
function coin_flip() {
	return choose(0, 1);
}
//rounds up or down randomly, weighted to average out to the actual value
//for example: 4.3 would return "4" 70% of the time, and return "5" 30% of the time 
function round_weighted(num) {
	var decimal = num % 1;
	num = floor(num);
	if (random(1) <= decimal)
		num++;
	return num;
}

function choose_weighted(choices_array, weightings_array) {
	var weight_sum = 0;
	for(var i = 0; i < array_length(weightings_array); i++) {
		weight_sum += weightings_array[i];
	}
	
	var rng = random(weight_sum)
	for(var i = 0; i < array_length(weightings_array); i++) {
		rng -= weightings_array[i];
		if (rng <= 0)
			return choices_array[i];
	}
}

//equivalent of the random functions except that subsequent calls will avoid matching the previous call
//this helps more evenly spread out randomness in cases where people are subject to the gamblers fallacy
function psuedorandom(x_) {
	static rng = random(1);
	rng = (rng + random_range(0.2, 0.8)) % 1;
	return x_ * rng;
}

function ipseudorandom(x_) {
	return floor(psuedorandom(x_+0.999999999))
}

function pseudorandom_range(x1, x2) {
	return x1 + psuedorandom(x2 - x1);
}

function ipseudorandom_range(x1, x2) {
	return x1 + ipseudorandom(x2 - x1);
}