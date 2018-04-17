<?php
/**
* Template Name: Accueil Template
**/get_header(); ?>    
<section id="primary" class="content-area col-sm-12 col-lg-12">
    <main id="main" class="site-main row" role="main">
		<div class = "col-8 mx-auto">
      		<?php
          		$query = new WP_Query( array('posts_per_page' => 1,'post_type' => 'plat_du_jour') );
          		while ( $query->have_posts() ) : $query->the_post(); ?>
				<div class="text-center">
					<h2> Plat du jour <?php the_field('plat_du_jour'); ?></h2>
					<p><?php the_field('type_de_plat_du_jour'); ?></p>
					<span><?php the_field('ingredients_plat_du_jour'); ?></span>
					<p><?php the_field('prix_plat_du_jour'); ?></p>
					<img src="<?php the_field('image'); ?>">
				</div>
          		<?php wp_reset_postdata(); ?>
		</div>
      <?php endwhile; ?>        </main><!-- #main -->
</section><!-- #primary --><?php
get_footer();