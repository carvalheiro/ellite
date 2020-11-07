<!DOCTYPE html>
<html lang="en-US" prefix="og: http://ogp.me/ns#" class="loading">
<head>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-62652006-7"></script>
  <?php 
    $headers = getallheaders();
    if(isset($headers['x-dev-server-url'])):
  ?>
    <base href="<?php $headers['x-dev-server-url']?>">
  <?php endif?>
	<title><?= $info['title'] ?></title>

	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="HandheldFriendly" content="True">
	<meta name="apple-touch-fullscreen" content="yes" />
	<meta name="MobileOptimized" content="320">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="granja santos, pareci novo, frutíferas, bergamoteiras, laranjeiras, flores, nativas" />
	<meta name="description" content="<?= $info['description']?>">
	<meta name="theme-color" content="#1c1c1c"> <!-- Muda a cor do cabeçalho (relógio, bateria, url, ...) no mobile, por enquanto só no chrome para android. Mudar de acordo com a cor do header! -->
	<!-- <link href="/assets/images/icon.svg" rel="shortcut icon" type="image/x-icon"  /> -->
	<link rel="icon" href="/includes/elements/logo.svg"  sizes="32x32"/> 
  


	<!-- opengraph (facebook, linkedin, whatsapp) -->
	<meta property="og:locale" content="pt_BR" />
	<meta property="og:type" content="website" />
	<meta property="og:title" content="<?= $info['title'] ?>" />
	<meta property="og:url" content="<?= $info['url']?>" />
	<meta property="og:site_name" content="<?= $info['title'] ?>" />
	<meta property="og:image" content="<?= $info['avatar']?>" />
	<meta property="og:description" content="<?= $info['description']?>">

	<!-- twitter -->
	<meta name="twitter:card" content="summary_large_image"> <!-- padrão -->
	<meta name="twitter:title" content="<?= $info['title'] ?>" />
	<meta name="twitter:description" content="<?= $info['avatar']?>" />
	<meta name="twitter:url" content="<?= $info['url']?>" />
	<meta name="twitter:image" content="<?= $info['avatar']?>">

	<link rel="stylesheet" href="/assets/css/main.css?v=<?=$assets_version?>">
</head>
<body>