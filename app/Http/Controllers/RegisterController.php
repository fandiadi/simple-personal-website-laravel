<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class RegisterController extends Controller
{
    public function index()
    {
        return view('register.index', [
            'title' => 'Register',
            'active' => 'register'
        ]);
    }

    // method store data dari form Register
    public function store(Request $request)
    {
        // Proses validate data menggunakan fungsi validate() laravel
        $validatedData = $request->validate([
            'name' => 'required|min:3|max:50',
            'username' => 'required|min:4|max:25|unique:users',
            'email' => 'required|email:dns|unique:users',
            'password' => 'required|min:5|max:255'
        ]);
        // get data password & rubah password menjadi enkripsi dengan bcrypt
        //$validatedData['password'] = bcrypt($validatedData['password']);

        // fungsi dibawah dan diatas sama yaitu untuk enkrip password (default menggunakan brypt)
        $validatedData['password'] = bcrypt($validatedData['password']);
        User::create($validatedData);


        // me redirect ke halaman /login dengan membawa pesan success
        return redirect('/login')->with('success', 'Registration Successfull! Please Login');

        // Fungsi diatas sama dengan fungsi dibawah, cuma fungsi diatas jauh lebih ringkas
        //$request->session()->flash('success', 'Registration Successfull! Please Login');
    }
}
