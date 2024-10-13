// Evento de colisión con o_pou_shot
if (place_meeting(x, y, o_pou_shot)) {
    // Aumentar el nivel de disparo al interactuar
    if (shot_level < 3) {
        shot_level += 1;
    }

    // Cambiar el sprite del jugador según el nivel de disparo
    switch(shot_level) {
        case 1:
            sprite_index = s_prota;  // Primer sprite
            break;
        case 2:
            sprite_index = s_prota_2;  // Segundo sprite
            break;
        case 3:
            sprite_index = s_prota_3;  // Tercer sprite
            break;
    }

    // Destruir solo el o_pou_shot que se ha tocado
    with (other) {
        instance_destroy();
    }
}
