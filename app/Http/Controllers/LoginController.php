<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index()
    {
        return view('login.index', [
            'title' => 'Login',
            'active' => 'login'
        ]);
    }

    public function authenticate(Request $request)
    {
        $credentials = $request->validate([
            'email' => 'required|email:dns',
            'password' => 'required'
        ]);

        // Auth sebuah fungsi facades bawaan laravel untuk proses authentikasi
        if (Auth::attempt($credentials)) {
            // me regenerate session untuk mengantisipasi serangan "Session fixation"
            $request->session()->regenerate();
            // fungsi intended untuk meredirect ke middleware terlebih dahulu sebelum ke dashboard
            return redirect()->intended('/dashboard');
        }
        // return back ke halaman /login dengan loginError
        return back()->with('loginError', 'Login Failed!');
    }

    public function logout(Request $request)
    {
        // Panggil fungsi Auth::logout() dari facades
        Auth::logout();
        // terminate session yang digunakan saat login
        $request->session()->invalidate();
        // regenerate session baru untuk logout
        $request->session()->regenerateToken();

        return redirect('/');
    }
}
