<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Movies>
 */
class MoviesFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'title' => $this->faker->sentence(3, true),
            'description' => $this->faker->text(50),
            'director' => $this->faker->firstName(),
            'rating' => $this->faker->randomFloat(1, 1, 10),
            'trailer_link' => $this->faker->url(),
        ];
    }
}
