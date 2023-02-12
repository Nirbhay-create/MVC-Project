<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%
String msg=(String)request.getAttribute("msg");
%>	
	
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        * {
            margin: 0;
            padding: 0;
	
        }

        .container {
            width: 100%;
            height: 100vh;
            background-position: center;
            background-size: cover;
            background-image: url(pexels-david-egon-2240361.jpg);
            position: relative;
        }

        .form {
            width: 90%;
            max-width: 450px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background: #fff;
            padding: 50px 60px 70px;
            text-align: center;
        }

        form>h1 {
            font-size: 30px;
            margin-bottom: 50px;
            color: blue;
            position: relative;
        }

        .input-field {
            background: #eaeaea;
            margin: 15px 0;
            border-radius: 3px;
            display: flex;
            align-items: center;
            max-height: 65px;
            transition: max-height 0.5s;
            overflow: hidden;
        }

        .input-field i {
            margin-left: 15px;
            color: grey;
        }

        input {
            width: 100%;
            background: transparent;
            border: 0;
            outline: 0;
            padding: 18px 15px;
        }

        form p {
            text-align: left;
            font-size: 13px;

        }

        a {
            text-decoration: none;
            color: blue;
        }

        .btn {
            width: 100%;
            display: flex;
            justify-content: space-between;

        }

        button {
            background: #3c00a0;
            color: white;
            height: 40px;
            border-radius: 20px;
            border: 0;
            outline: 0;
            cursor: pointer;
            flex-basis: 48%;
            margin-top: 20px;
            transition: background 1s;
        }

        /* input-group {
            height: 180px;
        } */

       .btn button.disable {
            background: #eaeaea;
            color: #555;
        }
        .loginbtn{
        cursor: pointer;
        font-size:20px;
        color:black;
        transition: 1s;
        background-color:grey;
        }
        #nameField{
        max-Height:0px;
        }
    </style>
</head>

<body>
<%
if(msg!=null){
%>
<h2 align="center" ><%=msg %></h2>
<%} %>
    <div class="container">
        <div class="form">
            <h1 id="title">Sign In</h1>
            <form action="./login" method="post">
                <div class="input-group">
                    <div class="input-field" id="nameField"><i>icon</i>
                        <input type="text" name="name"  placeholder="Name">
                    </div>
                        <div class="input-field"><i>icon</i>
                            <input type="email" name="email" placeholder="Email">
                        </div>
                    <div>
                        <div class="input-field"><i>icon</i>
                            <input type="password" name="password" placeholder="Password">
                        </div>
                        <div class="input-field">
                 
                            <input type="submit" class="loginbtn" id="lo" value="Login">
                        </div>
                        <p>Lost Password <a href="">Click here!!</a></p>
                    <div class="btn">
                        <button type="button" id="signupbtn" class="disable" >Sign Up</button>
                        <button type="button" id="signinbtn" >Sign In</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <script>
        let signupbtn = document.getElementById("signupbtn");
        let signinbtn = document.getElementById("signinbtn");
        let nameField = document.getElementById("nameField");
        let title = document.getElementById("title");
        let lo= document.getElementById("lo");
        

        signinbtn.onclick = function () {
            //hide name field and siaplay signin title
            nameField.style.maxHeight = "0px";
            title.innerHTML = "Sign In"
            	lo.value="Login";
            signupbtn.classList.add("disable");
            signinbtn.classList.remove("disable");
        }
        signupbtn.onclick = function () {
            //hide name field and siaplay signin title
            nameField.style.maxHeight = "60px";
            title.innerHTML = "Sign Up"
            lo.value="Register & Login";
            signupbtn.classList.remove("disable");
            signinbtn.classList.add("disable");
        }

    </script>
</body>




</html>