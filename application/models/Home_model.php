<?php

class Home_model extends CI_Model {

    //http://ellislab.com/codeigniter/user-guide/general/models.html#what

    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }

    function get_equipment($limit, $offset)
    {
            $query = $this->db->query('
                select items.id, items.name, items.serial, status.`status`, loans.date_due_in, image_thumb
                from items
                left outer join loans
                on loans.`item_id` = items.`id`
                join status on status.`id` = items.`status_id`
                where (items.`status_id`  != 3)
                and items.active = 1
                group by items.name
                limit '. $limit .' offset ' . $offset);


        return $query->result();
    }

    function get_equipment_count()
    {
            $query = $this->db->query('
                select count(items.id) as count
                from items
                where items.status_id != 3
                and items.active = 1');

        return $query->result();

    }


    function get_equipment_item($id)
    {

        if(!is_numeric($id)){
            $id = 0;
        }

            $query = $this->db->query('
            select i.id, i.name, i.serial, i.image, i.image_thumb, s.status
            from items i,
            status s
            where i.status_id = s.id
            and s.id = 1
            and i.id = '. $id .'
            ');


        return $query->result();
    }


    function book_request()
    {

        $this->item_id = $_POST['item'];
        $this->firstname = $_POST['firstname'];
        $this->surname = $_POST['surname'];
        $this->email = $_POST['email'];
        $this->purpose = $_POST['purpose'];
        $this->date_requested = date("Y-m-d H:i:s");
        $this->duration = $_POST['duration'];
        $this->item_name = $_POST['item_name'];
        $this->booked = 1;

        //echo(count($_POST['accessory']));
        // vdebug($this);
        // exit;

        if(@$_POST['accessory']){

            foreach($_POST['accessory'] as $acc){
                $this->item_id = $acc;

                //book the item for loan
                $this->db->insert('loans', $this);

                //update status of accessory items to 4 (booked for collection)
                $update_query = $this->db->query('update items set status_id = 4 where id = ' . $this->item_id);
            }
        }

        // echo('Here');
        // exit();

        $this->item_id = $_POST['item'];
        $this->db->insert('loans', $this);

        $insertid = $this->db->insert_id();

        //update status of accessory items to 4 (booked for collection)
        $update_query = $this->db->query('update items set status_id = 4 where id = ' . $this->item_id);

        return($insertid);

    }

    function get_linked_items($id)
    {

        if(!is_numeric($id)){
            $id = 0;
        }

        $query = $this->db->query('
        select i.id, i.name, i.serial, i.image, i.image_thumb, s.status
        from items i
        inner join linked_items li on li.item_id = i.id
        inner join status s on s.id = i.status_id
        where i.active = 1 and li.master_id = ' . $id);

        return $query->result();
    }

    function lookup_returns_due()
    {

        $query = $this->db->query('select * from loans
        where (date_due_in <= NOW()
        or  date_due_in between NOW() and NOW() + INTERVAL 2 DAY)
        and returned is null');

        return $query->result();

    }


}
?>
