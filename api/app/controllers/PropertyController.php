<?php

class PropertyController extends ControllerBase{
    public function listAction() {
        $data = Estate::find(array(
            'limit'=>15
        ));
        $json = array();
        foreach($data as $row) {
            $json[] = $row->getDataAsArray();
        }
        echo json_encode($json);
    }

    public function idAction($id) {
        $data = Estate::findFirst($id);
        $json = array();
        $json[] = $data->getDataAsArray();
        echo json_encode($json);
    }

    public function countsAction() {
        $json = array();
        $json['propertyCount'] = Estate::count();
        $json['likesCount'] = Estate::sum(array(
            "column" => "likes"
        ));
        echo json_encode($json);
    }

    public function searchAction($keyword) {
        $terms = explode(" ", $keyword);
        $termCounter = 0;
        $conditions = '';
        $bind = array();
        foreach($terms as $term) {
            if($conditions != '') {
                $conditions .= ' AND ';
            }
            $termCounter++;
            $conditions .= ' (name like ?'.$termCounter.' OR builder like ?'.$termCounter.') ';
            $bind[$termCounter] = '%'.$term.'%';
        }
        $data = Estate::find(array(
            'conditions' => $conditions,
            'bind' => $bind,
            'limit'=>15
        ));
        $json = array();
        foreach($data as $row) {
            $json[] = $row->getDataAsArray();
        }
        echo json_encode($json);

    }
}

