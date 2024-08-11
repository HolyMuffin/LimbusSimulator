#macro empty -69

//returns a random value from the array
function array_get_random(array) {
	return array[irandom(array_length(array)-1)];
}
//finds and removes specified value from an array
function array_delete_value(array, value) {
	var index = array_get_index(array, value);
	if (index == -1)
		return;
	array_delete(array, index, 1);
}
//assuming array is sorted, this function finds the right location to insert a value you specify and does so
function array_insert_sorted(array, value) {
	var min_ = -1;
	var max_ = array_length(array);
	if (max_ == 0) {
		array[0] = value;
		return 0;
	}
	while(max_-min_ != 1) {
		var index = (min_+max_) div 2;
		if (value > array[index])
			min_ = index;
		else
			max_ = index;
	}
	array_insert(array, max_, value);
	return max_;
}
//array resize but u specify what value it fills with if it grows
function array_resize_to_value(array, new_size, value) {
	var old_size = array_length(array);
	array_resize(array, new_size);
	if (new_size > old_size) {
		for(var i = old_size; i < new_size; i++) {
			array[i] = value;
		}
	}
}