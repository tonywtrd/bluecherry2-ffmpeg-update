# bluecherry2-ffmpeg-update

I was not able to run my cheap China IP cam with the version of FFMPEG used in Bluecherry 2 CE which was an old version and bunch of codec missing. I needed to update FFMPEG (which is need to be updated at the BC installation level (`/usr/lib/bluecherry/ffmpeg`) and not at the system level (global).

So here an automatic bash script which will update the FFMPEG version of your bluecherry installation automaticly.

NB: If your installation is not the default installation used by Bluecherry installer, just change all `/usr/lib/bluecherry` to your installation folder in the bash file.
