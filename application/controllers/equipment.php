<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Equipment extends CI_Controller {

	public function index()
	{

        $this->load->view('/common/header_view');
		$this->load->view('home_view');
        $this->load->view('/common/footer_view');

    }

	public function browse()
	{

        $this->load->model('Home_model','Home_model');

        $this->load->view('/common/header_view');


//pagination
//http://ellislab.com/codeigniter%20/user-guide/libraries/pagination.html

        $config['base_url'] = '/equipment/browse/page/';
        $dbcount = $this->Home_model->get_equipment_count();
        $config['per_page'] = 5;
        $config['num_links'] = 10;
        $config['total_rows'] = $dbcount[0]->count;
        $config['uri_segment'] = 4;
        $config['first_link'] = 'First';
        $config['last_link'] = 'Last';

        if($this->uri->segment(4)){
            $offset = $this->uri->segment(4);
        }else{
            $offset = 0;
        }

        $limit = $config['per_page'];

        $this->pagination->initialize($config); 


        $data['equipment'] = $this->Home_model->get_equipment($limit ,$offset);
		$this->load->view('browse_view', $data);


        $this->load->view('/common/footer_view');

    }


	public function request($id = 0)
	{
        $this->load->view('/common/header_view');
        $this->load->model('Home_model','Home_model');
        $data['equipment_item'] = $this->Home_model->get_equipment_item($id);

        $data['equipment_linked_items'] = $this->Home_model->get_linked_items($id);
		
        $this->load->view('request_view', $data);
        $this->load->view('/common/footer_view');

    }

	public function book($id = 0)
	{

        $this->load->view('/common/header_view');
        $this->load->model('Home_model','Home_model');

		$data['last_insert_id'] = $this->Home_model->book_request();

        $this->SendBookingEmail($data['last_insert_id'], $_POST['email'], 'userbooking', $_POST['item_name'], $_POST['firstname']);
        $this->SendBookingEmail($data['last_insert_id'], 'keith.stephens@atoc.org', 'admincopy', $_POST['item_name'], $_POST['firstname']);

        $this->load->view('add_view', @$data);
        $this->load->view('/common/footer_view');

	}

	public function contact()
	{
        $this->load->view('/common/header_view');
        $this->load->view('contact_view');
        $this->load->view('/common/footer_view');
    }


public function SendBookingEmail($Bookingid, $UserEmail, $Mode, $ItemName, $UserName){
        //send emails
        //http://ellislab.com/codeigniter/user-guide/libraries/email.html
        $this->load->library('email');

        $this->email->from('booking@equipment.nre.co.uk', 'NRE Equipment Booking System');

        if($Mode == 'userbooking'){
            $this->email->to($UserEmail); 
            $this->email->subject('NRE Equipment Booking Confirmation');
            $this->email->message($UserName . ' , your booking has been received. You have booked: '. $ItemName .'.
Your reference number is: '. $Bookingid .'
Please go and see the Web Development Manager with your booking ID to pick up your item(s).
'); 
        }

        if($Mode == 'admincopy'){
            $this->email->to('keith.stephens@atoc.org'); 
            $this->email->subject('Equipment Booking - Admin Copy');
            $this->email->message($ItemName . ' has been booked.
                The reference number is: '. $Bookingid .'
            ');  
        }


        $this->email->send();

       // echo $this->email->print_debugger();
       // exit();
}

//http://equip/equipment/return_reminder
    public function return_reminder()
    {
        $this->load->view('/common/header_view');
        $this->load->model('Home_model','Home_model');
        $data['returns'] = $this->Home_model->lookup_returns_due();
        $this->load->view('returns', $data);

        foreach ($data['returns'] as $item) {
//                echo($item->item_name);
                $this->SendReturnEmail($item);
        }

 // vdebug($data['returns']);
 // die();

        $this->load->view('/common/footer_view');
    }

public function SendReturnEmail($item){
        $this->load->library('email');

        $this->email->from('booking@equipment.nre.co.uk', 'NRE Equipment Booking System');

        $this->email->to($item->email); 
        $this->email->subject('NRE Equipment Loan - Ref: ' . $item->id. ' - '. $item->item_name);

        $msg = "Your equipment loan period has expired. \n"; 
        $msg .= "Please return the ". $item->item_name . " on " . date('D M jS, Y', strtotime($item->date_due_in))  ." to the Web Development Manager"; 
  
        $this->email->message($msg); 

        $this->email->send();


//        vdebug($this->email);

}

}