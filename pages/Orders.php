<?php
    include '../config/dbConfig.php';
    include '../partials/header.php';
    include '../partials/navigation.php';

    $ordersQuery = $conn->prepare("SELECT 
            Orders.order_id,
            Orders.order_date,
            Orders.order_time,
            Orders.fk_customer_id,
            Customer.customer_name,
            Staff.staff_firstname,
            Staff.staff_surname,
            Payment.payment_type
        FROM 
            Orders
        LEFT JOIN 
            Customer ON Orders.fk_customer_id = Customer.customer_id
        LEFT JOIN 
            Staff ON Orders.fk_staff_id = Staff.staff_id
        LEFT JOIN 
            Payment ON Orders.fk_payment_id = Payment.payment_id
        ORDER BY 
            Orders.order_date DESC, Orders.order_time DESC;
    ");

    $ordersQuery->execute();
    $ordersQuery->bind_result($orderId, $orderDate, $orderTime, $customerId, $customerName, $staffFirstname, $staffSurname, $paymentType);
    
    $orders = [];
    while ($ordersQuery->fetch()) {
        $orders[] = [
            'order_id' => $orderId,
            'order_date' => $orderDate,
            'order_time' => $orderTime,
            'customer_id' => $customerId,
            'customer_name' => $customerName,
            'staff_name' => $staffFirstname . ' ' . $staffSurname,
            'payment_type' => $paymentType,
        ];
    }
?>

<!-- Main content section -->
<div class="container flex-grow mx-auto px-2 md:px-6 py-8">
    <div class="grid grid-cols-1 md:grid-cols-1 gap-6">
        
        <!-- Search box in the top-left row -->
        <div class="search-box md:col-span-1">
            <form action="search_results.php" method="get" class="flex">
                <input type="text" name="query" placeholder="Search..." class="w-full p-2 border border-gray-300 rounded-l-lg focus:outline-none focus:ring-2 focus:ring-blue-600"/>
                <button type="submit" class="px-4 py-2 bg-blue-600 text-white rounded-r-lg hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-600">Search</button>
            </form>
        </div>

        <div class="order-list md:col-span-1 bg-white p-12 rounded-lg shadow-lg h-full row-span-2">
            <h2 class="text-4xl font-bold mb-4">Orders List</h2>
            <table class="min-w-full bg-white">
                <thead>
                    <tr>
                        <th class="py-2">Order ID</th>
                        <th class="py-2">Order Date</th>
                        <th class="py-2">Order Time</th>
                        <th class="py-2">Customer ID</th>
                        <th class="py-2">Customer Name</th>
                        <th class="py-2">Staff Name</th>
                        <th class="py-2">Payment Type</th>
                        <th class="py-2">Details</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($orders as $order): ?>
                        <tr>
                            <td class="border px-4 py-2"><?= htmlspecialchars($order['order_id']) ?></td>
                            <td class="border px-4 py-2"><?= htmlspecialchars($order['order_date']) ?></td>
                            <td class="border px-4 py-2"><?= htmlspecialchars($order['order_time']) ?></td>
                            <td class="border px-4 py-2"><?= htmlspecialchars($order['customer_id']) ?></td>
                            <td class="border px-4 py-2"><?= htmlspecialchars($order['customer_name']) ?></td>
                            <td class="border px-4 py-2"><?= htmlspecialchars($order['staff_name']) ?></td>
                            <td class="border px-4 py-2"><?= htmlspecialchars($order['payment_type']) ?></td>
                            <td class="border px-4 py-2"><a href="OrderDetails?order_id=<?= htmlspecialchars($order['order_id']) ?>" class="text-blue-600 hover:text-blue-800">View Details</a></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<?php
    include '../partials/footer.php';
?>
