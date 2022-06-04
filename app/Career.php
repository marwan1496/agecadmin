<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Career extends Model
{
    use Translatable;
    protected $translatable = ['title','description','responsibilities'];
}
