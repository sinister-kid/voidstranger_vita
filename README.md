# voidstranger_vita
Game patches to run VoidStranger on PSVita

Patch for Void Stranger 1.1.3 (Steam or Itch)

The requeriment are mostly the same than running YoyoLoader, but data foder is ux0:/data/voidstranger/

After patching rename the file "data.win" to "game.droid". With 7zip put all the game assets inside te assets folder in the apk and rename the apk to game.apk. Delete everything but keep lib and assets folders and its content. Place apk and yyl.cfg in Vita data folder. Is posible to tweak loader options with the cfg, but with the example plays nice.
You'll probably need to change the .apk extesion to .zip in order to change its content (BlankProject.apk -> game.zip -> modify content -> game.apk)

You can use YoyoLoader to optimize the apk, but asset externalization will not work. 

First launch will take... some time. After that the time load time is around ~1min.

Save files from PC are compatible, but not the save settings.vs or settings.vslocal.

Game runs at 55/60fps most of the time. Eventual spike drops to 30/40 because effects. Managed to keep it above 20/25fps at the most (few) demanding points. Full game is payable (I think... not FULLY tested)

UPDATED: Currently is posible to run the patched game with YoYoLoader, last update resolves the issue with save file corruption. So you can use the provided standalone app here or the regular YoYoLoder.


## Patch changes
- Optimized all surfaces ingame, whose can be performance killing on Vita.

- Reduced some "particle" effects that made fps go below 10fps, and substituded some instanced objects with gpu particles system.

- Changed masive object instantiation and destruction on late game places to divite it across frames or cap it directly.

- Reduced sound and music file sizes (resampling all WAVS to 31000, reencoding all OGGS, encoding the biggers WAV to OGG).

- Restored "REST SHUTDOWN" behaviour thas was not included in regular release (as an option in menu Settings->Controls->Misc) so restarting the game is not needed at some points. Game takes some time to launch, so... dream without resting.

- Implemented proper "game_end" on loader (yoyoloader), so it prevents save settings corruption. (For settings to save exiting ingame is needed, trhought the menu "Quit Game" entry or holding "Select")

- Changed global variables acces on random scripts (very random)

- Storing csv in ini string for faster launch time

- Gamepad sprite buttons forced to show the SONY ones. Also edited the "OPTIONS" sprite to be more like a Vita "START" button.

- Removed the drag_window code

- Originally the palette was set every one or two frames, I think because of live updating it when looping the palettes in the menu, so limited it to autoupdate only when menu is open.


<img width="960" height="544" alt="Image" src="https://github.com/user-attachments/assets/3b348bc8-c974-4ccd-bef3-1f48f8b98025" />

<img width="960" height="544" alt="Image" src="https://github.com/user-attachments/assets/2b871c34-7e19-4b1e-97b1-b5fac2dac4f8" />


## TODO:
- Rework this readme.
- Find bugs.
- Optimize a little bit more the critica parts.
- Improve loading times.
- Add an option to use original game code instead these tweaks (like not using particle systems)
- Clean code and mixed optimization aproaches. Making small changes, patching, launching on Vita and testing can be tedious
- Externalize part of the music as stream.
- ¿Porting Endless Void mod?
- Share used UTMT scripts and GML code (only my added and edited part).
- Fulfill GameSpecificData for Underanalyzer.
- Save the world.
- Keep diggin.



Credits to EzDzzIt for the csv to GM string idea.
To Rinnegatamante for YoyoLoader, I only striped code and added a few thing.
And more to come.
