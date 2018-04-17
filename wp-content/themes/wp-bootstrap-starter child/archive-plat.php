<?php
/**
 * The template for displaying archive pages
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WP_Bootstrap_Starter
 */

get_header(); ?>

	<section id="primary" class="content-area col-sm-12">
		<main id="main" class="site-main" role="main">

		<?php
		if ( have_posts() ) : ?>

			<header class="page-header">
				<h1>Menu</h1>
			</header><!-- .page-header -->
			<div class="row">	
				<?php
					
					while ( have_posts() ) : the_post();
				?>
				
				<div class="col-lg-5 border mr-4 mb-4">
					<?php get_template_part( 'template-parts/content', get_post_format() );?>
    					<span><?php the_field('prix'); ?></span>
				</div>						

				<?php
					endwhile;

					the_posts_navigation();

					else :

					get_template_part( 'template-parts/content', 'none' );

					endif; 
				?>
			</div>
		</main><!-- #main -->
	</section><!-- #primary -->

<?php
get_footer();