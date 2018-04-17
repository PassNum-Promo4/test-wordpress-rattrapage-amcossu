<?php
/**
 * Template name: Plat
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
	
    
<h2>Plat <?php the_field('nom'); ?></h2>
<p><?php the_field('type_de_plat'); ?></p>
<span><?php the_field('ingredients'); ?></span>
<p><?php the_field('prix'); ?></p>
<img src="<?php the_field('photo'); ?>">

<?php get_footer(); ?>