<?php

add_action( 'wp_enqueue_scripts', 'theme_enqueue_styles' );
function theme_enqueue_styles() {
    wp_enqueue_style( 'parent-style', get_template_directory_uri() . '/style.css' );


}
add_theme_support( 'post-thumbnails' );


add_action('init', 'my_custom_init');
function my_custom_init()
{
  register_post_type(
    'plat',
    array(
      'label' => 'Plats',
      'labels' => array(
        'name' => 'Plats',
        'singular_name' => 'Plat',
        'all_items' => 'Tous les plats',
        'add_new_item' => 'Ajouter un plat',
        'edit_item' => 'Éditer le plat',
        'new_item' => 'Nouveau plat',
        'view_item' => 'Voir le plat',
        'search_items' => 'Rechercher parmi les plats',
        'not_found' => 'Aucun plat trouvé',
        'not_found_in_trash'=> 'Aucun plat dans la corbeille',
        'rewrite' => array( 'slug' => 'plat', 'with_front' => true ),
        ),
      'public' => true,
      'capability_type' => 'post',
      'supports' => array(
        'title',
        'editor',
        'thumbnail'
      ),
      'has_archive' => true
    )
  );
}

// check ACF
if ( ! function_exists( 'get_field' ) ) {
	add_action( 'template_redirect', 'template_redirect_warning_missing_acf', 0 );
	function template_redirect_warning_missing_acf() {
		wp_die( sprintf( 'Ce site ne fonctionne pas sans l\'extension Advanced Custom Fields. Merci de vous connecter au site pour l\'activer.', wp_login_url() ) );
	}

}