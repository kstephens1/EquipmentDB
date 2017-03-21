<?
//    vdebug($_FILES);
//Bootstrap 3 forms ref
//http://getbootstrap.com/css/#forms

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
    <h3>Equipment Save</h3>
<!--         <div class="page-header">
          <h1><?=@$equipment_item[0]->name ?></h1>
        </div>
 -->

</div><!--from container-->
