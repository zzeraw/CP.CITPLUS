<div class="row recent-portfolio-widget">
    <?php foreach ($items as $item) : ?>
        <div class="col-xs-3">
            <div class="thumbnail">
                <a href="<?=Yii::app()->createUrl('portfolio/default/view', array('id' => $item->id))?>" style="height: 260px; display: block;">
                    <img src="<?=$item->getImageThumbUrl()?>" alt="" style="height: 260px;">
                </a>
                <div class="caption" style="height: 60px;">
                    <p><a href="<?=Yii::app()->createUrl('portfolio/default/view', array('id' => $item->id))?>"><?=$item->title?></a></p>
                </div>
            </div>
        </div>
    <?php endforeach; ?>
</div>