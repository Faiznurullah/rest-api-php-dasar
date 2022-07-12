<?php

$hostname = "localhost";
$database = "belajar_api_php";
$username = "root";
$password = "";
$connect = mysqli_connect($hostname, $username, $password, $database);


if (!$connect) {
    die("Koneksi Tidak Berhasil: " . mysqli_connect_error());
}


if(function_exists($_GET['function'])) {
    $_GET['function']();
 }   

function get_data()
{
 global $connect;      
 $query = $connect->query("SELECT * FROM laliga");            
 while($row=mysqli_fetch_object($query))
 {
    $data[] =$row;
 }
 $response=array(
                'status' => 1,
                'message' =>'Success',
                'data' => $data
             );
 header('Content-Type: application/json');
 echo json_encode($response);
}   

function get_data_id()
{
 global $connect;
 if (!empty($_GET["id"])) {
    $id = $_GET["id"];      
 }            
 $query ="SELECT * FROM laliga WHERE id= $id";      
 $result = $connect->query($query);
 while($row = mysqli_fetch_object($result))
 {
    $data[] = $row;
 }            
 if($data)
 {
 $response = array(
                'status' => 1,
                'message' =>'Success',
                'data' => $data
             );               
 }else {
    $response=array(
                'status' => 0,
                'message' =>'No Data Found'
             );
 }
 
 header('Content-Type: application/json');
 echo json_encode($response);
  
}

function insert_data()
 {
    global $connect;   
    $check = array('id' => '', 'nama' => '', 'asal' => '', 'deskripsi' => '');
    $check_match = count(array_intersect_key($_POST, $check));
    if($check_match == count($check)){
    
          $result = mysqli_query($connect, "INSERT INTO laliga SET
          id = '$_POST[id]',
          nama = '$_POST[nama]',
          asal = '$_POST[jenis_kelamin]',
          deskripsi = '$_POST[alamat]'");
          
          if($result)
          {
             $response=array(
                'status' => 1,
                'message' =>'Insert Success'
             );
          }
          else
          {
             $response=array(
                'status' => 0,
                'message' =>'Insert Failed.'
             );
          }
    }else{
       $response=array(
                'status' => 0,
                'message' =>'Wrong Parameter'
             );
    }
    header('Content-Type: application/json');
    echo json_encode($response);
 }

function update_data()
 {
    global $connect;
    if (!empty($_GET["id"])) {
    $id = $_GET["id"];      
 }   
    $check = array('nama' => '', 'asal' => '', 'deskripsi' => '');
    $check_match = count(array_intersect_key($_POST, $check));         
    if($check_match == count($check)){
    
         $result = mysqli_query($connect, "UPDATE laliga SET               
          nama = '$_POST[nama]',
          asal = '$_POST[jenis_kelamin]',
          deskripsi = '$_POST[alamat]' WHERE id = $id");
    
       if($result)
       {
          $response=array(
             'status' => 1,
             'message' =>'Update Success'                  
          );
       }
       else
       {
          $response=array(
             'status' => 0,
             'message' =>'Update Failed'                  
          );
       }
    }else{
       $response=array(
                'status' => 0,
                'message' =>'Wrong Parameter',
                'data'=> $id
             );
    }
    header('Content-Type: application/json');
    echo json_encode($response);
 }
function delete_data()
{
 global $connect;
 $id = $_GET['id'];
 $query = "DELETE FROM laliga WHERE id=".$id;
 if(mysqli_query($connect, $query))
 {
    $response=array(
       'status' => 1,
       'message' =>'Delete Success'
    );
 }
 else
 {
    $response=array(
       'status' => 0,
       'message' =>'Delete Fail.'
    );
 }
 header('Content-Type: application/json');
 echo json_encode($response);
}



?>