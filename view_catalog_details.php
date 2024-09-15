<?php
        // Check if plantid is set in the URL
        if (isset($_GET['id'])) {
            var_dump($_GET);
            $plantid = $_GET['id'];
        if (empty($plantid)) {
            echo 'No product ID provided.';
        } else {
            // Retrieve plant details from the database based on the provided plantid
            $conn = new mysqli("localhost", "root", "", "plantbazaar");
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            $plantid = $_GET['id'];
            $sql = "SELECT * FROM product WHERE plantid = $plantid";
            $result = $conn->query($sql);

            // Check if record exists
            if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                echo'<div id="catalogProfileContainer">';
                echo '<div id="catalogDetails">';
                for ($i = 1; $i <= 3; $i++) {
                    $imageField = 'img' . $i;
                    if (!empty($row[$imageField])) {
                        echo '<img src="assets/images/img' . $i . '/' . $row[$imageField] . '" alt="Product Image" class="product-image" id="img' . $i . '" style="display: ' . ($i == 1 ? 'block' : 'none') . ';">';
                    }
                }
    

                // Output product details
                echo '<h2>' . $row['plantname'] . '</h2>';
                echo '<div class="description">';
                echo '<p><strong>Details:</strong> ' . $row['details'] . '</p>';
                echo '<p><strong>Location:</strong> ' . $row['location'] . '</p>';
                echo '<p><strong>Color:</strong> ' . $row['plantColor'] . '</p>';
                echo '<p><strong>Price:</strong> ₱ ' . $row['price'] . '</p>';
                echo '<p><strong>Seller:</strong> ' . $row['addedby'] . '</p>';
                echo '<p><strong>Plant Type:</strong> ' . $row['plantcategories'] . '</p>';
                echo '</div>';
                echo '</div>';
                echo '<div id="profileContainer">';
                echo '<div id="profile">';
                echo '<h2>Profile</h2>';
                echo '<img src="assets/images/img2/' . $row['img2'] . '" alt="Profile Image">';
                echo '<p><strong>Name:</strong> ' . $row['plantname'] . '</p>';
                echo '<p><strong>Location:</strong> ' . $row['location'] . '</p>';
                echo '<p><strong>Color:</strong> ' . $row['plantColor'] . '</p>';
                echo '<p><strong>Price:</strong> ₱ ' . $row['price'] . '</p>';
                echo '</div>';
                echo '</div>';
                echo '</div>';

                echo'<div id="moreProductsContainer">';
                echo'<h2>More Products</h2>';
                echo'<div id="moreProducts">';

                echo '<div class="card" style="width: 18rem;">';
                echo '<img src="assets/images/img1/' . $row['img1'] . '" style="display: block; width: auto;" alt="Product Image">';
                echo '<div class="card-content">';
                echo '<h2>' . $row['plantname'] . '</h2>';
                echo '<p>'. $row['details'] . '<p>';
                echo '</div>';
                echo '</div>';

                echo '<div class="card" style="width: 18rem;">';
                echo '<img src="assets/images/img1/' . $row['img1'] . '" style="display: block; width: auto;" alt="Product Image">';
                echo '<div class="card-content">';
                echo '<h2>' . $row['plantname'] . '</h2>';
                echo '<p>'. $row['details'] . '<p>';
                echo '</div>';
                echo '</div>';

                echo '<div class="card" style="width: 18rem;">';
                echo '<img src="assets/images/img1/' . $row['img1'] . '" style="display: block; width: auto;" alt="Product Image">';
                echo '<div class="card-content">';
                echo '<h2>' . $row['plantname'] . '</h2>';
                echo '<p>'. $row['details'] . '<p>';
                echo '</div>';
                echo '</div>';

                echo'</div>';
                echo '</div>';
                // Output arrow buttons
                echo '<button class="arrow arrow-left" onclick="prevImage()">&#10094;</button>';
                echo '<button class="arrow arrow-right" onclick="nextImage()">&#10095;</button>';
            } else {
                echo '<p>Product not found.</p>';
            }

            // Close database connection
            $conn->close();
        }
        } else {
            echo '<p>No product ID provided.</p>';
        }
        ?>
        <script>
            function goBack() {
  window.history.back();
}
let currentImageIndex = 1;
const totalImages = document.querySelectorAll('.product-image').length;

function prevImage() {
    if (currentImageIndex > 1) {
        document.getElementById('img' + currentImageIndex).style.display = 'none';
        currentImageIndex--;
        document.getElementById('img' + currentImageIndex).style.display = 'block';
    } else {
        // If at the first image, loop to the last image
        document.getElementById('img' + currentImageIndex).style.display = 'none';
        currentImageIndex = totalImages;
        document.getElementById('img' + currentImageIndex).style.display = 'block';
    }
}
function nextImage() {
    if (currentImageIndex < totalImages) {
        document.getElementById('img' + currentImageIndex).style.display = 'none';
        currentImageIndex++;
        document.getElementById('img' + currentImageIndex).style.display = 'block';
    } else {
        // If at the last image, loop to the first image
        document.getElementById('img' + currentImageIndex).style.display = 'none';
        currentImageIndex = 1;
        document.getElementById('img' + currentImageIndex).style.display = 'block';
    }
}
        </script>