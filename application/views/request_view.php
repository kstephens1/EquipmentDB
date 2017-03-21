<?
//    vdebug($equipment_item);
//Bootstrap 3 forms ref
//http://getbootstrap.com/css/#forms
?>

<div class="container">
    <h3>Please complete this form to place your booking.</h3>
        <div class="page-header">
          <h1><?=@$equipment_item[0]->name ?></h1>
        </div>

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
<? if (@$equipment_item[0]->status == 'Available'){
?>
<form name="input" action="/equipment/book" role="form" id="form" method="post">
<input type="hidden" name="item" value="<?=@$equipment_item[0]->id ?>">
<input type="hidden" name="item_name" value="<?=@$equipment_item[0]->name ?>">
  <div class="form-group">
    <label for="serial">Serial Number:</label>
    <?=@$equipment_item[0]->serial ?>
  </div>
  <div class="form-group">
    <label for="firstname">First name:</label>
    <input type="text" name="firstname" class="form-control" id="firstname" placeholder="First name" autofocus required value=""/>
  </div>
  <div class="form-group">
    <label for="surname">Surname:</label>
    <input type="text" name="surname" class="form-control" id="surname" placeholder="Surname" required value="">
  </div>
  <div class="form-group">
    <label for="email">Email:</label>
    <input type="email" name="email" id="email" class="form-control" placeholder="Email" autocomplete="off" required value="">
  </div>
  <div class="form-group">
    <label for="duration">Loan period:</label>
    <select id="duration" class="form-control" name="duration">
      <option value="0.5 days">0.5 days</option>
      <option value="1 day">1 day</option>
      <option value="2 days">2 days</option>
      <option value="1 week" selected>1 week</option>
      <option value="1 month">1 month</option>
    </select>
  </div>
  <div class="form-group">
    <label for="purpose">Purpose:</label>
    <textarea class="form-control" id="purpose" rows="3" class="form-control" placeholder="Purpose" name="purpose" required></textarea>
  </div>

  <div class="form-group">
<?
if(count(@$equipment_linked_items) != 0){
?>
    <label for="accessories">Also include:</label>
<?
}
?>
    <br/>
<?
foreach(@$equipment_linked_items as $item){

  $mode= "";
  $modetext = "";
  if($item->status == 'Available'){
    $mode= "checked";
  }
  else{
    $mode= "disabled";
    $modetext = "(Currently Unavailable)";
  }

?>

<input type="checkbox" name="accessory[]" <?=$mode?> value="<?=$item->id?>">&nbsp;<?=$item->name?>&nbsp<?=$modetext?>


<a href="/equipment/request/<?=$item->id?>">View</a>
<br/>
<?
}
?>

  </div>

<input class="button btn btn-primary" type="submit" id="formbutton" value="Submit Booking">
<button type="button" class="btn btn-primary btn-primary" onclick="window.location.href='/equipment/browse'">Cancel</button>
</form>


<?
}
else{
//    echo('item NOT avaiable');
?>
<div class="alert alert-danger">
        <strong>Error!</strong> This item is not available.
      </div>



<?
}


?>

</div><!--from container-->
