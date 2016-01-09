<?php

class IndexController extends ControllerBase{
    public function indexAction() {
        $json = array('status' => 'running');
        echo json_encode($json);
    }
}

