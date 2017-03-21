<?
//    vdebug($loans);

function TableModeColour($booked, $loaned, $returned){

    if($booked == true){
        return 'class="warning"';//yellow
    }elseif($loaned == true){
        return 'class="success"';//green
    }
    elseif($returned == true){
        return '';
    }

}

function DurationCalc($durationtext){

    switch ($durationtext){
    case '0.5 days':
            return(time() + 43200);
        break;

    case '1 day':
            return(time() + 86400);
        break;

    case '2 days':
            return(time() + 172800);
        break;
    case '1 week':
            return(time() + 604800);
        break;

    case '1 month':
            return(time() + 2678400);
        break;


    }

}

?>
    <div class="container1">

<?
if($this->session->flashdata('flash')){
?>
<div class="alert alert-success">
<?
echo($this->session->flashdata('flash'));
?>
</div>
<?
}
?>


        <div class="page-header">
                  <h1>Loan Register</h1>
        </div>

    <p class="pag">
<?
    echo $this->pagination->create_links();
?>
    </p>

<!--         <table class="table table-hover" border="1" bordercolor="#BDBDBD" style="background-color:#FFFFFF" width="100%" cellpadding="3" cellspacing="0"> -->
        <table class="table table-hover table-bordered" width="100%">
            <thead>
            	<tr>
            		<th>ID</th>
             		<th>Item</th>
                    <th>Serial</th>
                    <th>Borrower</th>
                    <th>Purpose</th>
                    <th>Requested Duration</th>
            		<th>Status</th>
                    <th>Date Requested</th>
                    <th>Date Loaned</th>
                    <th>Date Due Back</th>
                    <th>Date Returned</th>
                    <th>Loan Released By</th>
                    <th>Return Logged By</th>
                    <th>Action</th>
                </tr>
            </thead>
    <?
        foreach($loans as $item)
        {
            // $datetime = strtotime($item->date_due_in);
            // $mysqldate = date("l d/m/y", $datetime);

                $booked = false;$loaned = false;$returned = false;

                if($item->booked == 1 && $item->loaned == 0 && $item->returned == 0){ 
                    $booked = true;
                }elseif($item->booked == 1 && $item->loaned == 1 && $item->returned == 0){
                    $loaned = true;
                }elseif($item->booked == 1 && $item->loaned == 1 && $item->returned == 1){
                    $returned = true;
                }


            echo('<tr '. TableModeColour($booked, $loaned, $returned) .'>');
                echo('<td>' .$item->id . '</td>');
                echo('<td>' .$item->name . '</td>');
                echo('<td>' .$item->serial . '</td>');
                echo('<td><a href="mailto:'. $item->email .'">' .$item->firstname . ' ' . $item->surname . '</a></td>');
                echo('<td>' .$item->purpose . '</td>');
                echo('<td>' .$item->duration . '</td>');
                echo('<td>');

                    if ($item->returned == 1){
                        echo('Returned');
                    }elseif ($item->loaned == 1){
                        echo('On Loan');
                    }else{
                        echo('Booked');
                    }
                echo('</td>');

                $datereq = strtotime($item->date_requested);
                $datereqFormatted = date("l d/m/y", $datereq);
                echo('<td>' . $datereqFormatted . '</td>');

                $dateout = strtotime($item->date_out);
                $dateoutFormatted = date("l d/m/y", $dateout);
                if($dateoutFormatted == 'Thursday 01/01/70'){
                    echo('<td>-</td>');
                }else{
                    echo('<td>' . $dateoutFormatted . '</td>');
                }


                $dateduein = strtotime($item->date_due_in);
                $datedueinFormatted = date("l d/m/y", $dateduein);
                if($datedueinFormatted == 'Thursday 01/01/70'){
                    echo('<td>-</td>');
                }else{
                    echo('<td>' . $datedueinFormatted . '</td>');
                }

                $datereturned = strtotime($item->date_returned);
                $datereturnedFormatted = date("l d/m/y", $datereturned);
                if($datereturnedFormatted == 'Thursday 01/01/70'){
                    echo('<td>-</td>');
                }else{
                    echo('<td>' . $datereturnedFormatted . '</td>');
                }

                echo('<td>' . $item->released_by_firstname . ' ' . $item->released_by_surname . '</td>');
                echo('<td>' . $item->return_logged_firstname . ' ' . $item->return_logged_surname . '</td>');


                //action
                if($booked){
                    $issueRedirectFragment = '/admin/loans/'. $item->id .'/issue/'. DurationCalc($item->duration) .'/'. $item->item_id;

//                    echo($redirectFragment);
                    ?>
                        <td><button type="button" class="btn btn-primary btn-sm" onclick="window.location.href='<?=$issueRedirectFragment?>'">Issue for loan</button></td>
                    <?
//                    echo('<td><a href="/admin/loans/'. $item->id .'/issue/'. DurationCalc($item->duration) .'/'. $item->item_id .'">Issue for Loan<a/></td>');
                }elseif($loaned){
                    $bookRedirectFragment = '/admin/loans/'. $item->id .'/return/'. DurationCalc($item->duration) .'/'. $item->item_id;

                    // echo('<td><a href="/admin/loans/'. $item->id .'/return/'. DurationCalc($item->duration) .'/'. $item->item_id .'">Book returned item<a/></td>');
                    ?>
                        <td><button type="button" class="btn btn-primary" btn-sm" onclick="window.location.href='<?=$bookRedirectFragment?>'">Book in returned item</button></td>
                    <?

               }elseif($returned){
//                    echo('<td>Returned</td>');
                }

            echo('</tr>');

        }
    ?>
        </table>

    <p class="pag">
<?
    echo $this->pagination->create_links();
?>
    </p>


    </div><!--from  container-->


