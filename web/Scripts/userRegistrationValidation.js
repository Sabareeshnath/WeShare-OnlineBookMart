/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

var PasswordFlag=0;
var UsernameFlag=0;
var YearFlag=0;
var NameFlag=0;
var EmailFlag=0;
var PhoneFlag=0;

var RegFlag=0;

var isValidReg = /^[0-9]{12}$/;
var isValidYear = /^[2010]{4}$/;
var isValidName = /^[a-zA-Z]+(\s[a-zA-Z]+)*$/;

var isValidEmail = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
var isValidPhone = /^[0-9]{7,12}$/;

function validateName()
   {

var name = document.getElementById("txtName").value;
        
        if(name=="")
        {
            document.getElementById("nameError").innerHTML="Please enter your full name here.";
            NameFlag=1;
        } 
        else if(document.getElementById("txtName").value.search(isValidName))
            {
                document.getElementById("nameError").innerHTML="Name may only contain alphabets...";
                NameFlag=1;
            }
        else
    {
        document.getElementById("nameError").innerHTML="";
        NameFlag=0;
    }
    }

function validateYear()
    {
var year = document.getElementById("txtYear").value;
    if(year=="")
        {
            
             
            document.getElementById("yearError").innerHTML="Please enter the year here.";
            YearFlag=1;
        } 
        else if(document.getElementById("txtYear").value.search(isValidYear))
            {
                document.getElementById("yearError").innerHTML="Year Of Joining (Eg:2011)";
                YearFlag=1;
            }
        else
    {
        document.getElementById("yearError").innerHTML="";
        YearFlag=0;
    }    

   
}
    

function validatePhone()
    {
var phone = document.getElementById("txtPhone").value;
        
        if(phone=="")
        {
            document.getElementById("phoneError").innerHTML="Please enter a valid Phone no.";
            PhoneFlag=1;
        }
        else if(document.getElementById("txtPhone").value.search(isValidPhone))
            {
                document.getElementById("phoneError").innerHTML="Phone no. must be 7 to 12 digits long";
                PhoneFlag=1;
            }
        else
    {
        document.getElementById("phoneError").innerHTML="";
        PhoneFlag=0;
    }
    }
    
function validateEmail()
    {
        var email = document.getElementById("txtEmail").value;
        
        if(email=="")
        {
            document.getElementById("emailError").innerHTML="Please enter a valid Email ID";
            EmailFlag=1;
        }
        else if(document.getElementById("txtEmail").value.search(isValidEmail))
            {
                document.getElementById("emailError").innerHTML="Please enter a valid Email ID...";
                EmailFlag=1;
            }
        else
    {
        document.getElementById("emailError").innerHTML="";
        EmailFlag=0;
    }
    }
    
    
    
    
    function validateReg()
    {
var register = document.getElementById("txtRegister").value;
        
        if(register=="")
        {
            document.getElementById("RegError").innerHTML="Please enter your Register Number here.";
            RegFlag=1;
        } 
        else if(document.getElementById("txtRegister").value.search(isValidReg))
            {
                document.getElementById("RegError").innerHTML="Register Number Should Be 12 Digit Long ...";
                RegFlag=1;
            }
        else
    {
        document.getElementById("RegError").innerHTML="";
        RegFlag=0;
    }
    }
    
function validatePassword()
    {
        
        
        var password = document.getElementById("txtPassword").value;
        var confirmPassword = document.getElementById("txtConfirmPassword").value;
        
        if(password != confirmPassword)
        {
            document.getElementById("passwordError").innerHTML="The passwords do not match!!";//+password+" >> "+confirmPassword.toString();
            document.getElementById("txtPassword").value="";
            document.getElementById("txtConfirmPassword").value="";
            PasswordFlag=1;
        }
        else
        {
            document.getElementById("passwordError").innerHTML="";
            PasswordFlag=0;
        }
    }
    
function registerUser()
    {
        
     
        
        var name = document.getElementById("txtName").value;
        var department = document.getElementById("txtDept").value;
        
        var year = document.getElementById("txtYear").value;
        
        var phone = document.getElementById("txtPhone").value;
        var email = document.getElementById("txtEmail").value;
        var register = document.getElementById("txtRegister").value;
        var password = document.getElementById("txtPassword").value;
        var confirmPassword = document.getElementById("txtConfirmPassword").value;
        
        if(name=="")
            {
                document.getElementById("errMain").innerHTML="Name field may not be left blank...!!";
            }
            else if(year=="")
                {
                    document.getElementById("errMain").innerHTML="Year field may not be left blank...!!";
                }
             
                    else if(phone=="")
                    {
                        document.getElementById("errMain").innerHTML="Phone No. field may not be left blank...!!";
                    }
                    else if(email=="")
                    {
                        document.getElementById("errMain").innerHTML="Email ID field may not be left blank...!!";
                    }
        else if(register=="")
          {
              document.getElementById("errMain").innerHTML="Register No. field may not be left blank...!!";
          }
         
        else if(PasswordFlag==1)
            {
                document.getElementById("errMain").innerHTML="Please check the password you have entered...";
            }
        else if(password == "")
            {
                document.getElementById("errMain").innerHTML="Password may not be left blank...!!";
            }
            else if(confirmPassword == "")
            {
                document.getElementById("errMain").innerHTML="Please confirm the password you have entered...";
            }
            else if(YearFlag==1)
                {
                    document.getElementById("errMain").innerHTML="Please check the Year you have entered...";
                }
                else if(PhoneFlag==1)
                    {
                        document.getElementById("errMain").innerHTML="Please check the phone no. you have entered...";
                    }
                else if(EmailFlag==1)
                    {
                        document.getElementById("errMain").innerHTML="Please check the Email ID you have entered...";
                    }
           
        else
            {
                
                 document.getElementById('registerForm').submit();
            }
    }
     
function GetXmlHttpObject(){
var xmlHttp=null;
try{
  xmlHttp=new XMLHttpRequest();
 }
catch (e) {
 try {
  xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
  }
 catch (e){
  xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
 }
return xmlHttp;
}
