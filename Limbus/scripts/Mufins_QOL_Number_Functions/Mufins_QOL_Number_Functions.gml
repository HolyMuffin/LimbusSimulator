function floor_but_not_stupid(num) {
	if(num == ceil(num))
		return ceil(num);
	return floor(num);
}

function ceil_but_not_stupid(num) {
	if(num == floor(num))
	return floor(num);
	return ceil(num);
}

//move num1 towards num2 by spd
function approach(num1, num2, spd) {
	if (num1 < num2)
		return min(num1 + spd, num2);
	else
		return max(num1 - spd, num2);
}

//draws a number using sprites
function draw_number(x_, y_, num) {
	var digits = digit_count(num);
	var num_width = sprite_get_width(Muffins_Numbers_Sprites);
	var total_width = digits * num_width;
	x_ -= floor(total_width/2);
	for(var i = 1; i <= digits; i++) {
		var current_digit = number_get_digit(num, i);
		draw_sprite(Muffins_Numbers_Sprites, current_digit, x_ + num_width * (digits - i), y_);
	}
}

//pass in a number, return how many digits it has (ex: 41356 has 5 digits). ignores decimals
function digit_count(num) {
	if (num == 0)
		return 1;
	return floor(log10(num))+1;
}

//pass in a number, return the specified digit of that number
function number_get_digit(number, digit) {
	return floor(number / power(10, digit-1)) % 10;
}
//splits a number into an array that sums to that number
function random_split_number(num, part_count) {
	var sum = 0;
	var array = array_create(part_count);

	for(var i = 0; i < part_count; i++) {
		var rng = random(num);
		sum += rng;
		array[i] = rng;
	}
	
	if (sum == 0)
		return array;
	
	for(var i = 0; i < part_count; i++) {
		array[i] = num*array[i]/sum;
	}
	return array;
}
//pass in a number, return it as a string with commas
function number_add_commas(number) {
	var output = "";
	while (number >= 1000) {
		var current_set = number % 1000;
		output = string(current_set) + output;
		if (current_set < 100)
			output = "0" + output;
		if (current_set < 10)
			output = "0" + output;
			output = "," + output;
		number = number div 1000;
	}
	return string(number) + output;
}
//pass in a number, return its roman numeral equivalent as a string
function number_to_roman_numeral(num) {
	global.numerals = ["I", "V", "X", "L", "C", "D", "M"];
	if (num >= 4000) {
		show_message("Error: number is too big. this function only handles numbers below 4000")
		return "Error";
	}
	
	var digits = digit_count(num);
	var result = "";
	for(var i = 0; i < digits; i++) {
		var current_result = "";
		var current_digit = num % 10;
		//add the 1s
		if (current_digit % 5 < 5) {
			var one_count = (current_digit%5-1)%3+1;
			var one_letter = global.numerals[i*2]
			repeat(one_count)
				current_result = current_result + one_letter;
		}
		//add the 5 or 10
		if (current_digit >= 4) {
			var five_count = (current_digit+1) div 5;
			var added_letter = global.numerals[i*2+five_count];
			if (current_digit % 5 == 4)
				current_result = current_result + added_letter;
			else
				current_result = added_letter + current_result;
		}
		result = current_result + result;
		num = floor(num/10);
	}
	return result;
}