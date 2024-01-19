<?php
require './scripts.php/Exception.php';
require './scripts.php/PHPMailer.php';
require './scripts.php/SMTP.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;
	

	function email($para_email, $para_nome,$assunto, $body){
	$mail = new PHPMailer(true);
	try {
    //Server settings
    $mail->isSMTP();    //Send using SMTP
    $mail->CharSet = 'UTF-8';  //Set Charset                                        
    $mail->Host       = 'smtp.titan.email';  //Set the SMTP server to send through
    $mail->SMTPAuth   = true; //Enable SMTP authentication
    $mail->Username   = 'contato@petcompufma.org';       //SMTP username
    $mail->Password   = '1fbPvbiN1M';          //SMTP password
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;     //Enable implicit TLS encryption
    $mail->Port       = 465; //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

    //Recipients
    $mail->setFrom('contato@petcompufma.org', 'PetComp Site Contato');
    $mail->addAddress($para_email, $para_nome);    //Add a recipient

    //Content
    $mail->isHTML(true);  //Set email format to HTML
    $mail->Subject = $assunto; //Set the subject of the email
    $mail->Body    = $body;    //Set the html body 
    $mail->AltBody = 'Por favor acesse este email apartir de um navegador que suporte html!'; //Text used if the reciver of the email dosent support html

    $mail->send();
    echo '<p style="text-align: center;" >Email enviado!</p> ';
} catch (Exception $e) {
    echo "Email não pode ser enviado. Mailer Error: {$mail->ErrorInfo}";
}
	}//Function

	$nome = $_POST['nome'];
	$email = $_POST['email'];
	$mensagem = $_POST['mensagem'];
	$telefone = $_POST['phone'];
	$assunto = $_POST['assunto'];

	$corpo_email = "<h3>Nome: $nome </h3> <p>Email: $email </p> <p>Telefone: $telefone </p> <p>Assunto: $assunto </p>  <p>Mensagem:</p> $mensagem";
	email("petcomputacao.ufma@gmail.com", "PetComp", $assunto, $corpo_email);
?>
