<?php if($properties): ?>
    <?php foreach($properties as $property): ?>
        <div class="card">
            <img class="image" src="https://tool.immoheld.eu//assets//upload//properties//test.jpg" alt="Avatar">
            <div class="card-body">
                <div class="name"><?php echo $property->name; ?></div>
                <p class="price"><b>Price: </b><?php echo '€ ' . $property->price; ?></p>
                <p class="size"><b>Size:</b><?php echo $property->size . '/ m'; ?><span class="sup">2</span></p>
            </div>
            <div class="card-footer">
                <div class="address"><?php echo $property->address; ?></div>
            </div>
        </div>
    <?php endforeach; ?>
<?php endif; ?>