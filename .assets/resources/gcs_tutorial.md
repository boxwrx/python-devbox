[//]: # (README.md)
[//]: # (Copyright © 2026 nTier Training. All rights reserved.)
[//]: #

# Setup Instructions

This starter development environment for Java has been loaded here into Google Cloud Shell, a Debian-based virtual container.
Warning: this is an ephemeral virtual computer and any work you do will be erased when the Google Cloud Shell ends.
Google sets the maximum idle time to 40 minutes, and the maximum elapsed time to twelve hours.

Google CS does not offer a reliable mechanism to automate the remaining installation.
Follow these steps to take care of it:

1. Close the big *Cloud Shell* terminal window at the bottom of the browser window, below the IDE area.

1. Wait for all the steps in the spin-up dialog to finish, and wait for the IDE UI to appear.
1. Gemini Code Assist has been deprecated and no longer available from Google,
    but the <i>Secondary Sidebar Panel</i> still opens at the right of the IDE to try and provide AI chat.
    It will never connect for your personal account.
    If it did open with a "spinning wheel of death", close that panel to the right of the IDE \(left of these instructions).
1. From the Visual Studio Code menu at the top left of the IDE window (not the browser menu), click on <i>Terminal &rarr; New Terminal</i>.
    This opens the <i>Panel</i> at the bottom of the screen and leaves the <i>Terminal</i> tab with the focus.
1. In the new terminal window run the command <code>scripts/gcs_setup.sh</code> and wait for it to complete.
    If the script fails to complete, look at the file ~/setup.log for the details on what happened.
1. Run the following four commands to verify the toolchain installation:
    <code><br>
    java --version<br>
    mvn --version<br>
    gradle --version<br>
    </code>
1. Make sure the Explorer panel is visible:
    in the vertical IDE <i>Activity Bar</i> at the left click on the <i>pages</i> icon at the top to
    open the view in the <i>Side bar</i> to the right of the <i>Activity Bar</i>*.
1. Close this window when these tasks are complete.
