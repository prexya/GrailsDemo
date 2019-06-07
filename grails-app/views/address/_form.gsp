<div class = "row form-row">
    <label>District</label>
    <input type="text" name="district" class="form-control" required value="${address?.district}">
</div>

<div class = "row form-row">
    <label>State</label>
    <input type="text" name="state" class="form-control" required value="${address?.state}">
</div>

<div class = "row form-row">
    <label>Locality</label>
    <input type="text" name="locality" class="form-control" required value="${address?.locality}">
</div>

<div class = "row form-row">
    <label>Ward No</label>
    <input type="number" name="wardno" class="form-control" value="${address?.wardno}">
</div>

<div class = "row form-row">
    <label>Tole</label>
    <input type="text" name="tole" class="form-control" value="${address?.tole}">
</div>

<div class = "row form-row">
    <label>Is address temporary?</label>
    <input type="text" name="istemp" class="form-control" required value="${address?.istemp}">
</div>