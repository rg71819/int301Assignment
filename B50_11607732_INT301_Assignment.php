<!DOCTYPE html>
<!---
Registration Number : 11607732	
Name : Gurram Ravi Shankar	
Roll No : RKE014B50	
Quetion no : 7

Consider a php form with columns id,first_name,last_name,email_id .Insert following data in the database and fetch all the data in descending order of first_name.
-->
<html>
    <head>
        <title>INT 301 Assignment</title>
        <style>
            .button
            {
                background-color: skyblue;
                border-radius: 10px;
                border-color: skyblue;
                color:white;
            }
        th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: orange;
            color: white;
            }
        #users td,#users tr 
            {
            border: 1px solid #ddd;
            padding: 8px;
            background-color: skyblue;
            }
        </style>
        <?php
        //php code to connect to the database int301 as root
         $servername = "localhost";
         $username = "root";
         $password = "";
         $dbname = "INT301";
         // Create connection
         $conn = new mysqli($servername, $username, $password,$dbname);
         
         // Check connection
         if ($conn->connect_error) {
             die("Connection failed: " . $conn->connect_error);
         }
        //code to insert data submitted through form to the database
        if(isset($_POST["submit"]))
        {
            $firstName=$_POST["firstName"];
            $lastName=$_POST["lastName"];
            $emailId=$_POST["emailId"];
            $query="insert into `users` (`firstName`,`lastName`,`emailId`) values('$firstName','$lastName','$emailId');";
            mysqli_query($conn, $query);
        }
        ?>
    </head>
    <body>
        <marquee>Int 301 Assignment</marquee>
        <form method="POST">
            <table>
                <tr><td><label for="firstName">First Name</label></td><td><input classs="input" required type="text" placeholder="enter your first name"name="firstName" id="firstName"></td></tr>
                <tr><td><label for="lastName">Last Name</label></td><td><input classs="input" required type="text" placeholder="enter your last name" name="lastName" id="lastName"></td></tr>
                <tr><td><label for="emailId">Email Id</label></td><td><input classs="input" required type="email" placeholder="enter your email Id" name="emailId" id="emailId"></td></tr>
                <tr><td colspan="2" align="center"><input type="submit" name="submit" value="submit" class="button"></td></tr>
            </table>
        </form>
        <h2 style="text-align : center">User details in below table are sorted in descending order of first name </h2>
        <table border="1" align="center" id="users">

            <caption><strong>User Details</strong></caption>
            <tr><th>Id</th><th>First Name</th><th>Last Name</th><th>Email Id</th></tr>
            <?php
            //code to display the contents of the database as a table in descending order of first name
            $q="select * from users order by firstName desc";
            $result=mysqli_query($conn, $q);
          while($row = mysqli_fetch_assoc($result)) 
          {
              echo "<tr><td>" . $row["id"]. "</td><td>" . $row["firstName"]. "</td><td> " . $row["lastName"]. "</td><td>".$row["emailId"]."</td></tr>";
          }
            ?>
        </table>
    </body>
</html>
