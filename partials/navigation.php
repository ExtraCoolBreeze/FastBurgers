<header class="header bg-yellow-500" style="background-color: #F2B33D;">
  <nav class="container mx-auto px-6 py-3">
    <div class="flex items-center justify-between">
      <div class="text-white font-bold text-xl">
        <img src="FastBurgersLogocopyof.png" alt="Logo" style="height: 80px; width: auto;">
      </div>
      <div class="hidden md:block">
        <ul class="flex items-center space-x-8">
          <li><a href="<?= BASE_PATH ?>Index" class="text-white hover:text-gray-800">Home</a></li>
          <li><a href="<?= BASE_PATH ?>Customers" class="text-white hover:text-gray-800">Customers</a></li>
          <li><a href="<?= BASE_PATH ?>Orders" class="text-white hover:text-gray-800">Orders</a></li>
          <li><a href="<?= BASE_PATH ?>Inventory" class="text-white hover:text-gray-800">Inventory</a></li>
        </ul>
      </div>
      <div class="md:hidden">
        <button class="outline-none mobile-menu-button">
          <svg class="w-6 h-6 text-white" x-show="!showMenu" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
            <path d="M4 6h16M4 12h16M4 18h16"></path>
          </svg>
        </button>
      </div>
    </div>
    <div class="mobile-menu hidden md:hidden">
      <ul class="mt-4 space-y-4">
        <li><a href="<?= BASE_PATH ?>Index" class="block px-4 py-2 text-white bg-gray-900 rounded hover:bg-gray-700">Home</a></li>
        <li><a href="<?= BASE_PATH ?>Customers" class="block px-4 py-2 text-white bg-gray-900 rounded hover:bg-gray-700">Customers</a></li>
        <li><a href="<?= BASE_PATH ?>Orders" class="block px-4 py-2 text-white bg-gray-900 rounded hover:bg-gray-700">Orders</a></li>
        <li><a href="<?= BASE_PATH ?>Inventory" class="block px-4 py-2 text-white bg-gray-900 rounded hover:bg-gray-700">Inventory</a></li>
      </ul>
    </div>
  </nav>
</header>