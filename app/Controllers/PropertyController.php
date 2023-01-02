<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use CodeIgniter\HTTP\RequestInterface;
use App\Models\PropertyModel;


class PropertyController extends Controller {

    public function index() {

        helper(['form', 'url']);

        $this->propertyModel = new PropertyModel();

        $data = [
            'properties' => $this->propertyModel->paginate(9),
            'pager' => $this->propertyModel->pager
        ];

        return view('index', $data);
    }

    public function morePropertyList() {

        $limit = 9;

        $page = $this->request->getVar('page');
        $size = $this->request->getVar('size');
        $price = $this->request->getVar('price');

        $where = ['price'=> ($price ?:0), 'size' => ($size ?:0)];
        $offset = ($page > 1) ? ($limit * ($page - 1)) : 0;

        $data['properties'] = $this->getProperty($limit, $offset, $where);

        return view('more_property_list', $data);
    }

    function getProperty($limit, $offset, $where) {

        $db = new PropertyModel();
        $builder = $db->select('*')->limit($limit)->offset($offset)->where(['price >' => $where['price'], 'size >' => $where['size']])->orderBy('id' , 'ASC')->get();
        return $builder->getResult()??[];
    }

} ?>