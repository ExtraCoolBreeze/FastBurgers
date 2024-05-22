<?php
    include '../config/dbConfig.php';
    include '../partials/header.php';
    include '../partials/navigation.php';
?>

<!-- Main content section -->
<div class="container flex-grow mx-auto px-2 md:px-6 py-8">
    <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
        
        <!-- Search box in the top-left row -->
        <div class="search-box md:col-span-2">
            <form action="search_results.php" method="get" class="flex">
                <input type="text" name="query" placeholder="Search..." class="w-full p-2 border border-gray-300 rounded-l-lg focus:outline-none focus:ring-2 focus:ring-blue-600"/>
                <button type="submit" class="px-4 py-2 bg-blue-600 text-white rounded-r-lg hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-600">Search</button>
            </form>
        </div>

        <!-- Weekly Shift pattern box -->
        <div class="stock-list md:col-span-2 bg-white p-12 rounded-lg shadow-lg h-full row-span-2">
            <h2 class="text-4xl font-bold mb-4">Stock lists</h2>
            <p>The list of stock content goes here...</p>
        </div>

        <!-- Right-hand side boxes -->
        <div class="space-y-8">
            <!-- Staff member lead box -->
            <div class="regular-items bg-white p-12 rounded-lg shadow-lg h-64">
                <h2 class="text-4xl font-bold mb-4">Regular menu items</h2>
                <p>Regular menu items on the list</p>
            </div>

            <!-- Seasonal stock updates and promotions box -->
            <div class="sales-items bg-white p-12 rounded-lg shadow-lg h-64">
                <h2 class="text-4xl font-bold mb-4">Sales menu items</h2>
                <p>List of menu items that are for sale</p>
            </div>
        </div>
    </div>
</div>

<?php
    include '../partials/footer.php';
?>
