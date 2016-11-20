# pd_for_pi
some useful tools for running pd on a raspberry pi

launch is a shell script that runs a pdpatch headless (-nogui) and makes some connections to hardware midi ins and outs

needs to be executable:

`sudo chmod 755 script_pd`

and then add the full path to the script to /etc/rc.local
