 # default user
----------------------------------------------------------------------------------------------------------------------------------
                         :   Old Defaults (v0.1.3)     :::::::                       New Defaults (v0.1.4)                   
----------------------------------------------------------------------------------------------------------------------------------
   App/Service           :   USERNAME :    PASSWORD    :::::::    ADMIN ID  :   ADMIN KEY    :: GUEST ID  :  GUEST KEY    :
  --------------------------------------------------------------------------------------------------------------------------------
      Wi-Fi              :    N/A     :   makeitwave   :::::::     N/A      : (Processor ID) ::    N/A    :  makeitwave   :
      SSH                :    dietpi  :     dietpi     :::::::     admin    : (Processor ID) ::    wave   :  makeitwave   :
      EMBY               :            :                :::::::     admin    : (Processor ID) ::    wave   :  makeitwave   :
     EmonCMS             :            :                :::::::     admin    : (Processor ID) ::    wave   :  makeitwave   :      
    MotionEye            :            :                :::::::     admin    : (Processor ID) ::    wave   :  makeitwave   :          
     RaspAP              :    admin   :     secret     :::::::     admin    : (Processor ID) ::    wave   :  makeitwave   :            
    TightVNC             :            :                :::::::     admin    : (Processor ID) ::    wave   :  makeitwave   :          
    Guacamole            :   dietpi   :  Burgerking!!  :::::::     admin    : (Processor ID) ::    wave   :  makeitwave   : 
     OwnCloud            :    N/A     :      N/A       :::::::     wave
     
Default admin password: 9920d313

# The one implimenting WaveOS will need to login to an admin area using the default admin password, in order to set a new one. 
# This feature doesn't exist as yet. So as it stands, you have to go into each app to change, one at a time. 

# The hotspots UID (use the shell command: cat /proc/cpuinfo) can be somewhere in the mix (UID encrypt keys etc). 
# I think it should be visible to the user through the UI for support. 
# The tool to convert the UID to keys, would also need to be unique to each device. 
