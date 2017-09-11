<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

use App\Mol;
use DB;
use Excel;

class ImportController extends Controller
{
   public function importExport()
	{
		return view('importExport');
	}
	public function downloadExcel($type)
	{
		$data = Mol::get()->toArray();
		return Excel::create('itsolutionstuff_example', function($excel) use ($data) {
			$excel->sheet('mySheet', function($sheet) use ($data)
	        {
				$sheet->fromArray($data);
	        });
		})->download($type);
	}
	//function for importing mol tables
	public function importExcelmol(Request $request)
	{
			$path = 'public' . $request->input('file_path');
			$report_type =$request->input('report_type');
			if($report_type==='mol'){
					$data = Excel::load($path, function($reader) {
					})->get();
					
					if(!empty($data) && $data->count()){
						$i=1;	
						foreach ($data as $key => $value) {	
							$insert[] = [
								'Nr'  => $i, 
								'NR_Factura'  => $value['nr_factura'], 
								'Data_Tranz'  => $value['data_tranz'], 
								'Data_Livrarii_bunurilor'  => $value['data_livrarii_bunurilor'], 
								'Ora'  => $value['ora'], 
								'Cust_name'  => $value['cust_name'], 
								'NR_Card'  => $value['nr_card'], 
								'NR_Inmatriculare'  => $value['nr_inmatriculare'], 
								'Kilometraj'  => $value['kilometraj'], 
								'CentruCost'  => $value['centrucost'], 
								'Statia'  => $value['statia'], 
								'Cod_produs'  => $value['cod_produs'], 
								'Denumire_produs'  => $value['denumire_produs'], 
								'UM'  => $value['um'], 
								'Cantitate'  => $value['cantitate'], 
								'Pret_unitar'  => $value['pret_unitar'], 
								'Total'  => $value['total'], 
								'TVA'  => $value['tva'], 
								'Discount'  => $value['discount'], 
								'TVA_Discount'  => $value['tva_discount'], 
								'NET_facturat'  => $value['net_facturat'], 
								'TVA_facturat'  => $value['tva_facturat'], 
								'Total_facturat'  => $value['total_facturat'], 
							];
							$i++;
						}
						if(!empty($insert)){
							//echo "message";
							//this is so I know if a file has been uploaded or not
							$db_path = $request->input('file_path');
							$db_path = str_replace('/storage/cover_images/', "", $db_path);
							$query = "UPDATE `uploads` SET `imported`='da' where `file_path` = '" . $db_path . "'";
                			$data1 = DB::update($query);
							//just making sure that previous stuff is not going to be there
							DB::table('mol')->delete();
							// inserting stuff in db
							DB::table('mol')->insert($insert);
							//dd('Insert Record successfully.');
							return redirect('/uploads')->with('success','Mol import successful');
						}
					}
					
			}
		return $path;
	}	
	//function for importing viab tables
	public function importExcelviab(Request $request)
	{
			$path = 'public' . $request->input('file_path');
			$report_type =$request->input('report_type');		
			if($report_type==='viab'){
					$data = Excel::load($path, function($reader) {
					})->get();
					if(!empty($data) && $data->count()){
						$i=1;
						foreach ($data as $key => $value) {						
							$insert[] = [
								'Nr'  => $i,
								'Masina'  => $value['masina'], 
								'Data'  => $value['data'], 
								'Localitate'  => $value['localitate'], 
								'Tara'  => $value['tara'], 
								'Valoare'  => $value['valoare'], 
								'Valuta'  => $value['valuta'], 
								'TVa'  => $value['tva'], 
								'Litri'  => $value['litri'], 
								'Document'  => $value['document'], 
								'Metoda_Plata'  => $value['metoda_plata'], 
								'Card'  => $value['card'], 
								'Validat'  => $value['validat'], 
								'Doc_Validare'  => $value['doc._validare'], 
								'Data_Doc_Validare'  => $value['data_doc_validare'], 
							];
							$i++;		
						}
						if(!empty($insert)){
							//this is so I know if a file has been uploaded or not
							$db_path = $request->input('file_path');
							$db_path = str_replace('/storage/cover_images/', "", $db_path);
							$query = "UPDATE `uploads` SET `imported`='da' where `file_path` = '" . $db_path . "'";
                			$data1 = DB::update($query);
							DB::table('viab')->delete();
							DB::table('viab')->insert($insert);
							return redirect('/uploads')->with('success','Viab import successful');
						}
					}
			}
		return $path;
	}
	//function for importing copyofviab tables
	public function importExcelviab_copyofviab(Request $request)
	{
			$path = 'public' . $request->input('file_path');
			$report_type =$request->input('report_type');		
			if($report_type==='copyofviab'){
					$data = Excel::load($path, function($reader) {
					})->get();
					if(!empty($data) && $data->count()){
						$i=1;
						foreach ($data as $key => $value) {						
							$insert[] = [
								'Nr'  => $i, 
								'Masina'  => $value['masina'], 
								'Data'  => $value['data'], 
								'Localitate'  => $value['localitate'], 
								'Tara'  => $value['tara'], 
								'Valoare'  => $value['valoare'], 
								'Valuta'  => $value['valuta'], 
								'TVa'  => $value['tva'], 
								'Litri'  => $value['litri'], 
								'Document'  => $value['document'], 
								'Metoda_Plata'  => $value['metoda_plata'], 
								'Card'  => $value['card'], 
								'Validat'  => $value['validat'], 
								'Doc_Validare'  => $value['doc._validare'], 
								'Data_Doc_Validare'  => $value['data_doc_validare'], 
							];	
							$i++;	
						}
						if(!empty($insert)){
							//this is so I know if a file has been uploaded or not
							$db_path = $request->input('file_path');
							$db_path = str_replace('/storage/cover_images/', "", $db_path);
							$query = "UPDATE `uploads` SET `imported`='da' where `file_path` = '" . $db_path . "'";
                			$data1 = DB::update($query);	
							DB::table('copyofviab')->delete();
							DB::table('copyofviab')->insert($insert);
							return redirect('/uploads')->with('success','viab_copy import successful');
						}
					}
			}
		return $path;
	}
	//function for importing shell tables
	public function importExcelshell(Request $request)
	{
			$path = 'public' . $request->input('file_path');
			$report_type =$request->input('report_type');		
			if($report_type==='shell'){
					$data = Excel::load($path, function($reader) {
					})->get();
					//var_dump($data);
					if(!empty($data) && $data->count()){
						$i=1;
						foreach ($data as $key => $value){ 		

							$order_date = implode('-', array_reverse(explode('/', $value['order_date'])));
							$delivery_date = implode('-', array_reverse(explode('/', $value['delivery_date']))); 			
							
							$insert[] = [
							'Nr'  => $i, 
							'Order_Number' =>$value['order_number'],
							'Order_Date' => $order_date ,
							'Country_Id' =>$value['country_id'],
							'Country_Name' =>$value['country_name'],
							'Delivery_Date' => $delivery_date, 
							'Customer_Id' =>$value['customer_id'],
							'Customer_Name' =>$value['customer_name'],
							'Card' =>$value['card'],
							'Vehicle' =>$value['vehicle'],
							'Kilometrage' =>$value['kilometrage'],
							'Station_Id' =>$value['station_id'],
							'Station_Name' =>$value['station_name'],
							'Product_Id' =>$value['product_id'],
							'Product_Name' =>$value['product_name'],
							'Local_Currency_Code' =>$value['local_currency_code'],
							'Local_Quantity' =>$value['local_quantity'],
							'Price' =>$value['price'],
							'Rebate_Amount' =>$value['rebate_amount'],
							'Local_Total_Amount' =>$value['local_total_amount'],
							'Loca_Total' =>$value['loca_total'],
							'Net_Amount' =>$value['net_amount'],
							'Vat_Amount' =>$value['vat_amount'],
							'Total_Amount' =>$value['total_amount'],
							'QTYF' =>$value['qtyf'],
							'Tax_Net_Amount' =>$value['tax_net_amount'],
							'Tax_Vat_Amount' =>$value['tax_vat_amount'],
							'Tax_Total_Amount' =>$value['tax_total_amount'],
							'Motorina_Quantity' =>$value['motorina_quantity'],
							'Card_No' =>$value['card_no'],
							'Link_Header' =>$value['link_header'],
							];	
							$i++;	
						}
						if(!empty($insert)){
							//this is so I know if a file has been uploaded or not
							$db_path = $request->input('file_path');
							$db_path = str_replace('/storage/cover_images/', "", $db_path);
							$query = "UPDATE `uploads` SET `imported`='da' where `file_path` = '" . $db_path . "'";
                			$data1 = DB::update($query);
							DB::table('shell')->delete();
							DB::table('shell')->insert($insert);
							return redirect('/uploads')->with('success','shell import successful');
						}
					}
			}
		return $path;
	}	
}