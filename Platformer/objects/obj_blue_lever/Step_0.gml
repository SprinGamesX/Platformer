if (activated){
	if (image_index < 4) image_index++;
}
else {
	if (image_index > 3 and image_index < 9) image_index++;
	else if (image_index == 9) image_index = 0;
}