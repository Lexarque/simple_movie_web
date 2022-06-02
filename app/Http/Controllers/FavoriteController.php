<?php

namespace App\Http\Controllers;

use App\Models\Favorite;
use App\Http\Requests\FavoriteRequest;
use Illuminate\Support\Facades\DB;

class FavoriteController extends Controller
{
    public function show()
    {
      return Favorite::all();
    }

    public function by_movies($id){
        
        $result = DB::table('favorites')->select('movies.title', 'favorites.*')->join('movies', 'favorites.id_movie','movies.id')->where('favorites.id_movie', $id)->get();
        
        if($result->isNotEmpty()){
            return response()->json(['data' => $result, 'status' => 1], 200);
        }else{
            $data = Favorite::all();
            return response()->json(['message' => 'Movie has not been favorited by anyone', 'data' => $data, 'status' => 0]);
        }
    }

    public function by_users($id){
        
        $result = DB::table('favorites')->select('users.name', 'users.email', 'favorites.*')->join('users', 'favorites.id_user','users.id')->where('favorites.id_user', $id)->get();
        
        if($result->isNotEmpty()){
            return response()->json(['data' => $result, 'status' => 1], 200);
        }else{
            $data = Favorite::all();
            return response()->json(['message' => 'Movie not found', 'data' => $data, 'status' => 0], 404);
        }
    }

    public function store(FavoriteRequest $request){
        
        $store = Favorite::create([
            'id_movie' => $request->id_movie,
            'id_user' => $request->id_user
        ]);

        if($store){
            return response()->json(['message' => 'User Favorite data added', 'data' => $store,'status' => 1], 200);
        }else{
            return response()->json(['message' => 'Store Failed', 'status' => 0]);
        }
    }

    public function update(FavoriteRequest $request, $id){
        
        $update = Favorite::where('id', $id)->update([
            'id_movie' => $request->id_movie,
            'id_user' => $request->id_user
        ]);

        if($update){
            return response()->json(['message' => 'User Favorite data successfully updated', 'data' => $request->validated(),'status' => 1], 200);
        }else{
            return response()->json(['message' => 'Update Failed', 'status' => 0]);
        }
    }

    public function delete($id){

        $delete = Favorite::where('id', $id)->delete();

        if($delete){
            return response()->json(['message' => 'Data deleted on id : "'.$id.'"','status' => 1], 200);
        }else{
            return response()->json(['message' => 'Delete Failed', 'status' => 0]);
        }
    }
}
