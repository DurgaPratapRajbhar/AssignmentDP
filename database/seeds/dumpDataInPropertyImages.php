<?php

use Illuminate\Database\Seeder;
use App\Models\Property_images;
class dumpDataInPropertyImages extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('property_images')->truncate();
        $details = DB::table('property_location')->get();
        $images = false;
        foreach($details as $key => $detail) {
            
            $name   = time().'.jpg';
            $images[] = [
                'house_id'      => $detail->house_id,
                'user_id'       => $detail->user_id,
                'img_name'      => $name,
                'primary_image' => $name,
                'image_caption' => 'Image Caption '. $key,
                'created_at'    => $detail->created_at,
                'updated_at'    => $detail->created_at
             ];
        }
           DB::table('property_images')->insert($images);
        // dump data in property_images table using insert batch
        
    }
}
