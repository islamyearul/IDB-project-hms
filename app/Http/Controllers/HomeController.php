<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $user = \DB::table('users')->count();
        $doctors = \DB::table('doctors')->count();
        $inpatients = \DB::table('in_patients')->count();
        $beds = \DB::table('beds')->count();
        $departments = \DB::table('departments')->count();
        $employees = \DB::table('departments')->count();

        return view('admin.dashboard',  compact('user', 'doctors', 'inpatients', 'beds', 'departments'));
    }
}
