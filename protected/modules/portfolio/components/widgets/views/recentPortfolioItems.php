<div class="row recent-portfolio-widget">
    <?php foreach ($items as $item) : ?>
        <div class="col-xs-3">
            <div class="thumbnail" style="height: 200px;">
                <a href="<?=Yii::app()->createUrl('portfolio/default/view', array('id' => $item->id))?>">
                    <img src="<?=$item->getImageThumbUrl()?>" alt="">
                </a>
                <div class="caption">
                    <p><a href="<?=Yii::app()->createUrl('portfolio/default/view', array('id' => $item->id))?>"><?=$item->title?></a></p>
                </div>
            </div>
        </div>
    <?php endforeach; ?>
</div>