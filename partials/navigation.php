<header class="bg-gray-800">
  <nav class="container mx-auto px-6 py-3">
    <div class="flex items-center justify-between">
      <div class="text-white font-bold text-xl">
        <a href="#">Logo</a>
      </div>
      <div class="hidden md:block">
        <ul class="flex items-center space-x-8">
          <li><a href="#" class="text-white">Home</a></li>
          <li><a href="#" class="text-white">Customers</a></li>
          <li><a href="#" class="text-white">Inventory</a></li>
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
        <li><a href="#" class="block px-4 py-2 text-white bg-gray-900 rounded">Home</a></li>
        <li><a href="#" class="block px-4 py-2 text-white bg-gray-900 rounded">Customers</a></li>
        <li><a href="#" class="block px-4 py-2 text-white bg-gray-900 rounded">Inventory</a></li>
      </ul>
    </div>
    
  </nav>
</header>