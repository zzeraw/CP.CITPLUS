<?php

class CallbackRequestForm extends BaseFormModel
{
    public $fio;
    public $phone;
    public $comment;

    public $email_subject = 'С сайта поступила заявка на обратный звонок';

    public function rules()
    {
        return array(
            array(
                'fio, phone',
                'required',
            ),
            array(
                'fio',
                'length',
                'max' => 100,
            ),
            array(
                'phone',
                'length',
                'max' => 20,
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
            'comment' => 'Комментарий',
        );
    }

    public function send()
    {
        $from = Yii::app()->params['fromEmail'];
        $email = Yii::app()->params['managerEmail'];

        $subject = $this->email_subject;

        $message = $this->email_subject . '<br><br>';

        $message .= $this->getAttributeLabel('fio') . ': ' . $this->fio . '<br>';
        $message .= $this->getAttributeLabel('phone') . ': ' . $this->phone . '<br>';

        $message .= '<br>';

        $message .= $this->getAttributeLabel('comment') . ': ' . $this->comment . '<br>';

        $db = new FormRequest;

        $db->fio = $this->fio;
        $db->phone = $this->phone;
        $db->description = json_encode(array('subject' => $this->email_subject, 'comment' => $this->comment));

        $db->save();

        return SendMail::sendEmail($from, $email, $subject, $message);
    }

}