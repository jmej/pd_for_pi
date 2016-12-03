# pd_for_pi
some useful tools for running pd on a raspberry pi

launch is a shell script that runs a pure data patch headless (-nogui) and makes some connections to hardware midi ins and outs

needs to be executable:

`sudo chmod 755 launch`

and then add the full path to the script to /etc/rc.local

I haven't been able to figure out how to autolaunch w/out -nogui, seems to hang the pi's statup.

For manual midi connections - aconnectgui works 
