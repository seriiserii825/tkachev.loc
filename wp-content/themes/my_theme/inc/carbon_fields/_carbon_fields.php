<?php 

use Carbon_Fields\Container;
use Carbon_Fields\Field;

add_action( 'carbon_fields_register_fields', 'crb_attach_post_meta' );
function crb_attach_post_meta() {
    Container::make( 'post_meta', __( 'Post Options', 'crb' ) )
        ->where( 'post_type', '=', 'post' )
	    ->where( 'post_term', '=', array(
           'field' => 'slug',
           'value' => 'propovedi',
           'taxonomy' => 'category',
       ) )
        ->add_fields( array(
            Field::make( 'textarea', 'crb_sidenote', 'Sidenote Content' )
        ) );
}