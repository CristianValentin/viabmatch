<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mol extends Model
{
    public $fillable =['NR_Factura',
                        'Data_Tranz',
                        'Data_Livrarii_bunurilor',
                        'Ora',
                        'Cust_name',
                        'NR_Card',
                        'NR_Inmatriculare',
                        'Kilometraj',
                        'CentruCost',
                        'Statia',
                        'Cod_produs',
                        'Denumire_produs',
                        'UM',
                        'Cantitate',
                        'Pret_unitar',
                        'Total',
                        'TVA ',
                        'Discount',
                        'TVA_Discount',
                        'NET_facturat',
                        'TVA_facturat',
                        'Total_facturat'];
}

