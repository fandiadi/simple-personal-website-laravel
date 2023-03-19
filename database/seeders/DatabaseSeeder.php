<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Post;
use App\Models\Category;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {


        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        /* User::create([
            'name' => 'Fandi Adi Prasetio',
            'email' => 'fandiadi30@gmail.com',
            'password' => bcrypt('1234')
        ]); */

        User::create([
            'name' => 'Fandi Adi Prasetio',
            'username' => 'fandi',
            'email' => 'fandiadi30@gmail.com',
            'password' => bcrypt('password')
        ]);

        User::factory(3)->create();

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);


        Post::factory(20)->create();

        /* Post::create([
            'title' => 'Judul Pertama',
            'slug' => 'judul-pertama',
            'excerpt' => 'Ini adalah judul pendek postingan ke satu',
            'body' => '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptates voluptas similique ut omnis nobis corrupti laudantium perspiciatis distinctio consequatur, ea saepe magnam ullam officiis, provident veniam debitis doloribus quisquam incidunt beatae aperiam! Quos perspiciatis et error est alias nisi reiciendis.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero explicabo facere veniam cumque ex, iste quasi excepturi magnam dolor eius. Ratione, similique? Excepturi recusandae minus distinctio, ab veniam similique nostrum quis unde facilis adipisci voluptatum. Voluptates natus nisi voluptate cumque!</p><p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dicta aliquam labore saepe aperiam ut eum nostrum omnis, animi repellendus dolore fuga natus nulla perspiciatis, tempore exercitationem vitae ipsum ea cumque architecto. Expedita id incidunt quod! Provident magnam ipsam facere autem quia fugiat, id error facilis sequi vel earum repudiandae praesentium!</p>',
            'category_id' => 1,
            'user_id' => 1
        ]);

        Post::create([
            'title' => 'Judul Kedua',
            'slug' => 'judul-kedua',
            'excerpt' => 'Ini adalah judul pendek postingan ke kedua',
            'body' => '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptates voluptas similique ut omnis nobis corrupti laudantium perspiciatis distinctio consequatur, ea saepe magnam ullam officiis, provident veniam debitis doloribus quisquam incidunt beatae aperiam! Quos perspiciatis et error est alias nisi reiciendis.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero explicabo facere veniam cumque ex, iste quasi excepturi magnam dolor eius. Ratione, similique? Excepturi recusandae minus distinctio, ab veniam similique nostrum quis unde facilis adipisci voluptatum. Voluptates natus nisi voluptate cumque!</p><p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dicta aliquam labore saepe aperiam ut eum nostrum omnis, animi repellendus dolore fuga natus nulla perspiciatis, tempore exercitationem vitae ipsum ea cumque architecto. Expedita id incidunt quod! Provident magnam ipsam facere autem quia fugiat, id error facilis sequi vel earum repudiandae praesentium!</p>',
            'category_id' => 2,
            'user_id' => 1
        ]);

        Post::create([
            'title' => 'Judul Ketiga',
            'slug' => 'judul-ketiga',
            'excerpt' => 'Ini adalah judul pendek postingan ke ketiga',
            'body' => '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptates voluptas similique ut omnis nobis corrupti laudantium perspiciatis distinctio consequatur, ea saepe magnam ullam officiis, provident veniam debitis doloribus quisquam incidunt beatae aperiam! Quos perspiciatis et error est alias nisi reiciendis.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero explicabo facere veniam cumque ex, iste quasi excepturi magnam dolor eius. Ratione, similique? Excepturi recusandae minus distinctio, ab veniam similique nostrum quis unde facilis adipisci voluptatum. Voluptates natus nisi voluptate cumque!</p><p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dicta aliquam labore saepe aperiam ut eum nostrum omnis, animi repellendus dolore fuga natus nulla perspiciatis, tempore exercitationem vitae ipsum ea cumque architecto. Expedita id incidunt quod! Provident magnam ipsam facere autem quia fugiat, id error facilis sequi vel earum repudiandae praesentium!</p>',
            'category_id' => 1,
            'user_id' => 2
        ]);

        Post::create([
            'title' => 'Judul Keempat',
            'slug' => 'judul-keempat',
            'excerpt' => 'Ini adalah judul pendek postingan ke keempat',
            'body' => '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptates voluptas similique ut omnis nobis corrupti laudantium perspiciatis distinctio consequatur, ea saepe magnam ullam officiis, provident veniam debitis doloribus quisquam incidunt beatae aperiam! Quos perspiciatis et error est alias nisi reiciendis.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero explicabo facere veniam cumque ex, iste quasi excepturi magnam dolor eius. Ratione, similique? Excepturi recusandae minus distinctio, ab veniam similique nostrum quis unde facilis adipisci voluptatum. Voluptates natus nisi voluptate cumque!</p><p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dicta aliquam labore saepe aperiam ut eum nostrum omnis, animi repellendus dolore fuga natus nulla perspiciatis, tempore exercitationem vitae ipsum ea cumque architecto. Expedita id incidunt quod! Provident magnam ipsam facere autem quia fugiat, id error facilis sequi vel earum repudiandae praesentium!</p>',
            'category_id' => 2,
            'user_id' => 2
        ]); */
    }
}
