<script type="text/javascript" charset="utf-8">

    // Wait for device API libraries to load
    //
    document.addEventListener("deviceready", onDeviceReady, false);

    // device APIs are available
    //

    function onDeviceReady() {
	
	 
  
  if(localStorage.getItem("saved"))
  {
  urld = localStorage.getItem("saved");
  }
  else
  {
  urld = "http://";
  }
		var url = prompt("Enter URL", urld);
if (url != null)	{
   localStorage.setItem("saved", url);
					}
	
         var ref = window.open(url, '_blank', 'location=yes');
     //    ref.addEventListener('loadstart', function(event) { alert('start: ' + event.url); });
     //    ref.addEventListener('loadstop', function(event) { alert('stop: ' + event.url); });
         ref.addEventListener('loaderror', function(event) { alert('error: ' + event.message); });
         ref.addEventListener('exit', function(event) { alert(event.type); });
    }

    </script>
