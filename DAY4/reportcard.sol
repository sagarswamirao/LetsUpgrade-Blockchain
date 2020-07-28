pragma solidity ^0.4.21 < 0.6.12;

contract ReportCard{
    
    string public name;
    string public rollno;
    uint public batch;
    string public status;
    uint public  s1;
    uint public s2;
    uint public s3;
    uint public s4;

   function ReportCard(string Name,string Rollno,uint Batch,uint m1,uint m2,uint m3,uint m4)public{
        name = Name;
        rollno = Rollno;
        batch = Batch;
        
        //Assigning marks out off 100 for each subject
        s1 = m1;
        s2 = m2;
        s3 = m3;
        s4 = m4;
       
        
       uint  result= s1 + s2 + s3 + s4;
         
        
        //total should be out off 400 
       // the pass mark is 200
        
        if(result < 200){
            status = "FAIL";
        }
        else {
            status = "PASS";
        }
        
    }
    
    function getDetails() public view returns(string,string,uint,uint,uint,uint,uint,string){
       
        return(name,rollno,batch,s1,s2,s3,s4,status);
        
    } 
}