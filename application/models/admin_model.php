<?php

class Admin_model extends CI_Model {

    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }

	function get_loans($limit, $offset)
	{
	    $query = $this->db->query('
select loans.*, 
            items.name,items.serial,
            users.firstname as return_logged_firstname, users.surname as return_logged_surname,
            u.firstname as released_by_firstname, u.surname as released_by_surname
            from loans
            inner join items on items.id = loans.item_id
            inner join status on status.id = items.status_id
            left outer join users on users.id = loans.return_logged_by
            left outer  join users u on u.id = loans.loan_released_by
            order by loans.id desc 
            limit '. $limit .' offset ' . $offset);

        return $query->result();
	}

    function get_loans_count()
    {
            $query = $this->db->query('
                select count(loans.id) as count
                from loans
                inner join items on items.id = loans.item_id
                inner join status on status.id = items.status_id
                left outer join users on users.id = loans.return_logged_by
                left outer  join users u on u.id = loans.loan_released_by
                order by loans.id desc');

        return $query->result();

    }



    function get_equipment($limit, $offset)
    {
        $query = $this->db->query('
            select * from items
            order by name asc
            limit '. $limit .' offset ' . $offset);

        return $query->result();
    }


    function get_equipment_count()
    {
            $query = $this->db->query('
            select count(id) as count from items
            order by name asc
            ');

        return $query->result();

    }

    function get_equipment_item($id)
    {

        if(!is_numeric($id)){
            $id = 0;
        }

            $query = $this->db->query('
            select i.id, i.name, i.serial, i.image, i.image_thumb, s.status, i.active
            from items i,
            status s
            where i.status_id = s.id
            and i.id = '. $id .'
            ');


        return $query->result();
    }


    function add_new() //add new item
    {

    //set up image files
    if ($_FILES['image']['type'] == 'image/jpeg'){

        //set up $this object for active record update
        $this->name = $_POST['name'];
        $this->serial = $_POST['serial'];
        $this->status_id = $_POST['status'];
        // $this->image = $_POST['item'] . '.jpg';
        // $this->image_thumb = $_POST['item'] . '_thumb.jpg';

        if($_POST['active'][0] == 'on'){
            $this->active = 1;
        }else{
            $this->active = 0;
        }

        //update using active record on the $this object
        $this->db->insert('items', $this);
        $db_id = $this->db->insert_id();

        //move file
        $image_dest_name = "assets/img/stock-images/" . @$db_id . '.jpg';
        $image_dest_thumb_name = "assets/img/stock-images/" . @$db_id . '_thumb.jpg';

        if(move_uploaded_file($_FILES["image"]["tmp_name"],$image_dest_name)){
        }else{
        die('Error uploading image file');
        }

        //create thumbnail
        $this->make_thumb($image_dest_name,$image_dest_thumb_name,113);

        //now update database with image details
        $this->image = @$db_id . '.jpg';
        $this->image_thumb = @$db_id . '_thumb.jpg';

        $this->db->where('id', @$db_id);
        $this->db->update('items', $this);


    }else{
        die('No Image Uploaded. (Check its a jpeg).');
    }

        return true;

    }

    function save_edit() //from edit mode
    {

    //set up image files
    if ($_FILES['image']['type'] == 'image/jpeg'){
        //move file

        $image_dest_name = "assets/img/stock-images/" . $_POST['item'] . '.jpg';
        $image_dest_thumb_name = "assets/img/stock-images/" . $_POST['item'] . '_thumb.jpg';

        if(move_uploaded_file($_FILES["image"]["tmp_name"],$image_dest_name)){
        }else{
        die('Error uploading image file');    
        }

    //create thumbnail
    $this->make_thumb($image_dest_name,$image_dest_thumb_name,113);

    }

        //set up $this object for active record update
        $this->name = $_POST['name'];
        $this->serial = $_POST['serial'];
        $this->status_id = $_POST['status'];
        $this->image = $_POST['item'] . '.jpg';
        $this->image_thumb = $_POST['item'] . '_thumb.jpg';

        if($_POST['active'][0] == 'on'){
            $this->active = 1;
        }else{
            $this->active = 0;
        }

        //update using active record on the $this object
        $this->db->where('id', $_POST['item']);
        $this->db->update('items', $this);


        //now delete and insert linked items
 if(@$_POST['accessory']){

        //delete all linked items associated with this item from DB first
        $delete_query = $this->db->query('delete from linked_items where master_id = ' . $_POST['item']);


            //now insert the new ones
            foreach($_POST['accessory'] as $acc){
                $this->item_id = $acc;
                $insert_query = $this->db->query('insert into linked_items(item_id, master_id) values(' . $acc .' , '. $_POST['item'] .')');
            }

 }

    }


function make_thumb($src, $dest, $desired_width) {

    /* read the source image */
    $source_image = imagecreatefromjpeg($src);
    $width = imagesx($source_image);
    $height = imagesy($source_image);
    
    /* find the "desired height" of this thumbnail, relative to the desired width  */
    $desired_height = floor($height * ($desired_width / $width));
    
    /* create a new, "virtual" image */
    $virtual_image = imagecreatetruecolor($desired_width, $desired_height);
    
    /* copy source image at a resized size */
    imagecopyresampled($virtual_image, $source_image, 0, 0, 0, 0, $desired_width, $desired_height, $width, $height);
    
    /* create the physical thumbnail image to its destination */
    imagejpeg($virtual_image, $dest);
}



    function log_issue($id, $duration, $item_id)
    {
        //update loans table
        $update_query = $this->db->query('update loans set loaned = 1, date_out = now(), date_due_in = FROM_UNIXTIME(' . $duration . ') where id = ' . $id);

        //also update the status in the items table
        $update_query = $this->db->query('update items set status_id = 2 where id = ' . $item_id);

    }

    function log_return($id, $item_id)
    {
        //update loans table
        $update_query = $this->db->query('update loans set returned = 1, date_returned = now() where id = ' . $id);

        //also update the status in the items table
        $update_query = $this->db->query('update items set status_id = 1 where id = ' . $item_id);

    }


    function get_equipment_for_linking()
    {
        $query = $this->db->query('
            select id,name from items
            order by name asc');

        return $query->result();
    }

    function get_linked_items($id)
    {
        if(!is_numeric($id)){
            $id = 0;
        }

        $query = $this->db->query('
        select i.id, i.name
        from items i
        inner join linked_items li on li.item_id = i.id
        inner join status s on s.id = i.status_id
        where i.active = 1 and li.master_id = ' . $id);

        return $query->result();
    }

    function authenticate($email, $password){

        $query = $this->db->query("select id, access from users where email= '$email' and password = '$password'");

        if(count($query->result()) == 1){
            return(TRUE);
        }else{
            return(FALSE);
        }

//echo(count($query->result()));

        vdebug($query->result());
        exit();
    }

}