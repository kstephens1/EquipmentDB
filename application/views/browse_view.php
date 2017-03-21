<?
    // $this1 = "sdsd";
    // vdebug($this1);
function TableModeColour($status){

    if($status == 'On loan'){
        return 'class="danger"';//yellow
    }elseif($status == 'Booked for Collection'){
        return 'class="danger"';//green
    }
}

?>
    <div class="container">

        <div class="page-header">
                  <h3>Choose an item to borrow.</h3>
        </div>
    <p class="pag">
<?
    echo $this->pagination->create_links();
?>
    </p>

        <table id="tbl" class="table table-hover table-bordered" width="100%">
            <thead>
        	<tr>
                <th>ID</th>
        		<th>Item</th>
        		<th>Status</th>
                <th>Due Back</th>
        		<th>Action</th>
            </tr>
        </thead>
    <?
        foreach($equipment as $item)
        {
            $datetime = strtotime($item->date_due_in);
            $mysqldate = date("l d/m/y", $datetime);

                //echo('<tr>');
                echo('<tr '. TableModeColour($item->status) .'>');
                echo('<td>'. $item->id  .'</td>');
                echo('<td><h4>' .$item->name . '</h3><br/><img src="/assets/img/stock-images/'. $item->image_thumb .'"></td>');
                echo('<td>' .$item->status . '</td>');

                if($item->status == 'Available'){
                                    echo('<td>-</td>');
                }else{
                    if($mysqldate != 'Thursday 01/01/70'){
                        echo('<td>' .$mysqldate . '</td>');
                    }else{
                        echo('<td>-</td>');
                    }
                }

            if($item->status == 'Available'){
?>
<td>
    <button type="button" class="btn btn-primary btn-sm" onclick="window.location.href='/equipment/request/<?=$item->id ?>'">Request this item</button>
</td>
<?
            }else{
                echo('<td>Item Not Available</td>');
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

<script type="text/javascript">
    $('div.container > table').find('tr').click( function(){
      var row = $(this).find('td:first').text();
        window.location.href='/equipment/request/' + row;
    });
</script>

