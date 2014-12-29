<?php $form_widget_id = 'fddf123'; ?>

<?php $form = $this->beginWidget('CActiveForm', array(
    'id' => $form_widget_id,
    'enableAjaxValidation'=>false,
    'htmlOptions'=>array(
        'onsubmit'=>"return false;",/* Disable normal form submit */
        'onkeypress'=>" if(event.keyCode == 13){ send(); } " /* Do ajax call when user presses enter key */
    ),
)); ?>

<?php // echo $form->render(); ?>

<?php echo $form->errorSummary($dynamic_model); ?>

    <div class="row">
        <?php echo $form->label($dynamic_model,'username'); ?>
        <?php echo $form->textField($dynamic_model,'username') ?>
    </div>

    <div class="row">
        <?php echo $form->label($dynamic_model,'password'); ?>
        <?php echo $form->passwordField($dynamic_model,'password') ?>
    </div>

    <div class="row submit">
        <?php // echo CHtml::ajaxSubmitButton('Войти', Yii::app()->createUrl('forms/ajax/send')); ?>
        <?php echo CHtml::Button('SUBMIT',array('onclick'=>'send();')); ?>
    </div>

<?php $this->endWidget(); ?>

<script type="text/javascript">

    function send()
    {

        var data=$("#<?=$form_widget_id?>").serialize();

        $.ajax({
            type: 'POST',
            url: '<?php echo Yii::app()->createAbsoluteUrl("forms/ajax/send"); ?>',
            data:data,
            success:function(data){
                alert(data);
            },
            error: function(data) { // if error occured
                alert("Error occured.please try again");
                alert(data);
            },

            dataType:'html'
        });

    }

</script>