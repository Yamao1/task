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
            'title' => 'required',
            'body' => 'required|string|email',
            'slug' => 'required',
        ];
    }

    public function messages()
    {
        return [
            'title.required' => 'Это поле надо обязательно заполнить',
            'body.required' => 'Это поле надо обязательно заполнить',
            'body.email' => 'Это поле для email',
            'slug.required' => 'Это поле надо обязательно заполнить',

        ];

    }
}
