Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = false
Config.EnableArmoryManagement     = false
Config.EnableESXIdentity          = false -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.Bases = {

  US = {

    Blip = {
      Pos     = { x = 425.130, y = -979.558, z = 30.711 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
      { name = 'WEAPON_NIGHTSTICK',       price = 0 },
      { name = 'WEAPON_FLASHLIGHT',       price = 0 },
      { name = 'WEAPON_COMBATPISTOL',     price = 0 },
      { name = 'WEAPON_ASSAULTSMG',       price = 0 },
      { name = 'WEAPON_CARBINERIFLE',     price = 0 },
      { name = 'WEAPON_PUMPSHOTGUN',      price = 0 },
      { name = 'WEAPON_HEAVYSNIPER',      price = 0 },
      { name = 'WEAPON_FLAREGUN',         price = 0 },
      { name = 'WEAPON_BZGAS',            price = 0 },
      { name = 'WEAPON_GRENADE',          price = 0 },
      { name = 'WEAPON_STICKYBOMB',       price = 0 },
      { name = 'GADGET_PARACHUTE',        price = 0 },
    },

    AuthorizedVehicles = {
      { name = 'police',  label = 'Véhicule de patrouille 1' },
      { name = 'police2', label = 'Véhicule de patrouille 2' },
      { name = 'police3', label = 'Véhicule de patrouille 3' },
      { name = 'police4', label = 'Véhicule civil' },
      { name = 'policeb', label = 'Moto' },
      { name = 'policet', label = 'Van de transport' },
    },

    Cloakrooms = {
      { x = 452.600, y = -993.306, z = 29.750 },
    },

    Armories = {
      { x = -2349.5708007813, y = 3266.8623046875, z = 31.5},
    },

    Vehicles = {
      {
        Spawner    = { x = -2331.0358886719, y = 3263.6928710938, z = 31.827663421631},
        SpawnPoint = { x = -2323.14453125, y = 3278.7690429688, z = 32.827651977539},
        Heading    = 328.0,
      }
    },

    Aircrafts = {
      {
        Spawner    = { x = -2324.4594726563, y = 3256.177734375, z = 31.727663421631 },
        SpawnPoint = { x = -2620.2817382813, y = 3212.2275390625, z = 32.848056793213 },
        Heading    = 240.34,
      }
    },

    VehicleDeleters = {
      { x = 462.74, y = -1014.4, z = 27.065 },
      { x = 462.40, y = -1019.7, z = 27.104 },
    },

    BossActions = {
      { x = 448.417, y = -973.208, z = 29.689 }
    },

  },

  UK = {

    Blip = {
      Pos     = { x = 425.130, y = -979.558, z = 31.711 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
      { name = 'WEAPON_NIGHTSTICK',       price = 0 },
      { name = 'WEAPON_FLASHLIGHT',       price = 0 },
      { name = 'WEAPON_COMBATPISTOL',     price = 0 },
      { name = 'WEAPON_ASSAULTSMG',       price = 0 },
      { name = 'WEAPON_CARBINERIFLE',     price = 0 },
      { name = 'WEAPON_PUMPSHOTGUN',      price = 0 },
      { name = 'WEAPON_HEAVYSNIPER',      price = 0 },
      { name = 'WEAPON_FLAREGUN',         price = 0 },
      { name = 'WEAPON_BZGAS',            price = 0 },
      { name = 'WEAPON_GRENADE',          price = 0 },
      { name = 'WEAPON_STICKYBOMB',       price = 0 },
      { name = 'GADGET_PARACHUTE',        price = 0 },
    },

    AuthorizedVehicles = {
      { name = 'police',  label = 'Véhicule de patrouille 1' },
      { name = 'police2', label = 'Véhicule de patrouille 2' },
      { name = 'police3', label = 'Véhicule de patrouille 3' },
      { name = 'police4', label = 'Véhicule civil' },
      { name = 'policeb', label = 'Moto' },
      { name = 'policet', label = 'Van de transport' },
    },

    Cloakrooms = {
      { x = 452.600, y = -993.306, z = 29.750 },
    },

    Armories = {
      { x = 1717.3260498047, y = 3312.6247558594, z = 40.173473358154},
    },

    Vehicles = {
      {
        Spawner    = { x = 1731.8203125, y = 3308.8298339844, z = 40.173519897461},
        SpawnPoint = { x = 1738.28125, y = 3283.8474121094, z = 41.125179290771},
        Heading    = 196.0,
      }
    },

    Aircrafts = {
      {
        Spawner    = { x = 1723.2770996094, y = 3296.5537109375, z = 40.223471832275},        
        SpawnPoint = { x = 1646.4016113281, y = 3235.4211425781, z = 40.432434082031},
        Heading    = 105.71,
      }
    },

    VehicleDeleters = {
      { x = 462.74, y = -1014.4, z = 27.065 },
      { x = 462.40, y = -1019.7, z = 27.104 },
    },

    BossActions = {
      { x = 448.417, y = -973.208, z = 29.689 }
    },

  },

  RN = {

    Blip = {
      Pos     = { x = 425.130, y = -979.558, z = 30.711 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
      { name = 'WEAPON_NIGHTSTICK',       price = 0 },
      { name = 'WEAPON_FLASHLIGHT',       price = 0 },
      { name = 'WEAPON_COMBATPISTOL',     price = 0 },
      { name = 'WEAPON_ASSAULTSMG',       price = 0 },
      { name = 'WEAPON_CARBINERIFLE',     price = 0 },
      { name = 'WEAPON_PUMPSHOTGUN',      price = 0 },
      { name = 'WEAPON_HEAVYSNIPER',      price = 0 },
      { name = 'WEAPON_FLAREGUN',         price = 0 },
      { name = 'WEAPON_BZGAS',            price = 0 },
      { name = 'WEAPON_GRENADE',          price = 0 },
      { name = 'WEAPON_STICKYBOMB',       price = 0 },
      { name = 'GADGET_PARACHUTE',        price = 0 },
    },

    AuthorizedVehicles = {
      { name = 'police',  label = 'Véhicule de patrouille 1' },
      { name = 'police2', label = 'Véhicule de patrouille 2' },
      { name = 'police3', label = 'Véhicule de patrouille 3' },
      { name = 'police4', label = 'Véhicule civil' },
      { name = 'policeb', label = 'Moto' },
      { name = 'policet', label = 'Van de transport' },
    },

    Cloakrooms = {
      { x = 452.600, y = -993.306, z = 29.750 },
    },

    Armories = {
      { x = -1216.0562744141, y = -2788.1774902344, z = 12.927434158325},
    },

    Vehicles = {
      {
        Spawner    = { x = -1219.3448486328, y = -2825.6689453125, z = 12.846229743958},
        SpawnPoint = { x = -1210.8763427734, y = -2848.3803710938, z = 13.945754051208},
        Heading    = 90.0,
      }
    },

    Aircrafts = {
      {
        Spawner    = { x = -1207.9887695313, y = -2816.3327636719, z = 12.846229743958 },
        SpawnPoint = { x = -1628.11, y = -2975.3, z = 13.94 },
        Heading    = 239.5,
      }
    },

    VehicleDeleters = {
      { x = 462.74, y = -1014.4, z = 27.065 },
      { x = 462.40, y = -1019.7, z = 27.104 },
    },

    BossActions = {
      { x = 448.417, y = -973.208, z = 29.689 }
    },

  },

  CN = {

    Blip = {
      Pos     = { x = 425.130, y = -979.558, z = 30.711 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
      { name = 'WEAPON_NIGHTSTICK',       price = 0 },
      { name = 'WEAPON_FLASHLIGHT',       price = 0 },
      { name = 'WEAPON_COMBATPISTOL',     price = 0 },
      { name = 'WEAPON_ASSAULTSMG',       price = 0 },
      { name = 'WEAPON_CARBINERIFLE',     price = 0 },
      { name = 'WEAPON_PUMPSHOTGUN',      price = 0 },
      { name = 'WEAPON_HEAVYSNIPER',      price = 0 },
      { name = 'WEAPON_FLAREGUN',         price = 0 },
      { name = 'WEAPON_BZGAS',            price = 0 },
      { name = 'WEAPON_GRENADE',          price = 0 },
      { name = 'WEAPON_STICKYBOMB',       price = 0 },
      { name = 'GADGET_PARACHUTE',        price = 0 },
    },

    AuthorizedVehicles = {
      { name = 'police',  label = 'Véhicule de patrouille 1' },
      { name = 'police2', label = 'Véhicule de patrouille 2' },
      { name = 'police3', label = 'Véhicule de patrouille 3' },
      { name = 'police4', label = 'Véhicule civil' },
      { name = 'policeb', label = 'Moto' },
      { name = 'policet', label = 'Van de transport' },
    },

    Cloakrooms = {
      { x = 452.600, y = -993.306, z = 29.750 },
    },

    Armories = {
      { x = 795.65063476563, y = -2971.2653808594, z = 5.0709364891052},
    },

    Vehicles = {
      {
        Spawner    = { x = 797.00622558594, y = -2981.2790527344, z = 5.0459364891052 },
        SpawnPoint = { x = 808.60467529297, y = -3039.4379882813, z = 5.7395939826965 },
        Heading    = 90.0,
      }
    },

    Aircrafts = {
      {
        Spawner    = { x = 794.17303466797, y = -2989.2094726563, z = 5.0459364891052 },
        SpawnPoint = { x = -1628.11, y = -2975.3, z = 13.94 },
        Heading    = 240.0,
      }
    },

    VehicleDeleters = {
      { x = 462.74, y = -1014.4, z = 27.065 },
      { x = 462.40, y = -1019.7, z = 27.104 },
    },

    BossActions = {
      { x = 448.417, y = -973.208, z = 29.689 }
    },

  },

}
