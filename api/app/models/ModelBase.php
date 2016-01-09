<?php
class ModelBase extends \Phalcon\Mvc\Model {

    public function columnMap() {
        return array();
    }

    public function getDataAsArray() {
        $data = array();
        foreach($this->columnMap() as $key => $column) {
            $data[$key] = $this->$column;
        }
        return $data;
    }
}