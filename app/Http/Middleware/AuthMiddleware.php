<?php

namespace App\Http\Middleware;

use Closure;
use Exception;
use Illuminate\Http\Request;
use PHPOpenSourceSaver\JWTAuth\Facades\JWTAuth;

class AuthMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next, ...$role)
    {
        try{
            $user = JWTAuth::parseToken()->authenticate();
        }catch (Exception $e) 
            {
                // if ($e instanceof \PHPOpenSourceSaver\JWTAuth\Exceptions\TokenInvalidException){
                //     return response()->json(['status' => 'Token is Invalid']);
                // }else if ($e instanceof \PHPOpenSourceSaver\JWTAuth\Exceptions\TokenExpiredException){
                //     return response()->json(['status' => 'Token is Expired']);
                // }else{
                return response()->json(['status' => 'Something is wrong with the token']);
                
            }
            if($user && in_array($user->role, $role)){
                return $next($request);
            }else{
                return response()->json(['message' => 'Invalid Role'], 404);
            }
    }
}


