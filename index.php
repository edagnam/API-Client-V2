<?php 
require __DIR__ . '/vendor/autoload.php';
require 'libs/NotORM.php'; 

use \Slim\App;

$app = new App();

$dbhost = '127.0.0.1';
$dbuser = 'root';
$dbpass = '';
$dbname = 'db_exabb';
$dbmethod = 'mysql:dbname=';

$dsn = $dbmethod.$dbname;
$pdo = new PDO($dsn, $dbuser, $dbpass);
$db  = new NotORM($pdo);

$app-> get('/', function(){
    echo "API Client";
});

$app ->get('/semuajob', function() use($app, $db){
	$job["error"] = false;
	$job["message"] = "Berhasil mendapatkan data pekerjaan";
    foreach($db->tabel_job_desc() as $data){
        $job['semuajob'][] = array(
            'nama_job' => $data['nama_job']
            );
    }
    echo json_encode($job);
});

$app ->get('/job/{nama_job}', function($request, $response, $args) use($app, $db){
    $job = $db->tabel_job_desc()->where('nama_job',$args['nama_job']);
    $jobdetail = $job->fetch();

    if ($job->count() == 0) {
        $responseJson["error"] = true;
        $responseJson["message"] = "Pekerjaan belum tersedia di database";
        $responseJson["id_job"] = null;
        $responseJson["nama_job"] = null;
    } else {
        $responseJson["error"] = false;
        $responseJson["message"] = "Berhasil mengambil data";
        $responseJson["id_job"] = $jobdetail['id_job'];
        $responseJson["nama_job"] = $jobdetail['nama_job'];
    }

    echo json_encode($responseJson); 
});

$app ->get('/semuaproject', function() use($app, $db){
    $project["error"] = false;
    $project["message"] = "Berhasil mendapatkan data project";
    foreach($db->tabel_project() as $data){
        $project['semuaproject'][] = array(
            'project_number' => $data['project_number']
            );
    }
    echo json_encode($project);
});

$app ->get('/project/{project_number}', function($request, $response, $args) use($app, $db){
    $project = $db->tabel_project()->where('project_number',$args['project_number']);
    $projectdetail = $project->fetch();

    if ($project->count() == 0) {
        $responseJson["error"] = true;
        $responseJson["message"] = "Project belum tersedia di database";
        $responseJson["project_number"] = null;
        $responseJson["prokect_name"] = null;
        $responseJson["customer"] = null;
    } else {
        $responseJson["error"] = false;
        $responseJson["message"] = "Berhasil mengambil data project";
        $responseJson["project_number"] = $projectdetail['project_number'];
        $responseJson["project_name"] = $projectdetail['project_name'];
        $responseJson["customer"] = $projectdetail['customer'];
    }

    echo json_encode($responseJson); 
});

$app->post('/kegiatan', function($request, $response, $args) use($app, $db){
    $kegiatan = $request->getParams();
    $result = $db->tabel_kegiatan->insert($kegiatan);

    $responseJson["error"] = false;
    $responseJson["message"] = "Berhasil menambahkan ke database";
    echo json_encode($responseJson);
});


//run App
$app->run();