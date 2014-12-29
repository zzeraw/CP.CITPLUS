<?php

class DefaultController extends FrontEndController
{
    public function actionIndex()
    {
        $sitemap = new DSitemap();

        $sitemap->addModels(Page::model()->active()->findAll(), DSitemap::WEEKLY, 0.2);
        $sitemap->addModels(PortfolioItem::model()->active()->findAll(), DSitemap::WEEKLY, 0.5);

        header("Content-type: text/xml");
        echo $sitemap->render();
        Yii::app()->end();
    }
}