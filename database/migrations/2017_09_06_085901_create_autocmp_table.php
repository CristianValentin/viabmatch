<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAutocmpTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('autocmp', function (Blueprint $table){
            $table->increments('id');
            $table->string('base_table_name');
            $table->string('raport_table_name');
            $table->string('user_id');
            $table->string('base_table_column');
            $table->string('raport_table_column');
        });
    }
    

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('autocmp');
    }
}
