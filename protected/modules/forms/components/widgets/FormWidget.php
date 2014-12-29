<?php
/**
 * Created by PhpStorm.
 * User: paveldanilov
 * Date: 03.12.14
 * Time: 20:44
 */

class FormWidget extends CWidget
{
    // Тип
    public $type = 'form';

    // Содержимое
    public $content = array();

    public function init()
    {
        $this->content = array(
            'caption' => true,
            'caption_class' => '',
            'caption_tag' => 'h3',
            'caption_text' => 'Оставьте заявку',

            'description' => true,
            'description_class' => '',
            'description_text' => 'Текст формы',

            'labels' => true,

            'form_class' => 'base-form',

            'submit_button_size',
            'submit_button_color',
            'submit_button_text',

            'launch_button_size',
            'launch_button_color',
            'launch_button_text',
        );


    }

    public function run()
    {
//        $this->init();

        $form_params = array(
            'title'=>'Пожалуйста, представьтесь',

            'elements'=>array(
                'username'=>array(
                    'type'=>'text',
                    'maxlength'=>32,
                ),
                'password'=>array(
                    'type'=>'password',
                    'maxlength'=>32,
                ),
//                'rememberMe'=>array(
//                    'type'=>'checkbox',
//                )
            ),

            'buttons'=>array(
                'login'=>array(
                    'type'=>'submit',
                    'label'=>'Вход',
                ),
            ),
        );

        $dynamic_model = new DynamicFormModel();
        $dynamic_fields = array();
        $dynamic_rules = array();

        $dynamic_fields['username'] = array(
            'name'  => 'username',
            'label' => 'Имя пользователя',
            'type'  => 'text',
            'value' => '',
        );
        $dynamic_fields['password'] = array(
            'name'  => 'password',
            'label' => 'Пароль',
            'type'  => 'password',
            'value' => '',
        );

        $dynamic_rules[] = array('username', 'required');
        $dynamic_rules[] = array('password', 'required');
//        $dynamic_rules[] = array($attribute_model->alias, 'numerical', 'integerOnly' => true);
        $dynamic_rules[] = array('username', 'length', 'max' => 32);
        $dynamic_rules[] = array('password', 'length', 'max' => 32);

        $dynamic_model->setDynamicFields($dynamic_fields);
        $dynamic_model->setDynamicRules($dynamic_rules);

        $dynamic_model->username = 123;

        var_dump($dynamic_model->username);



        $form_builder = new CForm($form_params, $dynamic_model);

//        echo CHtml::form('/', 'post', array('enctype'=>'multipart/form-data'));
        $this->render('formWidget',
            array(
                'form_builder' => $form_builder,
                'dynamic_model' => $dynamic_model,
            )
        );
//        echo CHtml::endForm();
    }
}