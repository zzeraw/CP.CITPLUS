<?php

class CallbackFormWidget extends BaseFormWidget
{
    public function run()
    {
        $form_model = new CallbackRequestForm;
        $form_widget_id = $this->genegateWidgetId('callbackFormWidget');

        $button_class = $this->generateClasses($this->button_type, $this->button_size, (bool)$this->modal);
        $form_button_class = $this->generateClasses($this->form_button_type, $this->form_button_size, false);

        $this->render('callbackFormWidget', array(
            'modal' => (bool)$this->modal,
            'modal_width' => $this->modal_width,

            'form_model' => $form_model,

            'form_caption' => $this->form_caption,
            'form_description' => $this->form_description,
            'form_button_text' => $this->form_button_text,
            'form_widget_id' => $form_widget_id,
            'form_class' => $this->form_class,

            'form_button_text' => $this->form_button_text,
            'form_button_class' => $form_button_class,

            'button_text' => $this->button_text,
            'button_class' => $button_class,
        ));
    }
}

