<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ArticleRequest extends FormRequest
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
            'name' => 'required',
            'email' => 'required|string|email',
            'slug' => 'required',
        ];
    }

    public function messages()
    {
        return [
            'name.required' => 'Это поле надо обязательно заполнить',
            'email.required' => 'Это поле надо обязательно заполнить',
            'email.email' => 'Это поле для email',
            'slug.required' => 'Это поле надо обязательно заполнить',

        ];

    }
}
