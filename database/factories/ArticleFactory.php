<?php

namespace Database\Factories;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class ArticleFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $name = $this->faker->sentence(1, true);
        $text = $this->faker->sentence(10, true);
        $slug =  Str::substr(Str::lower(preg_replace('/\s+/', '-', $text )), 0, -1);

        return [
            'name' => $name,
            'email' => $this->faker->email(),
            'slug' => $slug,
            'created_at' => $this->faker->dateTimeBetween('-1 years'),
            'published_at'=> Carbon::now()
        ];
    }
}
