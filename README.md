<h1 align="center">
  <br>






                                             
     ^4________  ___  ___     ___    ___ ________          
    ^4|\   __  \|\  \|\  \   |\  \  /  /|\   __  \        
    ^4\ \  \|\  \ \  \\\  \  \ \  \/  / | \  \|\  \       
    ^4 \ \   _  _\ \  \\\  \  \ \    / / \ \  \\\  \      
    ^4  \ \  \\  \\ \  \\\  \  /     \/   \ \  \\\  \     
    ^4   \ \__\\ _\\ \_______\/  /\   \    \ \_______\    
    ^4    \|__|\|__|\|_______/__/ /\ __\    \|_______|     

                                   
                                  
                                  
                                  


           
                           
  <br>
Ruxo Web NUI

  <br>
</h1>

<h4 align="center">A simple FiveM web page nui loader for Free
.</h4>

<p align="center">
  <a href="#key-features">Key Features</a> •
  <a href="#how-to-use">How To Use</a> •
  <a href="#credits">Credits</a> •
  <a href="#license">License</a>
</p>


## Key Features


* Open all web page you need inside GTA
  - Navigation, cursor and page scroll enabled.
* Open it with a command or using a trigger.

![NUIa](https://github.com/turangarusso/Ruxo-Web-NUI/assets/113531412/b2539b87-90cd-4131-9c56-d8af10001a02)

## How To Use

Insert the script inside the RESOURCE server folder, and add ruxo_nui on the server config file!

Change in the HTML file the link to your page:
```html

		<div id="container" name="google" class="google">
			<button id="close-btn">Close</button>

			<iframe style="width: 100%;height: 100%;" src="https://docs.google.com/document/d/1B5pMqDlPSe2gC8xyGGpGxPx1IOlL1-eQt2S7Xv1BcjI/" allowfullscreen scrolling="yes"></iframe>
		
		</div>
```

You can open it using the trigger inside another script:

```lua

    TriggerEvent("rxo:nui:off")
    TriggerEvent("rxo:nui:on")

```

> **Note**
> Ruxo NUI Made for Evolve RP v2 https://discord.com/invite/Cc7fbazCmB

## Credits

Russo Giovanni M.

Boston G.

F3de

## License

MIT

---

