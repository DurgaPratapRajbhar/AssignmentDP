<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class PropertyController extends Controller
{

 

	public function propertyList(Request $request){

     ## Read value
     $draw = $request->get('draw');
     $start = $request->get("start");
     $rowperpage = $request->get("length"); // Rows display per page

     $columnIndex_arr = $request->get('order');
     $columnName_arr = $request->get('columns');
     $order_arr = $request->get('order');
     $search_arr = $request->get('search');

     $columnIndex = $columnIndex_arr[0]['column']; // Column index
     $columnName = $columnName_arr[$columnIndex]['data']; // Column name
     $columnSortOrder = $order_arr[0]['dir']; // asc or desc
     $searchValue = $search_arr['value']; // Search value

     // Total records
      

			$users=DB::table('assigned_tasks')->select('assigned_tasks.title','assigned_tasks.id as task_id','property_location.updated_at as updated_time','assigned_tasks.house_id','property_location.street','property_location.city','property_location.county','property_location.zip')
			->join("property_location", "assigned_tasks.house_id", "=", "property_location.house_id")
			//->get();
			->where('assigned_tasks.title', 'like', '%' .$searchValue . '%')
			->skip($start)
			->take($rowperpage)
			->get();

			$totalRecords=count($users);
			$totalRecordswithFilter =DB::table('assigned_tasks')->select('assigned_tasks.title','assigned_tasks.id as task_id','property_location.updated_at as updated_time','assigned_tasks.house_id','property_location.street','property_location.city','property_location.county','property_location.zip')
			->join("property_location", "assigned_tasks.house_id", "=", "property_location.house_id")->where('assigned_tasks.title', 'like', '%' .$searchValue . '%')->count();


     $i=0;
     $data_arr = array();
     foreach($users as $record){ $i++;
        $data_arr[] = array(
          "id" => $i,
           "house_id" => $record->house_id,
          "address" => $record->street.','.$record->city.','.$record->county.','.$record->zip,
          "task_id" => $record->task_id,
          "title" => $record->title,
          "updated_time" => $record->updated_time
        );
     }

     $response = array(
        "draw" => intval($draw),
        "iTotalRecords" => $totalRecords,
        "iTotalDisplayRecords" => $totalRecordswithFilter,
        "aaData" => $data_arr
     );

    return response($response, 200);

}

}
