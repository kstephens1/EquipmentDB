<?
    //vdebug($equipment_item);
//Bootstrap 3 forms ref
//http://getbootstrap.com/css/#forms

?>

<div class="container">
    <h3>Add Equipment</h3>
<? 
//Show item if ID valid
//if (count($equipment_item)==1){
?>
<form name="input" action="/admin/add_item" role="form" id="form" method="post" enctype="multipart/form-data">
 
  <div class="form-group">
    <label for="firstname">Name:</label>
    <input type="text" name="name" class="form-control" id="name" placeholder="Name" autofocus required value=""/>
  </div>

  <div class="form-group">
    <label for="firstname">Serial:</label>
    <input type="text" name="serial" class="form-control" id="serial" placeholder="Serial" required value=""/>
  </div>

  <div class="form-group">
    <label for="status">Status:</label>
    <select id="status" class="form-control" name="status">
      <option value="1">Available</option>
      <option value="2">On Loan</option>
      <option value="3">Reserved</option>
      <option value="4">Booked for Collection</option>
    </select>
  </div>

  <div class="form-group">
    <label for="status">Active:</label>
        <input type="checkbox" name="active[]">
  </div>

<div class="form-group">
<strong>Image:</strong><br />
    <input type="file" name="image" id="image">
</div>


<input class="button btn btn-primary" type="submit" id="formbutton" value="Save">
<button type="button" class="btn btn-primary btn-primary" onclick="window.location.href='/admin/equipment_database'">Cancel</button>
</form>


</div><!--from container-->
