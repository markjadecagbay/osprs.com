<?php 




$username = "root";
$password = "";
$dbname = "AVS";

//connect to the database
$conn = new mysqli('localhost', $username, $password, $dbname) or die("unable to connect");

if (isset($_POST['lrn_check'])) {
    $clrn = $_POST['lrn'];
    $sqlcheck = "SELECT * FROM new_student WHERE lrn='$clrn'";
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
        $emergency_person = $_POST['emergency_person'];
        $contact_num = $_POST['contact_num'];
        $guardians_name = $_POST['guardians_name'];
        $g_address = $_POST['g_address'];
        $g_cpnum = $_POST['g_cpnum'];
        

        $abc = $_FILES["abc"]["name"];
        $tempname1 = $_FILES["abc"]["tmp_name"];    
        $folder1 = "new-student-uploaded-files/".$abc;

        $agm = $_FILES["agm"]["name"];
        $tempname2 = $_FILES["agm"]["tmp_name"];    
        $folder2 = "new-student-uploaded-files/".$agm;

        $af = $_FILES["af"]["name"];
        $tempname3 = $_FILES["af"]["tmp_name"];    
        $folder3 = "new-student-uploaded-files/".$af;

        
        $fname = $_POST['fname'];
        $occupation = $_POST['occupation'];
        $cp = $_POST['cp'];
        $adde = $_POST['adde'];
        $ag = $_POST['ag'];
        $bd = $_POST['bd'];
        $mname = $_POST['mname'];
        $occu = $_POST['occu'];
        $cpn = $_POST['cpn'];
        $addr = $_POST['addr'];
        $a = $_POST['a'];
        $birth = $_POST['birth'];


        
        

        $check_lrn= mysqli_query($conn,"SELECT * FROM `new_student` WHERE `lrn`='$lrn';");

        if (mysqli_num_rows($check_lrn)==0) {
            $sql = "INSERT INTO new_student(lrn, name, age, gender, birthdate, address1, address2, height, weight, number, email, school, year, semester, track, school_add, emergency_person, contact_num, guardians_name, g_address, g_cpnum, abc, agm, af, fname, occupation, cp, adde, ag, bd, mname, occu, cpn, addr, a, birth) VALUES 
            ('$lrn', '$name', '$age', '$gender', '$birthdate', '$address1', '$address2', '$height', '$weight' ,'$number', '$email',  '$school', '$year', '$semester', '$track', '$school_add', '$emergency_person', '$contact_num', '$guardians_name', '$g_address', '$g_cpnum', '$abc', '$agm', '$af', '$fname', '$occupation', '$cp', '$adde', '$ag', '$bd', '$mname', '$occu', '$cpn', '$addr', '$a', '$birth')";
            
            
            if ($conn->query($sql) === TRUE) {
                move_uploaded_file($tempname1, $folder1);
                move_uploaded_file($tempname2, $folder2);
                move_uploaded_file($tempname3, $folder3);
                
                
            } 
            else {
                $_SESSION['stat'] = "ERROR";
                $_SESSION['stat_code'] = "error";
            }
        }else{
            $_SESSION['stat'] = "LRN already exist";
            $_SESSION['stat_code'] = "error";
            }
        
          $conn->close();
        }

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
        
    </head>
    <body>
            <div class="container">
                <form method="POST" enctype="multipart/form-data">
                <div class="title">NEW STUDENT</div>
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
                            <input type="text" maxlength="12" placeholder="Enter Learners Reference Number" required name="lrn" id="lrn">
                            <notif></notif>
                        </div>
                        <div class="detail-box">
                            <span class="details">Name </span>
                            <input type="text" placeholder="Enter Learners Name" required name="name">
                        </div>
                        
                        <div class="detail-box">
                            <span class="details">Age </span> 
                            <input type="number" placeholder="Enter Learners Age" required name="age">
                        </div>
    
                        <div class="detail-box">
                            <span class="details">Gender </span> <br>
                            <select name="gender">
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                            </select>
                            
                        </div>
    
                        <div class="detail-box">
                            <span class="details">Birthdate </span>
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
                            <input type="text" placeholder="Enter Cellphone Number" required name="number">
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
                            <input type="text" placeholder="Enter Year" required name="year">
                        </div>
    
                        <div class="detail-box">
                            <span class="details">Student Status</span><br>
                            <select name="student_stat">
                                <option value="New">New Student</option>
                                <option value="Transferee">Transferee</option>
                            </select>
                        </div>
                        <div class="detail-box">
                            <span class="details">Semester</span><br>
                            <select name="semester">
                                <option value="First Semester">First Semester</option>
                                <option value="Second Semester">Second Semester</option>
                            </select>
                        </div>
    
                        <div class="detail-box">
                            <span class="details">Track</span><br>
                            <select name="track">
                                <option value="H.E">H.E</option>
                                <option value="I.A">Industrial Arts</option>
                                <option value="A.F.A">Shielded Metal Arc and Welding</option>
                            </select>
                        </div>
    
                        
    
                        <div class="detail-box">
                            <span class="details">School Address</span>
                            <input type="text" placeholder="Enter School Adress" required name="school_add">
                        </div>

                        <div class="detail-box">
                            <span class="details">Birth Certificate</span>
                            <input type="file" placeholder="Attach Birth Certificate" required name ="abc">
                        </div>
                        <div class="detail-box">
                            <span class="details">Good Moral</span>
                            <input type="file" placeholder="Attach Good Moral" required name ="agm">
                        </div>
                        <div class="detail-box">
                            <span class="details">Form 137</span>
                            <input type="file" placeholder="Attach Form 137" required name ="af">
                        </div>
                    </div>
                        
                        <div class="title">Parent's Information</div>
                            <div class="student-details">

                            <div class="detail-box">
                                <span class="details">Fathers Name </span>
                                <input type="text" placeholder="Enter Name" required name ="fname">
                            </div>

                            <div class="detail-box">
                                <span class="details">Occupation</span>
                                <input type="text" placeholder="Enter Occupation" required name ="occupation">
                            </div>

                            <div class="detail-box">
                                <span class="details">Cellphone Number</span>
                                <input type="number" placeholder="Enter Number"  name ="cp">
                            </div>

                            <div class="detail-box">
                                <span class="details">Address</span>
                                <input type="text" placeholder="Enter Address" required name ="adde">
                            </div>

                            <div class="detail-box">
                                <span class="details">Age</span>
                                <input type="text" placeholder="Enter Age" required name="ag">
                            </div>

                            <div class="detail-box">
                                <span class="details">Birthdate</span>
                                <input type="date" placeholder="Enter Birthdate" required name ="bd">
                            </div>

                            <div class="detail-box">
                                <span class="details">Mothers Name</span>
                                <input type="text" placeholder="Enter Name" required name ="mname">
                            </div>

                            <div class="detail-box">
                                <span class="details">Occupation</span>
                                <input type="text" placeholder="Enter Occupation" required name ="occu">
                            </div>

                            <div class="detail-box">
                                <span class="details">Cellphone Number</span>
                                <input type="number" placeholder="Enter Number" name ="cpn">
                            </div>

                            <div class="detail-box">
                                <span class="details">Address</span>
                                <input type="text" placeholder="Enter Address" required name ="addr">
                            </div>

                            <div class="detail-box">
                                <span class="details">Age</span>
                                <input type="text" placeholder="Enter Age" required name ="a">
                            </div>

                            <div class="detail-box">
                                <span class="details">Birthdate</span>
                                <input type="date" placeholder="Enter Birthdate" required name ="birth">
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
                    url: 'New_student.php',
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