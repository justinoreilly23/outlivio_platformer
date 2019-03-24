/// @description Draw instances
if (ds_exists(ds_depthGrid, ds_type_grid))
{
	/* ADD ALL INSTANCES TO GRID */
	
	var depthGrid = ds_depthGrid;
	var instNum = instance_number(obj_parentDepth);
	var yy = 0;
	ds_grid_resize(depthGrid, 2, instNum);
	
	with (obj_parentDepth)
	{
		// Add self to grid
		depthGrid[# 0, yy] = id;
		// Add y val to grid
		depthGrid[# 1, yy] = y;
		yy++;
	}
	
	/* SORT GRID AND DRAW ALL INSTANCES */
	
	// Sort grid by y value (lowest value first)
	ds_grid_sort(ds_depthGrid, 1, true);
	
	// Draw all of the instances in order
	
	yy = 0;
	
	repeat(instNum)
	{
		// Draw instance
		var instanceId = ds_depthGrid[# 0, yy];
		
		with (instanceId)
		{					
			draw_self();
		}	
		yy++;
	}
	
	ds_grid_clear(ds_depthGrid, 0);
}