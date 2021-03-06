<!DOCTYPE html>
<html>
  <head>
    <title>Title of the document</title>
    <style>
      @media url("https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css");
		* {
		  marfin:0;
		  padding:0;
		  box-sizing:border-box;
		}
		body {
		  background-color:#EDDEDD;
		}
		.footer {
		  width: 800px;
		  height: 350px;
		  position: relative;
		  background-color: #fff;
		  border-radius:3px;
		  top: 4em;
		  left:5rem;
		}
		.footer-content{
		  height:300px;
		  display:flex;
		  padding: 40px 60px;
		  width:100%;
		  border-bottom: 1px solid #84849D;
		}
		.footer-section {
		  width:23%;
		}
		.footer-content .form {
		  width: 33%;
		}
		.footer-content .form p {
		  font-size: 14px;
		  
		}
		.footer-section input{
		  border:1px solid #84849D;
		  padding: 10px 25px;
		  border-radius: 5px;
		  margin-bottom:15px;
		}
		.footer-section button {
		  padding: 12px 78px;
		  color:white;
		  font-size:15px;
		  background-color:#5D7CC5;
		  border:none;
		  border-radius: 5px;
		  
		}
		.footer-section li {
		  list-style:none;
		  padding-bottom: 7px;
		}
		.footer-section li a {
		  text-decoration:none;
		  color:#000948;
		}
		.footer-section h3 {
		  color: #010837;
		}
		
		.footer-bottom {
		  position:absolute;
		  bottom:0;
		  left:0;
		  height:50px;
		  line-height:50px;
		  width:100%;
		  text-align:center;
		  color:#84849D;
		}

    </style>
  </head>
  <body>
    <div class="footer">
  <div class="footer-content">
    <div class="footer-section">
      <h3>Gallery</h3>
      <ul>
        <li><a href="#">Community</a></li>
        <li><a href="#">Trending</a></li>
        <li><a href="#">Picks</a></li>
      </ul>
    </div>
    <div class="footer-section">
      <h3>Marketplace</h3>
      <ul>
        <li><a href="#">Trending</a></li>
        <li><a href="#">Best selling</a></li>
        <li><a href="#">Latest</a></li>
      </ul>
    </div>
    <div class="footer-section">
      <h3>Magazine</h3>
      <ul>
        <li><a href="#">Art skills</a></li>
        <li><a href="#">Career</a></li>
        <li><a href="#">Inspiration</a></li>
        <li><a href="#">News</a></li>
      </ul>
    </div>
    <div class="footer-section form">
      <h3>Newsletter</h3>
      <p>Subscribe to our newsletter</p>
   <input type="email" placeholder="Enter your email address">
   <button>Subscribe</button>
    </div>
  </div>
  <div class="footer-bottom">
    Privacy policy-Terms and conditions
  </div>
</div>
  </body>
</html>