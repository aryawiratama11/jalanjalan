function validateForm(){
    {
        var x=document.forms["myForm"]["itemid"].value;
        if (x==null || x=="")
        {
            alert("Item ID Tidak Boleh Kosong");
            return false;
        }
        
        var x1=document.forms["myForm"]["itemstock"].value;
        if (x1==null || x1=="")
        {
            alert(" Stock Tidak Boleh Kosong");
            return false;
        }
        
        var x2=document.forms["myForm"]["itemname"].value;
        if (x2==null || x2=="")
        {
            alert(" Item Name Tidak Boleh Kosong");
            return false;
        }
    }
}
