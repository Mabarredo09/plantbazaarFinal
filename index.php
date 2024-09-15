<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>PlantBazaar</title>
	<link rel="stylesheet" href="assets/styles/index.css">
	<!-- <script src="https://kit.fontawesome.com/b99e675b6e.js"></script> -->
  <script src="https://kit.fontawesome.com/63775fda27.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <!-- <script src="assets/scripts/antiInspect.js"></script> -->
	<script>
		$(document).ready(function(){
			$(".hamburger").click(function(){
			   $(".wrapper").toggleClass("collapse");
			});
		});
	</script>
</head>
<body>

<div class="wrapper collapse">
  <div class="top_navbar">
    <div class="hamburger">
       <div class="one"></div>
       <div class="two"></div>
       <div class="three"></div>
    </div>
    <div class="top_menu">
      <div class="logo"><a href="index" id="logoLink"><h2>PlantBazaar</h2></a></div>
      <ul>
        <li><a href="#">
          <i class="fas fa-bookmark"></i>
          </a></li>
        <li><a href="#">
          <i class="fas fa-user"></i>
          </a></li>
      </ul>
    </div>
  </div>
  
  <div class="sidebar">
      <ul>
        <li><a href="#">
          <span class="icon"><i class="fa-solid fa-layer-group"></i></span>
          <span class="title">Categories</span></a></li>
        <li><a href="#">
          <span class="icon"><i class="fa-solid fa-message"></i></span>
          <span class="title">Chats</span>
          </a></li>
          </a></li>
    </ul>
  </div>
  
  <div class="main_container">
    <div class="item">
      <h1>Featured Plants</h1>
    </div>
    <div class="item">
      <h1>Plants Listed</h1>
      <div id="catalogContainer">
          <div id="catalog">
          </div>
      </div>
    </div>
      
</div>

<script>
  $(document).ready(function() {
  // Function to load the catalog of plants using AJAX
  function loadCatalog() {
    $.ajax({
      url: 'load_catalog.php', // Replace with the actual PHP script URL
      method: 'GET',
      success: function(response) {
        // Append the catalog data to the catalogContainer div
        $('#catalog').html(response);

      $('.card').on('click', function() {
        var plantid = $(this).attr('data-plantid'); // Get the plantid from the clicked card
      // Replace the main container's content with the view catalog details
      $('.main_container').html('<div id="viewCatalogDetails"></div>');
      
      // Load the view catalog details content using AJAX
      $.ajax({
        url: 'view_catalog_details.php',
        method: 'GET',
        data: {id: plantid},
        success: function(response) {
          $('#viewCatalogDetails').html(response);
        },
        error: function(xhr, status, error) {
          console.error('Error loading view catalog details:', error);
        }
      });
});
      },
      error: function(xhr, status, error) {
        console.error('Error loading catalog:', error);
      }
    });
  }
  // Call the loadCatalog function when the document is ready
  loadCatalog();
  // Set the interval to load the catalog every 2 seconds
  setInterval(loadCatalog, 2000);

});
</script>
</body>
</html>