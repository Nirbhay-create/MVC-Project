<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        * {
            /* background-color: darkblue; */
            margin: 0;

        }

        footer {
            width: 100%;
            position: absolute;
            bottom: 0px;
            background: linear-gradient(black, darkblue, purple);
            font-size: 13px;
            color: azure;
        }

        .row {
            width: 85%;
            margin: auto;
            display: flex;
            flex-wrap: wrap;
            align-items: flex-start;
            justify-content: space-between;
        }
        .column{
            flex-basis: 15%;
            padding: 10px;
        }
        .column>h3{
            width: fit-content;
            margin-bottom: 40px;
            position: relative;
        }
        ul>li{
            list-style: none;
            margin-bottom: 11px;
            margin-left: -40px;
        }
        li>a{
            text-decoration: none;
            color: azure;
        }
        div>h3>u{
            padding-top: 20pz;
        }
        .email{
            width: fit-content;
            border-bottom: 1px solid grey;
            margin-top: 20px;
            margin-bottom: 20px;
        }

    </style>
</head>

<body>
    <footer>
        <div class="row">
            <div class="column">
                <h3>LOGO</h3>
                <p>Lorem ipsum, ndae p cumque, pariatur nesciunt. Itaque, minus aspernatur.
                </p>
            </div>
            <div class="column">
                <h3>Office</h3>
                <p>Address Line 1</p>
                <p>Address Line no 2</p>
                <p>Address Line no 3</p>
                <p class="email">WebsiteGmail@gmail.com</p>
                <strong id="contact">contact +91-98723877128 </strong>
            </div>
            <div class="column">
                <h3>Links</h3>
                <ul>
                   <li><a href="">Home</a></li>
                   <li><a href="">Services</a></li>
                   <li><a href="">About us</a></li>
                   <li><a href="">Support</a></li>
                </ul>
            </div>
            <div class="column">
                <h3>Newsletter</h3>
                <form action=""><input type="email" placeholder="Enter your email id" required></form>
            </div>
        </div>
    </footer>
</body>

</html>