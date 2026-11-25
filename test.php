```php
<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

require 'db.php';

echo "<h2>PHP is working.</h2>";

if ($conn->ping()) {
    echo "<p style='color:green;'>Database connection successful!</p>";
    echo "<p>Connected database: pusakamida</p>";
} else {
    echo "<p style='color:red;'>Database connection failed.</p>";
}
?>