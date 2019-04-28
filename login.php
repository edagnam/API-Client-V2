<?php
require_once 'include/DB_Functions.php';
$db = new DB_Functions();
 
// json response array
$response = array("error" => FALSE);
 
if (isset($_POST['username']) && isset($_POST['password'])) {
 
    // menerima parameter POST ( username dan password )
    $username = $_POST['username'];
    $password = $_POST['password'];
 
    // get the user by username and password
    // get user berdasarkan username dan password
    $user = $db->getUserByUsername($username);
    if ($user != false) {
        // user ditemukan
        $response["error"] = FALSE;
        $response["user"]["id_karyawan"] = $user["id_karyawan"];
        $response["user"]["username"] = $user["username"];
        $response["user"]["level"] = $user["level"];
        $response["user"]["nik"] = $user["nik"];
        echo json_encode($response);
    } else {
        // user tidak ditemukan password/username salah
        $response["error"] = TRUE;
        $response["error_msg"] = "Login gagal. Password/Username salah";
        echo json_encode($response);
    }
} else {
    $response["error"] = TRUE;
    $response["error_msg"] = "Parameter (username atau password) ada yang kurang";
    echo json_encode($response);
}
?>