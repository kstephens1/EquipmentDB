<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {


    function loans($id = "", $bookmode = '',$duration = '', $item_id = '')
    {
	    
        $this->Auth('tst');

		$this->load->model('Admin_model');

    	//log stock movement
		if($bookmode == 'issue'){
			$result = $this->Admin_model->log_issue($id, $duration, $item_id);
			$this->session->set_flashdata('flash', 'Register Item '. $id .' set as: Issue for Loan');
			redirect('/admin/loans', 'refresh');}
		elseif($bookmode == 'return'){
			$result = $this->Admin_model->log_return($id, $item_id);
			$this->session->set_flashdata('flash', 'Register Item '. $id .' set as: Booked in Returned Item');
			redirect('/admin/loans', 'refresh');
		}

		//continue to load form
		$this->load->view('/common/header_view');



		//pagination
        $config['base_url'] = '/admin/loans/';

        $dbcount = $this->Admin_model->get_loans_count();
        $config['per_page'] = 20;
        $config['num_links'] = 10;
        $config['total_rows'] = $dbcount[0]->count;
        $config['uri_segment'] = 3;
        $config['first_link'] = 'First';
        $config['last_link'] = 'Last';

        if($this->uri->segment(3)){
            $offset = $this->uri->segment(3);
        }else{
            $offset = 0;
        }
        $limit = $config['per_page'];
        $this->pagination->initialize($config);


        $data['loans'] = $this->Admin_model->get_loans($limit, $offset);
		$this->load->view('/admin_loans_view', $data);

  		$this->load->view('/common/footer_view');
	}

    function login()
    {
		//delete all sessions
		$this->session->sess_destroy();

		$this->load->view('/common/header_view');

		$this->load->view('/login_view');

  		$this->load->view('/common/footer_view');
	}


    function equipment_database()
    {
        $this->Auth('tst');
		$this->load->model('Admin_model');

		$this->load->view('/common/header_view');


		//pagination
        $config['base_url'] = '/admin/equipment_database/';

        $dbcount = $this->Admin_model->get_equipment_count();

        $config['per_page'] = 20;
        $config['num_links'] = 10;
        $config['total_rows'] = $dbcount[0]->count;
        $config['uri_segment'] = 3;
        $config['first_link'] = 'First';
        $config['last_link'] = 'Last';

        if($this->uri->segment(3)){
            $offset = $this->uri->segment(3);
        }else{
            $offset = 0;
        }
        $limit = $config['per_page'];
        $this->pagination->initialize($config);



        $data['equip'] = $this->Admin_model->get_equipment($limit, $offset);
		$this->load->view('/admin_equip_view', $data);
  		$this->load->view('/common/footer_view');    	
	}


    function edit_item($id = 0)
    {
        $this->Auth('tst');
		$this->load->model('Admin_model');

		$this->load->view('/common/header_view');
        $data['equipment_item'] = $this->Admin_model->get_equipment_item($id);
        $data['equipment_for_linking'] = $this->Admin_model->get_equipment_for_linking();
        $data['equipment_linked_items'] = $this->Admin_model->get_linked_items($id);

		$this->load->view('/admin_edit_item', $data);

  		$this->load->view('/common/footer_view');    	
	}


    function add_item($id = 0)//from admin add item
    {

if($this->input->server('REQUEST_METHOD') == 'GET'){

        $this->Auth('tst');
		$this->load->model('Admin_model');

		$this->load->view('/common/header_view');
		$this->load->view('/admin_add_item');

  		$this->load->view('/common/footer_view');    	


}else{//POST
		$this->load->model('Admin_model');
		if($this->Admin_model->add_new()){
			redirect('/admin/equipment_database', 'refresh');
//			die('HERE1');

		}
}

	}

    function save_item() //from edit mode
    {

//		$this->Auth('tst');
//above not working for post for some reason

		//die('Here');
//vdebug($_POST);

		$this->load->model('Admin_model');

		$this->load->view('/common/header_view');

		$this->Admin_model->save_edit();
		$this->session->set_flashdata('flash', 'Record updated sucessfully');
		redirect('/admin/equipment_database', 'refresh');

	}

	public function Auth(){

		if($_POST){//POST from login form

				$this->load->model('Admin_model');
		        $isAuth = $this->Admin_model->authenticate($_POST['email'] ,$_POST['password']);

				if ($isAuth == TRUE){
					//LOGGED IN
					$newdata = array(
						'email'  => $_POST['email'],
						'logged_in' => TRUE
				);

					//write session
					$this->session->set_userdata($newdata);
					redirect('/admin/loans', 'refresh');

				}else{
					echo('not logged  in');
						redirect('/admin/login/invalid', 'refresh');

				}
		}else{//from auth call in other controller function
			//check for session otherwise redirect to login screen
			//read a session

			$sessionData = $this->session->all_userdata();

			if(@$sessionData['logged_in'] == 1){
			 	return TRUE;
			 }else{
				redirect('/admin/login/pleaselogin', 'refresh');		
			 }

		}

		// vdebug($this->session->all_userdata());
		// exit();

		// vdebug($_POST['password']);

		// exit();
	}

}
