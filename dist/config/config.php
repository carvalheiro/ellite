<?php
  $version_file = 'dist/assets/version.json';
  
  $assets_version = file_exists( $version_file) ? json_decode(file_get_contents( $version_file))->hash : 'default';
  $info = [
    'title' => "Ellite Digital",
    'description' => 'Aqui vai a descrição do seu site ',
    'avatar' => '/assets/image/avatar',
  ];
?>