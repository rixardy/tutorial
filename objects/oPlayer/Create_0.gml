/// @description iniciando a sombra do player

ySombra = oPlayer.x + 30;
xSombra = oPlayer.y + 50;

instance_create_layer(xSombra, ySombra, "Instances", oSombraPlayer);
