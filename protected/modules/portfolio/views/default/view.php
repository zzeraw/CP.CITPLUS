<h1><?=$model->title?></h1>
<p><?=CHelper::sqlDateToRussianDatetime($model->created_datetime)?></p>
<p><?=$model->generateTagsLinks()?></p>
<hr/>
<div>
    <img class="img-responsive" src="<?=$model->getImageUrl()?>" alt="">
</div>
<hr/>
<div>
    <?=$this->decodeWidgets($model->annotation)?>
</div>
<br/>
<div>
    <?=$this->decodeWidgets($model->body)?>
</div>