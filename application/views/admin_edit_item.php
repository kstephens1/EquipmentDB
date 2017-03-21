<?
//    vdebug($equipment_item);
//Bootstrap 3 forms ref
//http://getbootstrap.com/css/#forms

//vdebug( $equipment_linked_items);

function SetSelected($formItemValue, $currentDataValue){
    if($formItemValue == $currentDataValue){
        echo('selected');
    }
}

function SetChecked($formItemValue, $currentDataValue){
    if($formItemValue == $currentDataValue){
        echo('checked');
    }
}

?>

<div class="container">
    <h3>Equipment Edit.</h3>
<!--         <div class="page-header">
          <h1><?=@$equipment_item[0]->name ?></h1>
        </div>
 -->
<? 
//Show item if ID valid
if (count($equipment_item)==1){
?>
<form name="input" action="/admin/save_item" role="form" id="form" method="post" enctype="multipart/form-data">
<input type="hidden" name="item" value="<?=@$equipment_item[0]->id ?>">

  <div class="form-group">
    <label for="firstname">Name:</label>
    <input type="text" name="name" value="<?=@$equipment_item[0]->name ?>" class="form-control" id="name" placeholder="Name" autofocus required value="Name"/>
  </div>

  <div class="form-group">
    <label for="firstname">Serial:</label>
    <input type="text" name="serial" value="<?=@$equipment_item[0]->serial ?>" class="form-control" id="serial" placeholder="Serial" required value="Serial"/>
  </div>

  <div class="form-group">
    <label for="status">Status:</label>
    <select id="status" class="form-control" name="status">
      <option value="1" <?=SetSelected('Available', $equipment_item[0]->status)?>>Available</option>
      <option value="2" <?=SetSelected('On Loan', $equipment_item[0]->status)?>>On Loan</option>
      <option value="3" <?=SetSelected('Reserved', $equipment_item[0]->status)?>>Reserved</option>
      <option value="4" <?=SetSelected('Booked for Collection', $equipment_item[0]->status)?>>Booked for Collection</option>
    </select>
  </div>

  <div class="form-group">
    <label for="status">Active:</label>
        <input type="checkbox" <?=SetChecked('1', $equipment_item[0]->active)?> name="active[]">
  </div>

<div class="form-group">
<strong>Image:</strong><br />
    <?if(@$equipment_item[0]->image_thumb){
    ?>

    <a href="/assets/img/stock-images/<?=@$equipment_item[0]->image?>" class="highslide" onclick="return hs.expand(this)">
      <img src="/assets/img/stock-images/<?=@$equipment_item[0]->image_thumb?>" alt="Highslide JS"
        title="Click to enlarge"/></a>
    <br/>
    <br/>
    <div class="highslide-caption">
      <strong><?=@$equipment_item[0]->name ?></strong>
    </div>
    <?
    }
    ?>
    <input type="file" name="image" id="image">
</div>






  <div class="form-group">
<?
if(count(@$equipment_for_linking) != 0){
?>
    <label for="accessories">Linked items:</label>
<?
}
?>
    <br/>
<?
foreach(@$equipment_for_linking as $item){

  $mode= "";

  foreach(@$equipment_linked_items as $already_linked_item){
    if($already_linked_item->id == $item->id){
      $mode= "checked";
    }
  }

?>

<input type="checkbox" name="accessory[]" <?=$mode?> value="<?=$item->id?>">&nbsp;<?=$item->name?>


<a href="/equipment/request/<?=$item->id?>" target="_new">View</a>
<br/>
<?
}
?>

  </div>






<input class="button btn btn-primary" type="submit" id="formbutton" value="Save">
<button type="button" class="btn btn-primary btn-primary" onclick="window.location.href='/admin/equipment_database'">Cancel</button>
</form>


<?
}
else{
//    echo('item NOT avaiable');
?>
<div class="alert alert-danger">
        <strong>Error!</strong> ID not recognised.
      </div>
<?
}


?>

</div><!--from container-->
