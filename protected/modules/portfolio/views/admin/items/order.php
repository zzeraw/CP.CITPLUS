<?php
$this->pageTitle = Yii::app()->name . ' - ' . 'Сортировать работы';

$this->breadcrumbs=array(
    'Список работ' => array('index'),
    'Сортировать работы',
);

$this->menu = array(
    array(
        'label' => 'Добавить работы',
        'icon'  => 'plus',
        'url'   => array('create')
    ),
    array(
        'label' => 'Список работ',
        'icon'  => 'list',
        'url'   => array('index')
    ),
);

?>

<div>
    <h2>Сортировать работы</h2>
    <p class="alert alert-info">Переставьте мышью элементы в нужном порядке и нажмите "Сохранить"</p>
    <div id="orderResult"></div>
    <div class="buttons">
        <input type="button" id="save" value="Сохранить" class="btn btn-primary" />
    </div>
</div>
