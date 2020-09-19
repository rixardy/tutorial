/// @description lógica do player 

var _esquerda = keyboard_check(vk_left);
var _direita = keyboard_check(vk_right);
var _cima = keyboard_check(vk_up);
var _baixo = keyboard_check(vk_down);

if (_esquerda) {
	x -= 3;
	image_index = 0;
	oSombraPlayer.image_index = 0;
	oSombraPlayer.x = oPlayer.x + 30; 
}

if (_direita) {
	x += 3;
	image_index = 2;
	oSombraPlayer.image_index = 2;
	oSombraPlayer.x = oPlayer.x + 30;
}

if (_cima) {
	y -= 3;
	image_index = 1;
	oSombraPlayer.image_index = 1;
	oSombraPlayer.y = oPlayer.y + 50;
}

if (_baixo) {
	y += 3;
	image_index = 1;
	oSombraPlayer.image_index = 1;
	oSombraPlayer.y = oPlayer.y + 50;
}

if (!_cima and !_baixo and !_direita and !_esquerda) {
	image_index = 1;
	oSombraPlayer.image_index = 1;
}

x = clamp(x, 25, room_width-25);
y = clamp(y, 32, room_height-32);

if (keyboard_check_pressed(vk_escape)){
	game_end();
}