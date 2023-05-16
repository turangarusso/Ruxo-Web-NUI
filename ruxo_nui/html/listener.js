
        /* 'links' the js with the Nui message from main.lua */
		window.addEventListener('message', (event) => {
            //document.querySelector("#logo").innerHTML = " "
			var item = event.data;

			if (item !== undefined && item.type === "ui") {
                /* if the display is true, it will show */
				if (item.display === true) {
                    $("#container").show();
                     /* if the display is false, it will hide */
				} else{
                    $("#container").hide();

                }
			}
		});

        $(function() {
            // Listen for messages from the HTML code
            window.addEventListener('message', function(event) {
                if (event.data.type === 'closeIframe') {
                    // Hide the iframe
                    $('#container').hide();
                }
            });
        });
