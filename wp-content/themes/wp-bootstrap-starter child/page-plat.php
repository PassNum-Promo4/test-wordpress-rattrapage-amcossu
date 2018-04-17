<?php
/**
 * Template name: Plat
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WP_Bootstrap_Starter
 */
get_header();
?>
<!-- CONTENU ACF -->
<?php
	// Contrôler si ACF est actif
	if ( !function_exists('get_field') ) return;
?>
<section id="primary" class="content-area col-sm-12">
	<main id="main" class="site-main row" role="main">
    	<?php
			$query = new WP_Query( array('post_type' => 'plat') );
			while ( $query->have_posts() ) : $query->the_post(); 
		?>
		<div class="col-6 p-2">
			<div class="card">
				<div class="text-center">
					<h2> 
						<a id = "link_menu" href="<?php the_permalink(); ?>"><?php the_field('nom'); ?></a>
					</h2>
					<p><?php the_field('prix'); ?></p>
				</div>
			</div>
		</div>
		<?php wp_reset_postdata(); ?>
		<?php endwhile;?>
	</main>
</section>
<?php get_footer(); ?>