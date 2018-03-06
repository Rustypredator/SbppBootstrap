<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>{if $header_title != ""}{$header_title}{else}SourceBans{/if}</title>
		<link rel="Shortcut Icon" href="themes/{$theme_name}/images/favicon.ico" />
		<link href="themes/{$theme_name}/css/font-awesome.min.css" rel="stylesheet">
		<link href="themes/{$theme_name}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="themes/{$theme_name}/js/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="themes/{$theme_name}/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="./scripts/sourcebans.js"></script>
		<script type="text/javascript" src="./scripts/mootools.js"></script>
		<script type="text/javascript" src="./scripts/contextMenoo.js"></script>
		{$tiny_mce_js}
		{$xajax_functions}
	</head>
	<body>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Brand</a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">Link</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        {if $logged_in}
                            <p>Welcome, <a href='index.php?p=account'>{$username}</a></p>
                            <li><a href="index.php?p=logout">Logout</a></li>
                            {else}
                            <li><a href="index.php?p=login">Login</a></li>
                        {/if}
                    </ul>
                </div>
            </div>
        </nav>