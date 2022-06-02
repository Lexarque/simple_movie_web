<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

</hr>

<h1>Simple IMDB Clone</h1>

<p>
    In this project I tried to create my own version of IMDB server side
</br>
    For now, the feature of this project are Movies CRUD(I made the content of it as similar as the original IMDB site, you can also post the poster of the movie, images are stored in public/images/), User Authentication and Authorization using JWT(*Note this JWT is not the original Tymon JWT, I'm using the php-open-source that's compatible with laravel 9*), You're able to add favorites for a certain User.</br>

<ul>
    Notes: 
   <li>Images are nullable by default</li> 
</ul>

</p>

<h1>Soon to be added feature</h1>
<ol>
    <li>Comment feature( A new role will be added on users table, so that only a certain people are able to comment on said movie(s) )</li>
    <li>Automatic rating feature( rating column on movies table are  automatically calculated based on ratings of the comments posted )</li>
</ol>

<h1>Database Design</h1>

![DB_IMDB_clone](https://user-images.githubusercontent.com/72777496/171546204-596763a8-b8fe-43e6-993c-0f99fca5cadc.png)</br>

<p style="font-size:22px; font-weight:bold;">*Filled DB are available inside the repo "imdb_clone.sql"</p>

<h1>Requests using postman</h1>
