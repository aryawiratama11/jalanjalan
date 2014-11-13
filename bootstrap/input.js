////////////////////////
  function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}              
 function validate()
{
   if( document.myForm.nik.value == "" )
   {
     alert( "Nik Belum Di isi" );
     document.myForm.nik.focus() ;
     return false;
   }
   if( document.myForm.npwp.value == "" )
   {
     alert( "Nik Belum Di isi" );
     document.myForm.npwp.focus() ;
     return false;
   }
   if( document.myForm.nama_karyawan.value == "" )
   {
     alert( "Nama Karyawan Belum Di isi" );
     document.myForm.nama_karyawan.focus() ;
     return false;
   }
   if( document.myForm.tmpt_lahir.value == "" )
   {
     alert( "Tempat Lahir Karyawan Belum Di isi" );
     document.myForm.tmpt_lahir.focus() ;
     return false;
   }
   if( document.myForm.tgl_lahir.value == "" )
   {
     alert( "Tanggal Lahir Karyawan Belum Di isi" );
     document.myForm.tgl_lahir.focus() ;
     return false;
   }
   if( document.myForm.alamat.value == "" )
   {
     alert( "Alamat Karyawan Belum Di isi" );
     document.myForm.alamat.focus() ;
     return false;
   }
   if( document.myForm.kd_agama.value == "" )
   {
     alert( "Kode Agama Karyawan Belum Di isi" );
     document.myForm.kd_agama.focus() ;
     return false;
   }
   if( document.myForm.tinggi.value == "" )
   {
     alert( "Tinggi Badan Karyawan Belum Di isi" );
     document.myForm.tinggi.focus() ;
     return false;
   }
   if( document.myForm.berat.value == "" )
   {
     alert( "Berat Badan Karyawan Belum Di isi" );
     document.myForm.berat.focus() ;
     return false;
   }
   if( document.myForm.tanggungan.value == "" )
   {
     alert( "Tanggungan Belum Di isi" );
     document.myForm.tanggungan.focus() ;
     return false;
   }
   if( document.myForm.tgl_masuk.value == "" )
   {
     alert( "Tanggal masuk Karyawan Belum Di isi" );
     document.myForm.tgl_masuk.focus() ;
     return false;
   }
   if( document.myForm.kd_pendidikan.value == "" )
   {
     alert( "Kode Pendidikan Karyawan Belum Di isi" );
     document.myForm.kd_pendidikan.focus() ;
     return false;
   }
   if( document.myForm.kd_departemen.value == "" )
   {
     alert( "Kode Departemen Karyawan Belum Di isi" );
     document.myForm.kd_departemen.focus() ;
     return false;
   }
   if( document.myForm.kd_divisi.value == "" )
   {
     alert( "Kode Departemen Karyawan Belum Di isi" );
     document.myForm.kd_divisi.focus() ;
     return false;
   }
   if( document.myForm.kd_grade.value == "" )
   {
     alert( "Kode Grade Karyawan Belum Di isi" );
     document.myForm.kd_grade.focus() ;
     return false;
   }
   if( document.myForm.kd_jabatan.value == "" )
   {
     alert( "Kode Jabatan Karyawan Belum Di isi" );
     document.myForm.kd_jabatan.focus() ;
     return false;
   }
   if( document.myForm.emergency_nama.value == "" )
   {
     alert( "Emergency Nama Belum Di isi" );
     document.myForm.emergency_nama.focus() ;
     return false;
   }
   if( document.myForm.emergency_alamat.value == "" )
   {
     alert( "Emergency Alamat Belum Di isi" );
     document.myForm.emergency_alamat.focus() ;
     return false;
   }
   if( document.myForm.emergency_hubungan.value == "" )
   {
     alert( "Emergency Hubungan Belum Di isi" );
     document.myForm.emergency_hubungan.focus() ;
     return false;
   }
   if( document.myForm.emergency_phone.value == "" )
   {
     alert( "Emergency Phone Belum Di isi" );
     document.myForm.emergency_phone.focus() ;
     return false;
   }
   if( document.myForm.kd_transport.value == "" )
   {
     alert( "Kode Transport Belum Di isi" );
     document.myForm.kd_transport.focus() ;
     return false;
   }
   if( document.myForm.status_kary.value == "" )
   {
     alert( "Status Karyawan Belum Di isi" );
     document.myForm.status_kary.focus() ;
     return false;
   }
   if( document.myForm.tgl_kontrak.value == "" )
   {
     alert( "Tanggal Kontrak Belum Di isi" );
     document.myForm.tgl_kontrak.focus() ;
     return false;
   }
   if( document.myForm.jamsostek_start.value == "" )
   {
     alert( "Tanggal mulai jamsostek Belum Di isi" );
     document.myForm.jamsostek_start.focus() ;
     return false;
   }
   if( document.myForm.jamsostek_finish.value == "" )
   {
     alert( "Tanggal terakhir Jamsostek  Belum Di isi" );
     document.myForm.jamsostek_finish.focus() ;
     return false;
   }
   if( document.myForm.kd_negara.value == "" )
   {
     alert( "Kode Negara Belum Di isi" );
     document.myForm.kd_negara.focus() ;
     return false;
   }
   return( true );
}

                
                //==========================================
                 $(function(){
                    $('#date1').datepicker({
                        dateFormat: 'yy-mm-dd',
                        altFormat: 'yy-mm-dd'
                    });
                });
                
                $(function(){
                    $('#date2').datepicker({
                        dateFormat: 'yy-mm-dd',
                        altFormat: 'yy-mm-dd'
                    });
                });
                
                $(function(){
                    $('#date3').datepicker({
                        dateFormat: 'yy-mm-dd',
                        altFormat: 'yy-mm-dd'
                    });
                });
                
                $(function(){
                    $('#date4').datepicker({
                        dateFormat: 'yy-mm-dd',
                        altFormat: 'yy-mm-dd'
                    });
                });
                
                $(function(){
                    $('#date5').datepicker({
                        dateFormat: 'yy-mm-dd',
                        altFormat: 'yy-mm-dd'
                    });
                });
                
                $(function(){
                    $('#date6').datepicker({
                        dateFormat: 'yy-mm-dd',
                        altFormat: 'yy-mm-dd'
                    });
                });
                
                $(function(){
                    $('#date7').datepicker({
                        dateFormat: 'yy-mm-dd',
                        altFormat: 'yy-mm-dd'
                    });
                });
                
                $(function(){
                    $('#date8').datepicker({
                        dateFormat: 'yy-mm-dd',
                        altFormat: 'yy-mm-dd'
                    });
                });
                
                $(function(){
                    $('#date9').datepicker({
                        dateFormat: 'yy-mm-dd',
                        altFormat: 'yy-mm-dd'
                    });
                });
                
                $(function(){
                    $('#date10').datepicker({
                        dateFormat: 'yy-mm-dd',
                        altFormat: 'yy-mm-dd'
                    });
                });
                
                $(function(){
                    $('#dat11').datepicker({
                        dateFormat: 'yy-mm-dd',
                        altFormat: 'yy-mm-dd'
                    });
                });
                
                
                //==========================================
                $(document).ready(function() { 
			$("select.select").select2(); 
		});