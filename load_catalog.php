<?php
include 'config.php';

$sql = "SELECT * FROM product ORDER BY plantid DESC LIMIT 4";
$result = $connect->query($sql);

// Check if records exist
if ($result->num_rows > 0) {
    // Output data of each row
    while ($row = $result->fetch_assoc()) {
        $image = '';
        if (!empty($row['img1'])) {
            $image = $row['img1'];
        } elseif (!empty($row['img2'])) {
            $image = $row['img2'];
        } elseif (!empty($row['img3'])) {
            $image = $row['img3'];
        } else {
            // If none of the images are available, display a placeholder image
            $image = 'placeholder.jpg'; // Replace 'placeholder.jpg' with the path to your placeholder image
        }
        // Display product information
        echo '<div class="card">';
        echo '<img src="assets/images/img1/' . $image . '" alt="Product Image">';
        echo '<div class="card-content">';
        echo '<h2>' . $row['plantname'] . '</h2>';
        echo '</div>';
        echo '</div>';
    }
} else {
    echo '<p>No products available.</p>';
}

// Close database connection
$connect->close();
?>