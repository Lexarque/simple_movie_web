<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\UserLoginRequest;
use App\Http\Requests\UserRegisterRequest;
use PHPOpenSourceSaver\JWTAuth\Facades\JWTAuth;

class UserController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware('auth:api', ['except' => ['login','register']]);
    // }

    public function login(UserLoginRequest $request)
    {
        $credentials = $request->only('email', 'password');
        $role = DB::table('users')->where('email', $request->email)->value('role');

        $token = JWTAuth::attempt($credentials);
        if (!$token) {
            return response()->json([
                'status' => '0',
                'message' => 'Unauthorized',
            ], 401);
        }

        $user = Auth::user();
        return response()->json([
                'status' => '1',
                'user' => $user,
                'role' => $role,
                'authorization' => [
                    'token' => $token,
                    'type' => 'Bearer',
                ]
            ]);

    }

    public function register(UserRegisterRequest $request){

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => $request->password,
            'role' => $request->role,
        ]);

        $token = JWTAuth::login($user);
        return response()->json([
            'status' => 'success',
            'message' => 'User created successfully',
            'user' => $user,
            'authorisation' => [
                'token' => $token,
                'type' => 'bearer',
            ]
        ]);
    }

    public function logout()
    {
        Auth::logout();
        return response()->json([
            'status' => '1',
            'message' => 'Successfully logged out',
        ]);
    }

    public function GetAuth()
    {
        $user = Auth::user();
        if (! $user = JWTAuth::parseToken()->authenticate()) {
            return response()->json(['user_not_found'], 404);
        }
        return response()->json(['status' => '1', 'user' => $user]);
    }
}
