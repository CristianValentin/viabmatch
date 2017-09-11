<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateViabTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('viab', function (Blueprint $table){
            $table->increments('id');
            $table->integer('Nr');
            $table->string('Masina');
            $table->string('Data');
            $table->string('Localitate');
            $table->string('Tara');
            $table->string('Valoare');
            $table->string('Valuta');
            $table->string('TVa');
            $table->string('Litri');
            $table->string('Document')->nullable();
            $table->string('Metoda_Plata')->nullable();
            $table->string('Card')->nullable();
            $table->string('Validat')->nullable();
            $table->string('Doc_Validare')->nullable();
            $table->string('Data_Doc_Validare')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('viab');
    }
}
