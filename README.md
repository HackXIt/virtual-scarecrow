# virtual-scarecrow
This little shell script randomly plays one of the included raptor sound files.

It worked for a short while, until the prey figured that despite the alarming sounds of a nearby hunter, no physical threat or danger occured.

So they ended up getting used to it.
But it was a fun mini-script either way.

# Usage

To use the script, add it to the boot-init of your OS. (use [cron](https://www.simplified.guide/linux/automatically-run-program-on-startup#automatically-run-program-on-linux-startup-via-cron) for example)
The script requires the program ['sox'](sox.sourceforge.net)

The default audio-port of the OS will be used.
You could specify a specific output by editing the 'play' command-options in the script.
