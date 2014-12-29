<?php

class AjaxController extends FrontEndController
{
    public $time_to_call = '00:10:00';
    public $openTime = array(8, 0);
    public $endTime = array(17, 0);

    public $holidays = array();

    protected function renderArrayAsJson($array)
    {
        if ($array['status'] == 'error') {
            throw new CHttpException($array['code'], $array['message']);
        }

        echo json_encode($array);

        Yii::app()->end();
    }


    public function actionFormValidation($widget_id, $model_name)
    {
        $model = new $model_name;

        if (isset($_POST['ajax']) && $_POST['ajax'] === $widget_id) {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
    }

    public function actionSendFormToEmail($model_name, $subject)
    {
        $model = new $model_name;

        $status = array();

        if (isset($_POST[$model_name])) {

            $model->attributes = $_POST[$model_name];

            if ($model->validate()) {
                if ($model->send($subject)) {

                    $status['status'] = 'success';

                    // $client_datetime = date('Y-d-m H:i:s');
                    $server_datetime = new DateTime('NOW');
                    if (isset($_POST['clientDatetime'])) {
                        $client_datetime = $_POST['clientDatetime'];
                    }

                    $client_datetime = new DateTime($client_datetime, new DateTimeZone('Europe/Moscow'));

                    $openTime = clone $server_datetime;
                    $openTime->setTime($this->openTime[0], $this->openTime[1]);

                    $endTime = clone $server_datetime;
                    $endTime->setTime($this->endTime[0], $this->endTime[1]);

                    $weekend = date('w');
                    if ($weekend == 0 || $weekend == 6) {
                        $weekend = true;
                    } else {
                        $weekend = false;
                    }

                    $time_to_call = '';

                    $work_time = $server_datetime > $openTime && $server_datetime < $endTime;
                    // Если сейчас в МСК время рабочее,
                    if ( $work_time ) {
                        // то генерим соббщение о том, что перезвонят в течении 10 минут
                        $interval = new DateInterval('P0000-00-00T' . $this->time_to_call);
                    } else {
                        // иначе генерим ссобщение о том, через сколько часов (или дней и часов) откроется офис
                        $call_time = $openTime->add(new DateInterval('P0000-00-01T' . $this->time_to_call));

                        $interval = $server_datetime->diff($call_time);
                    }

                    $days = $interval->format('%d');
                    $hours = $interval->format('%h');
                    $minutes = $interval->format('%i');

                    if (!empty($days)) {
                        $time_to_call .= $days . ' дн. ';
                    }
                    if (!empty($hours)) {
                        $time_to_call .= $hours . ' ч. ';
                    }
                    if (!empty($minutes)) {
                        $time_to_call .= $minutes . ' мин. ';
                    }

                    $status['message'] = $this->renderPartial('_success_modal',
                        array(
                            'time_to_call' => $time_to_call,
                            'work_time' => $work_time,
                            'openTime' => $this->openTime[0] . ':' . str_pad($this->openTime[1], 2, '0', STR_PAD_LEFT),
                            'endTime' => $this->endTime[0] . ':' . str_pad($this->endTime[1], 2, '0', STR_PAD_LEFT),
                        ), true
                    );
                } else {
                    // TODO: Логирование ошибок!

                    $error_type = 'server';

                    $status = array(
                        'status' => 'error',
//                        'message' => 'Произошла ошибка почтового сервера. Попробуйте отправить заявку еще раз.',
                        'code' => 500,
                    );
                    $status['message'] = $this->renderPartial('_error_modal', array(
                        'error_type' => $error_type,
                    ));
                }
            } else {
                $error_type = 'validation';

                // TODO: Логирование ошибок!
                $status = array(
                    'status' => 'error',
//                    'message' => 'Произошла ошибка валидации. Попробуйте отправить заявку еще раз.',
                    'code' => 500,
                );

                $status['message'] = $this->renderPartial('_error_modal', array(
                    'error_type' => $error_type,
                ));
            }
        }

        $this->renderArrayAsJson($status);
    }

}

?>