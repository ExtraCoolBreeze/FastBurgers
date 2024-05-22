<?php
    include '../config/dbConfig.php';
    include '../partials/header.php';
    include '../partials/navigation.php';

    $totalOrders = $conn->prepare("SELECT
        Staff.staff_firstname, 
        Staff.staff_surname, 
        COUNT(Orders.order_id) AS total_orders
    FROM 
        Orders
    JOIN 
        Staff ON Orders.fk_staff_id = Staff.staff_id
    GROUP BY 
        Staff.staff_id
    ORDER BY 
        total_orders DESC
    LIMIT 1;
    ");

    $totalOrders->execute();
    $totalOrders->bindColumn('staff_firstname', $firstname);
    $totalOrders->bindColumn('staff_surname', $surname);
    $totalOrders->bindColumn('total_orders', $orderCount);
    
    $totalOrders->fetch(PDO::FETCH_BOUND);
    
    $staffName = $firstname . " " . $surname;
    $totalOrdersCount = $orderCount;
?>

<!-- Main content section -->
<div class="container flex-grow mx-auto px-2 md:px-6 py-8">
    <div class="grid grid-rows-1 md:grid-cols-3 gap-6">

        <!-- Weekly Shift pattern box: Spans two columns and starts at the second row-->
        <div class="col-span-2 row-start-1 shift-list bg-white p-12 rounded-lg shadow-lg h-128">
            <h2 class="text-4xl font-bold mb-4">Weekly Shift pattern</h2>
            <p>Your shift pattern content goes here...</p>
        </div>

        <!-- Right-hand side boxes: Stacked vertically in the third column -->
        <div class="col-start-3 col-span-1 space-y-8">

            <!-- Staff member lead box -->
            <div class="most-orders bg-white p-12 rounded-lg shadow-lg h-64">
                <h2 class="text-1xl font-bold mb-1">Staff member in the lead for taking the most orders</h2>
                <p> <?= $staffName ?>, is in the lead for taking <?= $totalOrdersCount ?> orders.</p>
            </div>

            <!-- Seasonal stock updates and promotions box -->
            <div class="seasonal-promo bg-white p-12 rounded-lg shadow-lg h-64">
                <h2 class="text-1xl font-bold mb-1">Seasonal stock updates and promotions</h2>
                <p>Information about seasonal stock and promotions...</p>
            </div>
        </div>
    </div>
</div>


<?php
    include '../partials/footer.php';
