<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Immoheld</title>
    <script>var base_url = '<?php echo base_url() ?>';</script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <link rel = "stylesheet" type="text/css" href = "<?php echo base_url(); ?>/css/style.css">
    <script type ="text/javascript" src="<?php echo base_url(); ?>/js/property.js"></script>
</head>
<body>
    <div id="home-property">
        <div class="header">
            <div class="logo"><a href="https://tool.immoheld.eu/properties">Immoheld</a></div>
            <input type="number" id="search-price" placeholder="Search by Price">
            <input type="number" id="search-size" placeholder="Search by Size">
        </div>

        <div id="main-card-list">
            <?php if($properties): ?>
                <?php foreach($properties as $data): ?>
                    <div class="card">
                        <img class="image" src="https://tool.immoheld.eu//assets//upload//properties//test.jpg" alt="Avatar">
                        <div class="card-body">
                            <div class="name"><?php echo $data['name']; ?></div>
                            <p class="price"><b>Price: </b><?php echo '€ ' . $data['price']; ?></p>
                            <p class="size"><b>Size:</b><?php echo $data['size'] . '/ m'; ?><span class="sup">2</span></p>
                        </div>
                        <div class="card-footer">
                            <div class="address"><?php echo $data['address']; ?></div>
                        </div>
                    </div>
                <?php endforeach; ?>
            <?php endif; ?>
        </div>
        <div id="more-card-list"></div>
    </div>
</body>
</html>