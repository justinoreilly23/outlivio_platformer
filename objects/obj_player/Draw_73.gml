/// @desc Draw silhouette

/*
gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
gpu_set_fog(true, merge_color(c_black, c_blue, .5), 0, 1);
draw_self();
gpu_set_fog(false, c_white, 0, 0);
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
*/