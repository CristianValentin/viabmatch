<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Viab extends Model
{
    public $fillable =[ 'Masina',
                        'Data',
                        'Localitate',
                        'Tara',
                        'Valoare',
                        'Valuta',
                        'TVa',
                        'Litri',
                        'Document',
                        'Metoda Plata',
                        'Card',
                        'Validat',
                        'Doc Validare',
                        'Data Doc Validare',
                        ];
}
