<h2>Contact Us</h2>
<p></p>
<h2>Any Enquires?</h2>


<form action="" method="POST"> 

<input type="hidden" name="enquires[id]" value="<?=$enquires['id'] ?? ''?>" />


<label>Name</label>
<input type="text" name="enquires[name]" value="<?=$enquires['name'] ?? ''?>" />

<label>Email</label>
<input type="email" name="enquires[email]" value="<?=$enquires['email'] ?? ''?>" />


<label>Telephone</label>
<input type="text" name="enquires[telephone]" value="<?=$enquires['telephone'] ?? ''?>" />

<label>Enquiry</label>
<textarea name="enquires[enquiry]"><?=$enquires['enquiry'] ?? ''?></textarea>

<input type="submit" name="submit" value="submit" />




</form>