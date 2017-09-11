<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateShell2Table extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('shell', function (Blueprint $table){
            $table->increments('id');
            $table->integer('Nr');
            $table->string('Order_Number')->nullable();
            $table->string('Order_Date')->nullable();
            $table->string('Country_Id')->nullable();
            $table->string('Country_Name')->nullable();
            $table->string('Delivery_Date')->nullable();
            $table->string('Customer_Id')->nullable();
            $table->string('Customer_Name')->nullable();
            $table->string('Card')->nullable();
            $table->string('Vehicle')->nullable();
            $table->string('Kilometrage')->nullable();
            $table->string('Station_Id')->nullable();
            $table->string('Station_Name')->nullable();
            $table->string('Product_Id')->nullable();
            $table->string('Product_Name')->nullable();
            $table->string('Local_Currency_Code')->nullable();
            $table->string('Local_Quantity')->nullable();
            $table->string('Price')->nullable();
            $table->string('Rebate_Amount')->nullable();
            $table->string('Local_Total_Amount')->nullable();
            $table->string('Loca_Total')->nullable();
            $table->string('Net_Amount')->nullable();
            $table->string('Vat_Amount')->nullable();
            $table->string('Total_Amount')->nullable();
            $table->string('QTYF')->nullable();
            $table->string('Tax_Net_Amount')->nullable();
            $table->string('Tax_Vat_Amount')->nullable();
            $table->string('Tax_Total_Amount')->nullable();
            $table->string('Motorina_Quantity')->nullable();
            $table->string('Card_No')->nullable();
            $table->string('Link_Header')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('shell');
    }
}
