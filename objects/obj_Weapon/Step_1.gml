for (var i = totalEnumElements - 1; i > -1; i--;)
{
	weaponAttribute[i] = -1;
}

if ((firingDelay < 0) && (ammoInGun > 0)) canShoot = true; else canShoot = false;