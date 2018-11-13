<?php 

require_once __DIR__ . '/inc/carbon_fields/_carbon_fields.php';

function my_scripts_method() {
	wp_deregister_script( 'jquery' );
	wp_register_script( 'jquery', 'https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js', false, null, true );
	wp_enqueue_script( 'jquery' );
}    
add_action( 'wp_enqueue_scripts', 'my_scripts_method' );

function my_theme_js() {
	wp_enqueue_script('my_theme_js', get_stylesheet_directory_uri() . '/assets/js/jquery.easeScroll.js', array('jquery'), 'version', true);
	wp_enqueue_script('my_theme_main', get_stylesheet_directory_uri() . '/assets/js/main.js', array('jquery'), 'version', true);
}

add_action( 'wp_enqueue_scripts', 'my_theme_js' );