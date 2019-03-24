var ds_name = string_split(object_get_name(object_index), "_");
gunActive = asset_get_index("obj_gun_" + string(ds_name[| 2]));
gunPickup = object_index;

image_speed = 1.5;
hasOwner = false;
pickupDelay = 0;