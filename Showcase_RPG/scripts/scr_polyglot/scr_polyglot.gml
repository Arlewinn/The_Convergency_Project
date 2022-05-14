/// @function str(stringKey, [data])
/// @description Polyglot helper function. 
/// Looks up the localized string value of stringKey for polyglot's current locale
/// and interpolates additional data, if available
/// @param stringKey The JSON path of the string whose localized value to fetch
/// @param data Optional struct of keys and values to interpolate into the final localized string
function str(stringKey, data = {}) {
	if (!instance_exists(obj_polyglot)) {
		instance_create_depth(0, 0, 0, obj_polyglot);
	}
	return obj_polyglot._string_lookup(stringKey, data);
}

function change_lang(lang) {
	obj_polyglot.setLocale(lang);
	if instance_exists(obj_player){
		var load_x = obj_player.x;
		var load_y = obj_player.y;
	}
	if instance_exists(obj_monster){
		obj_monster.reload = true;
		var m_load_x = obj_monster.x;
		var m_load_y = obj_monster.y;
	}
	room_goto(room);
	if instance_exists(obj_player){
		obj_player.x = load_x;
		obj_player.y = load_y;
	}
	if instance_exists(obj_monster) && obj_player.checkpoint >= 1{
		obj_monster.x = m_load_x;
		obj_monster.y = m_load_y;
		obj_monster.set_move_spd = 1;
		obj_monster.reload = false;
	}
}
