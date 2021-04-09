<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bill extends Model
{
    //
    protected $table="bills";
    public function detailbills(){
        return $this->hasMany('App\Detailbill', 'bill','id');
    }
    public function users(){
        return $this->belongsTo('App\User', 'user','id');
    }
    public function product(){
        return $this->belongsToMany('App\Product','App\Detailbill','product','bill');
    }
}
