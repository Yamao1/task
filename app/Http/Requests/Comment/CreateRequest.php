<?php

namespace App\Http\Requests\Comment;

use Illuminate\Foundation\Http\FormRequest;

class CreateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'img'=>'image|mimes:jpg,png,gif',
//            'subject' => 'required',
            'body' => 'required',

        ];
    }
    public function messages()
    {
        return [
//            'subject.required' => 'Это поле надо обязательно заполнить',
            'body.required' => 'Это поле надо обязательно заполнить',
            'img.mimes' => 'Только для jpg,gif,png',
        ];

    }

}
