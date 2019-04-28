<?php
 
class DB_Functions {
 
    private $conn;
 
    // constructor
    function __construct() {
        require_once 'DB_Connect.php';
        // koneksi ke database
        $db = new Db_Connect();
        $this->conn = $db->connect();
    }
 
    // destructor
    function __destruct() {
         
    }
 
     
    /**
     * Get user berdasarkan username
     */
    public function getUserByUsername($username){

            $stmt = $this->conn->prepare("SELECT id_karyawan, username, level, nik FROM tabel_user WHERE username = ?");
            $stmt->bind_param("s", $username);
            $stmt->execute(); 
            $stmt->bind_result($id_karyawan, $username, $level, $nik);
            $stmt->fetch(); 
            $user = array(); 
            $user['id_karyawan'] = $id_karyawan; 
            $user['username']=$username; 
            $user['level'] = $level; 
            $user['nik'] = $nik;
            return $user; 
        }
 
    /**
     * Cek User ada atau tidak
     */
    public function isUserExisted($username) {
        
        $stmt = $this->conn->prepare("SELECT username from tabel_user WHERE username = ?"); 
        $stmt->bind_param("s", $username); 
        $stmt->execute(); 
        $stmt->store_result(); 
        if ($stmt->num_rows > 0) {
            // user telah ada 
            $stmt->close();
            return true;
        } else {
            // user belum ada 
            $stmt->close();
            return false;
        }
    }
 
    /**
     * Encrypting password
     * @param password
     * returns salt and encrypted password
     */
    public function hashSSHA($password) {
 
        $salt = sha1(rand());
        $salt = substr($salt, 0, 10);
        $encrypted = base64_encode(sha1($password . $salt, true) . $salt);
        $hash = array("salt" => $salt, "encrypted" => $encrypted);
        return $hash;
    }
 
    /**
     * Decrypting password
     * @param salt, password
     * returns hash string
     */
    public function checkhashSSHA($salt, $password) {
 
        $hash = base64_encode(sha1($password . $salt, true) . $salt);
 
        return $hash;
    }
 
}
 
?>