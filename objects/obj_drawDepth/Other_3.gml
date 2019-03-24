/// @description Destroy ds_depthGrid
if (ds_exists(ds_depthGrid, ds_type_grid)) ds_grid_destroy(ds_depthGrid);