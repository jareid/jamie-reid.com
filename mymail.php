<?php
    // My modifications to mailer script from:
    // http://blog.teamtreehouse.com/create-ajax-contact-form
    // Added input sanitizing to prevent injection

    // Only process POST reqeusts.
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Get the form fields and remove whitespace.
        $name = strip_tags(trim($_POST["name"]));
	$name = str_replace(array("\r","\n"),array(" "," "),$name);
        $email = filter_var(trim($_POST["email"]), FILTER_SANITIZE_EMAIL);
        $message = trim($_POST["message"]);
        $subject= trim($_POST["subject"]);

        // Check that data was sent to the mailer.
        if ( empty($name) OR empty($message) OR !filter_var($email, FILTER_VALIDATE_EMAIL) OR empty($subject)) {
            // Set a 400 (bad request) response code and exit.
            http_response_code(400);
            echo "Oops! Please Complete All the Fields.";
            exit;
        }

        // Set the recipient email address.
        // FIXME: Update this to your desired email address.
        $recipient = "email@jamie-reid.com";

        // Build the email content.
        $email_content = "Name: $name\n";
        $email_content .= "Email: $email\n\n";
        $email_content .= "Message:\n$message\n";
        $email_content .= "Subject:\n$subject\n";
        //CC here
        $email_content .= "Cc: jamie.reid@gmx.com\n";

        // Build the email headers.
        $email_headers = "From: $name <$email>";

        // Send the email.
        if (mail($recipient, $subject, $email_content, $email_headers, $email_ccemail)) {
            // Set a 200 (okay) response code.
            http_response_code(200);
            echo "Thanks! I will contact you soon.";
        } else {
            // Set a 500 (internal server error) response code.
            http_response_code(500);
            echo "Oops! We couldn't send your message. Email me at vinayak519@gmail.com";
        }

    } else {
        // Not a POST request, set a 403 (forbidden) response code.
        http_response_code(403);
        echo "There was a problem with your submission, please try again.";
    }

?>