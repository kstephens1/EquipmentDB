<?
    //vdebug($equip);

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
    <div class="container1">

        <div class="page-header">
                  <h1>Equipment Database</h1>
        </div>

<a href="/admin/add_item/">Add New Item</a>

    <p class="pag">
<?
    echo $this->pagination->create_links();
?>
    </p>



        <table class="table table-hover table-bordered" width="100%">
            <thead>
            	<tr>
             		<th>Item</th>
                    <th>Serial</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
    <?
        foreach($equip as $item)
        {
            // $datetime = strtotime($item->date_due_in);
            // $mysqldate = date("l d/m/y", $datetime);

            echo('<tr>');
                echo('<td>' .$item->name . '</td>');
                echo('<td>' .$item->serial . '</td>');
                ?>
                <td><a href="<?echo('/admin/edit_item/') . $item->id;?>">Edit</a></td>
                <td><a href="<?echo('/admin/del_item/') . $item->id;?>">Delete</a></td>                <?
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


