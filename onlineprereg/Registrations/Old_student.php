<?php

session_start();



$username = "root";
$password = "";
$dbname = "AVS";

//connect to the database
$conn = new mysqli('localhost', $username, $password, $dbname) or die("unable to connect");


if (isset($_POST['lrn_check'])) {
    $clrn = $_POST['lrn'];
    $sqlcheck = "SELECT * FROM old_student WHERE lrn='$clrn'";
    $results = mysqli_query($conn, $sqlcheck);
    if (mysqli_num_rows($results) > 0) {
      echo "taken";	
    }else{
      echo 'not_taken';
    }
    exit();
}
  



if (isset($_POST['register'])) {
$lrn = $_POST['lrn'];
$name = $_POST['name'];
$age = $_POST['age'];
$gender = $_POST['gender'];
$birthdate = $_POST['birthdate'];
$address1 = $_POST['address1'];
$address2 = $_POST['address2'];
$height = $_POST['height'];
$weight = $_POST['weight'];
$number = $_POST['number'];
$email = $_POST['email'];

$school = $_POST['school'];
$year = $_POST['year'];
$student_stat = $_POST['student_stat'];
$semester = $_POST['semester'];
$track = $_POST['track'];

$school_add = $_POST['school_add'];
$guardians_name = $_POST['guardians_name'];
$g_address = $_POST['g_address'];
$g_cpnum = $_POST['g_cpnum'];
$emergency_person = $_POST['emergency_person'];
$contact_num = $_POST['contact_num'];
//inserting data




$check_lrn = mysqli_query($conn,"SELECT * FROM `old_student` WHERE `lrn`='$lrn';");

if (mysqli_num_rows($check_lrn)==0) {
    $sql = "INSERT INTO old_student(lrn, name, age, gender, birthdate, address1, address2, height, weight, number, email, school, year, student_stat, semester, track, school_add, emergency_person, contact_num, guardians_name, g_address, g_cpnum) VALUES 
    ('$lrn', '$name', '$age', '$gender', '$birthdate', '$address1', '$address2', '$height', '$weight' ,'$number', '$email', '$school', '$year', '$student_stat', '$semester', '$track', '$school_add', '$emergency_person', '$contact_num', '$guardians_name', '$g_address', '$g_cpnum')";
   
   if ($conn->query($sql) === TRUE) {
       
        $_SESSION['stat'] = "Successfully Registered";
        $_SESSION['stat_code'] = "success";
        
    } 
    else {
        $_SESSION['stat'] = "ERROR";
        $_SESSION['stat_code'] = "error";
    }
}else{
        $_SESSION['stat'] = "LRN already exist";
        $_SESSION['stat_code'] = "error";
        
    }

 
}

?>
<?php 
//if (isset($_POST['lrn_check'])) {
  //  $clrn = $_POST['lrn'];
   // $sqlcheck = "SELECT * FROM old_student WHERE lrn='$clrn'";
    //$resultscheck = mysqli_query($db, $sqlcheck);
    //if (mysqli_num_rows($resultscheck) > 0) {
      //echo "taken";	
    //}else{
    //echo 'not_taken';
    //}
     //     exit();
    //}

?>

<html>
    <head>
        <meta charset="UTF-8">
        <title>Online Student Pre-Registration Form</title>
        <link rel="stylesheet" href="style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script type="text/javascript">
            //function lrncheck()
            $('#lrn').on('blur', function(){
                var lrn = $('#lrn').val();
                if (lrn == '') {
                    lrn_state = false;
                    return;
                }
                $.ajax({
                //url: 'Old_student.php',
                type: 'post',
                data: {
                    'lrn_check' : 1,
                    'lrn' : lrn,
                },
                success: function(response){
                    if (response == 'taken' ) {
                    lrn_state = false;
                    $('#lrn').parent().removeClass();
                    $('#lrn').parent().addClass("form_error");
                    $('#lrn').siblings("span").text('Sorry... Email already taken');
                    }else if (response == 'not_taken') {
                    lrn_state = true;
                    $('#lrn').parent().removeClass();
                    $('#lrn').parent().addClass("form_success");
                    $('#lrn').siblings("span").text('Email available');
                    }
                }
                });
            });
        </script>
    </head>
    <body>
            <div class="container">
                <form method="POST" enctype="multipart/form-data">
                <div class="title">OLD STUDENT</div>
                <?php
                if(isset($_SESSION['stat'])
                ){
                    ?>
                    <script>
                        swal({
                            title: "<?php echo $_SESSION['stat'];?>",
                            icon: "<?php echo $_SESSION['stat_code'];?>",
                            button: "Close",
                        });
                    </script>
                        
                    <?php
                    
                    unset($_SESSION['stat']);
                }
                ?>
                
                    
                    <div class="student-details">
                        <div class="detail-box">
                            <span class="details">LRN </span>
                            <input type="text" maxlength="12" placeholder="Enter Learners Reference Number" required name="lrn" id="lrn" onkeyup="lrncheck()">
                            <div id="error_msg"></div>
                        </div>
                        <div class="detail-box">
                            <span class="details">Name </span>
                            <input type="text" placeholder="Enter Learners Name" required name="name" id="name">
                        </div>
                        
                        <div class="detail-box">
                            <span class="details">Age </span> 
                            <input type="number"  placeholder="Enter Learners Age" required name="age">
                        </div>
    
                        <div class="detail-box">
                            <span class="details">Gender </span> <br>
                            <select name="gender">
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                            </select>
                            
                        </div>
    
                        <div class="detail-box">
                            <span class="details" >Birthdate </span>
                            <input type="date" placeholder="Enter Learners Birthdate" required name="birthdate">
                        </div>
    
                        <div class="detail-box">
                            <span class="details">Current Address </span>
                            <input type="text" placeholder="Enter Learners Current Address" required name="address1">
                        </div>
    
                        <div class="detail-box">
                            <span class="details">Permanent Address </span>
                            <input type="text" placeholder="Enter Learners Permanent Address" required name="address2">
                        </div>
    
                        <div class="detail-box">
                            <span class="details">Height(cm) </span>
                            <input type="text" placeholder="Enter Learners Height" required name="height">
                        </div>
    
                        <div class="detail-box">
                            <span class="details">Weight(kg) </span>
                            <input type="text" placeholder="Enter Learners Weight" required name="weight">
                        </div>
    
                        <div class="detail-box">
                            <span class="details">Cellphone Number(#) </span>
                            <input type="text" placeholder="Enter Cellphone Number" required name="number" id="number">
                        </div>
    
                        <div class="detail-box">
                            <span class="details">Email </span>
                            <input type="text" placeholder="Enter Email" required name="email">
                        </div>
    
                        
    
                        <div class="detail-box">
                            <span class="details">School last attended </span>
                            <input type="text" placeholder="Enter School" required name="school">
                        </div>
    
                        <div class="detail-box">
                            <span class="details">Year Graduated </span>
                            <input type="text"  placeholder="Enter Year" required name="year">
                        </div>

                        <div class="detail-box">
                            <span class="details">Student Status</span><br>
                            <select name="student_stat">
                                <option value="Old">Old Student</option>
                                <option value="Transferee">Transferee</option>
                            </select>
                        </div>
    
                        <div class="detail-box">
                            <span class="details">Semester</span>
                            <select name="semester">
                                <option value="First Semester">First Semester</option>
                                <option value="Second Semester">Second Semester</option>
                            </select>
                        </div>
    
                        <div class="detail-box">
                            <span class="details">Track</span>
                            <select name="track">
                                <option value="H.E">H.E</option>
                                <option value="I.A">Industrial Arts</option>
                                <option value="A.F.A">Shielded Metal Arc and Welding</option>
                            </select>
                        </div>
    
    
                        <div class="detail-box">
                            <span class="details">School Address</span>
                            <input type="text"placeholder="Enter School Adress" required name="school_add">
                        </div>

                        
                    </div>
                    
                        <div class="title">Guardian's Information</div>
                            <div class="student-details">
    
                            <div class="detail-box">
                                <span class="details"> Name</span>
                                <input type="text" placeholder="Enter Guardian's Name" required name="guardians_name">
                            </div>

                            <div class="detail-box">
                                <span class="details"> Address</span>
                                <input type="text" placeholder="Enter Guardians Adress" required name="g_address">
                            </div>

                            <div class="detail-box">
                                <span class="details">Contact Number</span>
                                <input type="text" placeholder="Enter Contact Number" required name="g_cpnum">
                            </div>
                        </div>
                    
                        
                            <div class="title">Person to Notify in case of Emergency</div>
                                <div class="student-details">

                                <div class="detail-box">
                                    <span class="details">Contact Person</span>
                                    <input type="text" placeholder="Contact Person's Name" required name="emergency_person">
                                </div>
                                
                                
    
                                <div class="detail-box">
                                    <span class="details">Contact Number</span>
                                    <input type="text" placeholder="Enter Contact Number" required name="contact_num">
                                </div>
                            </div>
                       
                     
                <div class="button">
                    <button type="submit" class="btn btn-lg btn-primary" enabled name="register" id="reg">Register </button>
                    <button class="btn btn-lg btn-danger" onclick="history.back()">Back</button>
                </div>
                <script>
            
            $('#lrn').on('blur', function(){
                var lrn = $('#lrn').val();
                if (lrn == '') {
                    lrn_state = false;
                    return;
                }
                $.ajax({
                url: 'Old_student.php',
                type: 'post',
                data: {
                    'lrn_check' : 1,
                    'lrn' : lrn,
                },
                success: function(response){
                    if (response == 'taken' ) {
                    lrn_state = false;
                    $('#lrn').parent().removeClass();
                    $('#lrn').parent().addClass("form_error");
                    $('#lrn').siblings("notif").text('LRN already taken');
                    }else if (response == 'not_taken') {
                    lrn_state = true;
                    $('#lrn').parent().removeClass();
                    $('#lrn').parent().addClass("form_success");
                    $('#lrn').siblings("notif").text('LRN available');
                    }
                }
                });
            });
            </script>
            </form>
            
        </div>
    </body>
    </html>