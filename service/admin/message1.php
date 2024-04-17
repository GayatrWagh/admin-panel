<html>
<head>
  <style>
    /* Style for the popup */
    .registration-success-popup {
      position: fixed;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      padding: 20px;
      background-color: #4CAF50; /* Green background color */
      color: white;
      text-align: center;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      z-index: 1000; /* Ensure it's on top of other elements */
    }
  </style>
<script>
  // Function to display registration success popup
  function showRegistrationSuccessPopup() {
    // Create a new div element for the popup
    var popup = document.createElement("div");
    popup.className = "registration-success-popup";

    // Set the content of the popup
    popup.innerHTML = "<p>hey!  <br>Registration successful! Welcome to Dashboard.</p>";

    // Append the popup to the body of the document
    document.body.appendChild(popup);

    // Set a timeout to remove the popup after a few seconds (e.g., 5 seconds)
    setTimeout(function() {
      document.body.removeChild(popup);
    }, 5000); // 5000 milliseconds (5 seconds)
  }

  // Call the function to show the popup (you can trigger this after a successful registration)
  showRegistrationSuccessPopup();
</script>
</head>
</html>


