<?php

namespace App\Http\Controllers;

use App\Http\Requests\MoviesPosterRequest;
use App\Http\Requests\MoviesRequest;
use App\Models\Movies;
use Illuminate\Http\Request;

class MoviesController extends Controller
{
    public function show()
    {
      return Movies::all();
    }

    public function detail($id){
        
        $result = Movies::where('id', $id)->first();

        if($result->exists()){    
            return response()->json(['data' => $result, 'status' => 1], 200);
        }else{
            return response()->json(['message' => 'Movie not found', 'status' => 0], 404);
        }
    }

    public function title($title){
        
        $result = Movies::where('title', 'like', '%'.$title.'%')->first();
        
        if($result->exists()){
            return response()->json(['data' => $result, 'status' => 1], 200);
        }else{
            $data = Movies::all();
            return response()->json(['message' => 'Movie not found', 'data' => $data,'status' => 0], 404);
        }
    }

    public function store(MoviesRequest $request){
        
        $store = Movies::create([
            'title' => $request->title,
            'description' => $request->description,
            'director' => $request->director,
            'rating' => $request->rating,
            'trailer_link' => $request->trailer_link
        ]);

        if($store){
            return response()->json(['message' => 'Movie successfully added', 'data' => $store,'status' => 1], 200);
        }else{
            return response()->json(['message' => 'Store Failed', 'status' => 0]);
        }
    }

    public function update(MoviesRequest $request, $id){
        
        $update = Movies::where('id', $id)->update([
            'title' => $request->title,
            'description' => $request->description,
            'director' => $request->director,
            'rating' => $request->rating,
            'trailer_link' => $request->trailer_link
        ]);

        if($update){
            return response()->json(['message' => 'Movie data successfully updated', 'data' => $request->validated(),'status' => 1], 200);
        }else{
            return response()->json(['message' => 'Update Failed', 'status' => 0]);
        }
    }

    public function delete($id){

        $delete = Movies::where('id', $id)->delete();

        if($delete){
            return response()->json(['message' => 'Data deleted on id : "'.$id.'"','status' => 1], 200);
        }else{
            return response()->json(['message' => 'Delete Failed', 'status' => 0]);
        }
    }

    public function upload_image($id, MoviesPosterRequest $request){
    
        $imageName = time().".".$request->movie_poster->extension();
        
        $request->movie_poster->move(public_path('images'), $imageName);

        $update= Movies::where('id', $id)->update(['image' => $imageName]);

        $data = Movies::where('id', $id)->get();
        
        if($update){
            return Response()->json([
                'status' => 1,
                'message' => 'Success updated movie poster',
                'data' => $data
            ]);
        }else{
            return Response()->json([
                'status' => 0,
                'message' => 'Action failed',
            ]);
        }
    }
}
