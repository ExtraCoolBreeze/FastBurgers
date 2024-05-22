<?php
    include '../config/dbConfig.php';
    include '../partials/header.php';
    include '../partials/navigation.php';
?> 

<div class="custcontainer">
    <!-- Main content area divided into two with each taking half the horizontal and all available vertical space -->
    <div class="customers-content">
        <!-- First large box -->
        <div class="custbox customers-box">
            <h2>Customer list</h2>
            <p>Here the customers are listed</p>
        </div>

        <!-- Second large box -->
        <div class="custbox order-details-box">
            <h2>Order details</h2>
            <p>Here the order details are listed</p>
        </div>
    </div>
</div>

<?php
    include '../partials/footer.php';
?>
