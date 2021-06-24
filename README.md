# esx_burgerjob
just a simple burgershot job that I made. Figured that I wanna share it here. Don't expect any fixes or updates... sorry.
## Features
* Easy Configurations. Read Comments in the files for more information.
* Possibility to add more items or change current items that can be used and made in the kitchen.

## Requirements
* [es_extended](https://github.com/esx-framework/es_extended/tree/v1-final).
* [esx_addonaccount](https://github.com/esx-framework/esx_addonaccount).
* [skinchanger](https://github.com/esx-framework/skinchanger).
* [esx_skin](https://github.com/esx-framework/esx_skin).

## Notes
* In the burgerjob.lua, you can change the location of the working spots and the blip. You can add more working spots if you want to, You can also configure the menu whether you want to add more items that can be created or remove some of it.
* Do not forget to change the 'x' in the job.name (Line 50, Line 74, Line 100 and Line 126.) into whatever job you plan to set it to.
* Do not forget to add the items that will be used and will be made in your `items` table in your database. I had an sql file ready if you want to use it to add the items
to your database. OR you can just manually do it. The items are in the `burgerjob.sql` file.
* `Line 52`, That is the line for the `MAP BLIP` that you can see in the menu. Feel Free to change that.
* `Line 75, 101 and 127`. This is the coords for the `cooking spots`. It is inside the burgershot, in the back. Changing the coords was very hard for me because the x,y,z is not accurate when I was positioning the markers. I suggest keep it where it is.
* Additional Info in the files. Read Comments, kinda helps.

## Download & Installation
### Using Git
```
cd resources
git clone https://github.com/chaos339/esx_burgerjob
```
### Manually
- Download this resource and put it in your resources folder.

## Installation
- Add this to your `server.cfg`:

```
ensure esx_burgerjob
```
## Optional
* Run `burgerjob.sql` in your database to add items in your `items` table.
* Burgershot MLO Either [this](https://www.gta5-mods.com/maps/gtaiv-burgershot-interior-sp-and-fivem) or [this one](https://www.gta5-mods.com/maps/burgershot-remastered-gta-v-interior-mod-gtadps). Thanks Smallo for the first link and gtaDPS for the second one.
