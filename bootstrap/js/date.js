
     $(function(){
        $("#to3").datepicker({ dateFormat: 'yy-mm-dd', changeMonth: true,changeYear: true });
        $("#tgladd").datepicker({ dateFormat: 'yy-mm-dd' }).bind("change",function(){
            var minValue = $(this).val();
            minValue = $.datepicker.parseDate("yy-mm-dd", minValue);
            minValue.setDate(minValue.getDate()+1);
            $("#to3").datepicker( "option", "minDate", minValue );
        })
    });
 

     $(function(){
        $("#to4").datepicker({ dateFormat: 'yy-mm-dd', changeMonth: true,changeYear: true });
        $("#tgl_req").datepicker({ dateFormat: 'yy-mm-dd' }).bind("change",function(){
            var minValue = $(this).val();
            minValue = $.datepicker.parseDate("yy-mm-dd", minValue);
            minValue.setDate(minValue.getDate()+1);
            $("#to4").datepicker( "option", "minDate", minValue );
        })
    });
    
     $(function(){
        $("#tgl_lahir").datepicker({ dateFormat: 'yy-mm-dd', changeMonth: true,changeYear: true });
        $("#tgl_lahir").datepicker({ dateFormat: 'yy-mm-dd' }).bind("change",function(){
            var minValue = $(this).val();
            minValue = $.datepicker.parseDate("yy-mm-dd", minValue);
            minValue.setDate(minValue.getDate()+1);
            $("#tgl_lahir").datepicker( "option", "minDate", minValue );
        })
    });
    
     $(function(){
        $("#tgl_masuk").datepicker({ dateFormat: 'yy-mm-dd', changeMonth: true,changeYear: true });
        $("#tgl_masuk").datepicker({ dateFormat: 'yy-mm-dd' }).bind("change",function(){
            var minValue = $(this).val();
            minValue = $.datepicker.parseDate("yy-mm-dd", minValue);
            minValue.setDate(minValue.getDate()+1);
            $("#tgl_masuk").datepicker( "option", "minDate", minValue );
        })
    });
    
     $(function(){
        $("#tgl_kontrak").datepicker({ dateFormat: 'yy-mm-dd', changeMonth: true,changeYear: true });
        $("#tgl_kontrak").datepicker({ dateFormat: 'yy-mm-dd' }).bind("change",function(){
            var minValue = $(this).val();
            minValue = $.datepicker.parseDate("yy-mm-dd", minValue);
            minValue.setDate(minValue.getDate()+1);
            $("#tgl_kontrak").datepicker( "option", "minDate", minValue );
        })
    });
    
     $(function(){
        $("#jamsostek_start").datepicker({ dateFormat: 'yy-mm-dd', changeMonth: true,changeYear: true });
        $("#jamsostek_start").datepicker({ dateFormat: 'yy-mm-dd' }).bind("change",function(){
            var minValue = $(this).val();
            minValue = $.datepicker.parseDate("yy-mm-dd", minValue);
            minValue.setDate(minValue.getDate()+1);
            $("#jamsostek_start").datepicker( "option", "minDate", minValue );
        })
    });
    
     $(function(){
        $("#fspmi_finish").datepicker({ dateFormat: 'yy-mm-dd', changeMonth: true,changeYear: true });
        $("#fspmi_finish").datepicker({ dateFormat: 'yy-mm-dd' }).bind("change",function(){
            var minValue = $(this).val();
            minValue = $.datepicker.parseDate("yy-mm-dd", minValue);
            minValue.setDate(minValue.getDate()+1);
            $("#fspmi_finish").datepicker( "option", "minDate", minValue );
        })
    });
    
     $(function(){
        $("#fspmi_start").datepicker({ dateFormat: 'yy-mm-dd', changeMonth: true,changeYear: true });
        $("#fspmi_start").datepicker({ dateFormat: 'yy-mm-dd' }).bind("change",function(){
            var minValue = $(this).val();
            minValue = $.datepicker.parseDate("yy-mm-dd", minValue);
            minValue.setDate(minValue.getDate()+1);
            $("#fspmi_start").datepicker( "option", "minDate", minValue );
        })
    });
    
     $(function(){
        $("#jamsostek_finish").datepicker({ dateFormat: 'yy-mm-dd', changeMonth: true,changeYear: true });
        $("#jamsostek_finish").datepicker({ dateFormat: 'yy-mm-dd' }).bind("change",function(){
            var minValue = $(this).val();
            minValue = $.datepicker.parseDate("yy-mm-dd", minValue);
            minValue.setDate(minValue.getDate()+1);
            $("#jamsostek_finish").datepicker( "option", "minDate", minValue );
        })
    });
    
    
     $(function(){
        $("#datestart").datepicker({ dateFormat: 'yy-mm-dd', changeMonth: true,changeYear: true });
        $("#datestart").datepicker({ dateFormat: 'yy-mm-dd' }).bind("change",function(){
            var minValue = $(this).val();
            minValue = $.datepicker.parseDate("yy-mm-dd", minValue);
            minValue.setDate(minValue.getDate()+1);
            $("#datestart").datepicker( "option", "minDate", minValue );
        })
    });
 
     $(function(){
        $("#datefinish").datepicker({ dateFormat: 'yy-mm-dd', changeMonth: true,changeYear: true });
        $("#datefinish").datepicker({ dateFormat: 'yy-mm-dd' }).bind("change",function(){
            var minValue = $(this).val();
            minValue = $.datepicker.parseDate("yy-mm-dd", minValue);
            minValue.setDate(minValue.getDate()+1);
            $("#datefinish").datepicker( "option", "minDate", minValue );
        })
    });
 
 
 
 /**
 
 window.setTimeout("waktu()",1000); 
            function waktu() {
                var tanggal = new Date(); 
                setTimeout("waktu()",1000); 
                document.getElementById("tanggalku").innerHTML = tanggal.getHours()+":"+tanggal.getMinutes()+":"+tanggal.getSeconds(); 
                } 
                
                
                function disableselect(e) { 
                return false; 
            } 
            function reEnable() { 
                return true; 
            } 
            document.onselectstart = new Function("return false"); 
            if (window.sidebar) { 
                document.onmousedown = disableselect ;
                document.onclick = reEnable ;
            } 
            
            
            
var message="";

function clickIE() {if (document.all) {(message);return false;}}
function clickNS(e) {if
(document.layers||(document.getElementById&&!document.all)) {
if (e.which===2||e.which===3) {(message);return false;}}}
if (document.layers)
{document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}
else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}

document.oncontextmenu=new Function("return false");

document.onkeydown = function(e) {
        if (e.ctrlKey && 
            (e.keyCode === 67 || 
             e.keyCode === 86 || 
             e.keyCode === 85 || 
             e.keyCode === 117)) {
            //alert('not allowed');
            return false;
        } else {
            return true;
        }
};

function disableCtrlKeyCombination(e)
        {
                //list all CTRL + key combinations you want to disable
                var forbiddenKeys = new Array("a", "s", "c");
                var key;
                var isCtrl;

                if(window.event)
                {
                        key = window.event.keyCode;     //IE
                        if(window.event.ctrlKey)
                                isCtrl = true;
                        else
                                isCtrl = false;
                }
                else
                {
                        key = e.which;     //firefox
                        if(e.ctrlKey)
                                isCtrl = true;
                        else
                                isCtrl = false;
                }

                //if ctrl is pressed check if other key is in forbidenKeys array
                if(isCtrl)
                {
                    for (i = 0; i < forbiddenKeys.length; i++)
                        {
                                //case-insensitive comparation
                            if (forbiddenKeys[i].toLowerCase() == String.fromCharCode(key).toLowerCase())
                                {
//                                    alert("Key combination CTRL + "
//                                                + String.fromCharCode(key)
//                                                + " has been disabled.");                                    
                                        return false;
                                }
                        }
                }
                return true;
        }
        
        
        **/