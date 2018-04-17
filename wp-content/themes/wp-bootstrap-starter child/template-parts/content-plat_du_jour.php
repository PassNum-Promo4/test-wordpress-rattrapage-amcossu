<?php
/**
 * Template name : Plat_du_jour
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WP_Bootstrap_Starter
 */

?>
<!-- CONTENU ACF -->
<?php
	// Contrôler si ACF est actif
	if ( !function_exists('get_field') ) return;
?>

<p><?php the_field('plat_du_jour'); ?></p>
<p><?php the_field('type_de_plat_du_jour'); ?></p>
<span><?php the_field('ingredients_plat_du_jour'); ?></span>
<p><?php the_field('prix_plat_du_jour'); ?></p>
<img src="<?php the_field('image'); ?>">

<?php get_footer(); ?>