/// @description Insert description here
// You can write your code in this editor
var enemy = instance_create_layer(x + sprite_width/2, y + floor(sprite_height * .45), "enemies", oEnemy3);
enemy.healthPoints = enemy.healthPoints + oGameController.curRound;
enemyCounter ++;
if(enemyCounter < enemyCount){
	alarm[2] = room_speed * 2;
} else if(waveCounter < waves) { 
	enemyCounter = 0;
	waveCounter ++;
	alarm[2] = room_speed * 4;
} else {
	enemyCounter = 0;
	waveCounter = 0;
	state = "Final Wave";
}