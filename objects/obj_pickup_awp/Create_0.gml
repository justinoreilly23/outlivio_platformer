event_inherited();

weaponAttribute[WEAPON_ATTR.firingDelay] = 0 // firingDelay
weaponAttribute[WEAPON_ATTR.firingDelayDefault] = 150; // firingDelayDefault
weaponAttribute[WEAPON_ATTR.recoil] = 15; // recoil

weaponAttribute[WEAPON_ATTR.xOffset] = 5; // xOffset
weaponAttribute[WEAPON_ATTR.yOffset] = -2; // yOffset

weaponAttribute[WEAPON_ATTR.triggerHandX] = x + 9;
weaponAttribute[WEAPON_ATTR.triggerHandY] = y + 4;
weaponAttribute[WEAPON_ATTR.gripHandX] = x + 49;
weaponAttribute[WEAPON_ATTR.gripHandY] = y + 4;
weaponAttribute[WEAPON_ATTR.gripHandType] = HAND_TYPE.supporting;

weaponAttribute[WEAPON_ATTR.ammoType] = BULLET_TYPE.large; //ammoType
weaponAttribute[WEAPON_ATTR.ammoStart] = 4; // ammoStart
weaponAttribute[WEAPON_ATTR.ammoInGun] = 4; // ammoInGun
weaponAttribute[WEAPON_ATTR.maxAmmoInMag] = 5; // maxAmmoInMag
weaponAttribute[WEAPON_ATTR.minBulletDamage] = 63; // minBulletDamage
weaponAttribute[WEAPON_ATTR.maxBulletDamage] = 98; // maxBulletDamage

weaponAttribute[WEAPON_ATTR.sprayLow] = -2; // sprayLow
weaponAttribute[WEAPON_ATTR.sprayHigh] = 2; // sprayHigh

weaponAttribute[WEAPON_ATTR.ssMagnitude] = 8; // ssMagnitude
weaponAttribute[WEAPON_ATTR.ssFrames] = 45; // ssFrames

weaponAttribute[WEAPON_ATTR.sndShoot] = snd_gunshot_awp; // sndShoot
weaponAttribute[WEAPON_ATTR.sndCharge] = snd_boltcycle; // sndCharge