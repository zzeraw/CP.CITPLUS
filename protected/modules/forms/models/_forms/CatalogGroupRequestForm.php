<?php

class CatalogGroupRequestForm extends BaseFormModel
{
    public $fio;
    public $phone;
    public $email;
    public $item;
    public $comment;

    public function rules()
    {
        return array(
            array(
                'fio, phone, email',
                'required',
            ),
            array(
                'email',
                'email',
            ),
            array(
                'fio, email',
                'length',
                'max' => 100,
            ),
            array(
                'phone',
                'length',
                'max' => 20,
            ),
            array(
                'item',
                'length',
                'max' => 400,
            ),
            array(
                'comment',
                'length',
                'max' => 500,
            ),
        );
    }

    public function attributeLabels()
    {
        return array(
            'fio' => 'Ф.И.О.',
            'phone' => 'Телефон',
            'email' => 'Email',
            'item' => 'Группа каталога',
            'comment' => 'Комментарий',
        );
    }

    public function send()
    {
        $from = Yii::app()->params['fromEmail'];
        $email = Yii::app()->params['managerEmail'];

        $subject = $this->email_subject;

        $message = $this->email_subject . '<br><br>';

        $message .= $this->item . '<br>';

        $message .= $this->getAttributeLabel('fio') . ': ' . $this->fio . '<br>';
        $message .= $this->getAttributeLabel('phone') . ': ' . $this->phone . '<br>';
        $message .= $this->getAttributeLabel('email') . ': ' . $this->email . '<br>';

        $message .= '<br>';

        $message .= $this->getAttributeLabel('comment') . ': ' . $this->comment . '<br>';

        $db = new FormRequest;

        $db->fio = $this->fio;
        $db->phone = $this->phone;
        $db->email = $this->email;
        $db->description = json_encode(
            array(
                'subject' => $this->email_subject,
                'item' => $this->item,
                'comment' => $this->comment,
            )
        );

        $db->save();

        return SendMail::sendEmail($from, $email, $subject, $message);
    }

}