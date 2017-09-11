<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMolTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mol', function (Blueprint $table){
            $table->increments('id');
            $table->integer('Nr');
            $table->string('NR_Factura');
            $table->string('Data_Tranz');
            $table->string('Data_Livrarii_bunurilor');
            $table->string('Ora');
            $table->string('Cust_name');
            $table->string('NR_Card');
            $table->string('NR_Inmatriculare');
            $table->string('Kilometraj');
            $table->string('CentruCost');
            $table->string('Statia');
            $table->string('Cod_produs');
            $table->string('Denumire_produs');
            $table->string('UM');
            $table->string('Cantitate');
            $table->string('Pret_unitar');
            $table->string('Total');
            $table->string('TVA');
            $table->string('Discount');
            $table->string('TVA_Discount');
            $table->string('NET_facturat');
            $table->string('TVA_facturat');
            $table->string('Total_facturat');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('mol');
    }
}
