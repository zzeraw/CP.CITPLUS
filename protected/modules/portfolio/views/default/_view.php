<div class="col-xs-4">
    <div class="thumbnail" style="height: 300px;">
        <a href="<?=Yii::app()->createUrl('portfolio/default/view', array('id' => $data->id))?>">
            <img src="<?=$data->getImageThumbUrl()?>" alt="">
        </a>
        <div class="caption">
            <p><a href="<?=Yii::app()->createUrl('portfolio/default/view', array('id' => $data->id))?>"><?=$data->title?></a></p>
        </div>
    </div>
</div>