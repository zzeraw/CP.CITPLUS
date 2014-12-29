<?php

class RecentPortfolioItems extends CWidget
{
    public $limit = 10;
    public $id = '';

    public function run()
    {
        if (!empty($this->id)) {
            $ids = str_replace(' ', '', $this->id);
            $ids_array = explode(',', $ids);

            $items = PortfolioItem::model()->findAllByPkArray($ids_array, 'created_datetime DESC', $this->limit);
        } else {
            $items = PortfolioItem::model()->active()->findAll(array('order' => 'created_datetime DESC', 'limit' => $this->limit));
        }

        $this->render('recentPortfolioItems', array('items' => $items));
    }
}