<?php echo $header; ?>
<ul class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
  <?php } ?>
</ul>
<?php if ($success) { ?>
<div class="alert alert-success"><?php echo $success; ?>
  <button type="button" class="close" data-dismiss="alert">&times;</button>
</div>
<?php } ?>
<div class="row"><?php echo $column_left; ?>
  <div id="content" class="span9"><?php echo $content_top; ?>
    <h2><?php echo $heading_title; ?></h2>
    <?php if ($products) { ?>
    <table class="table table-bordered table-hover">
      <thead>
        <tr>
          <td class="center"><?php echo $column_image; ?></td>
          <td class="left"><?php echo $column_name; ?></td>
          <td class="left"><?php echo $column_model; ?></td>
          <td class="right"><?php echo $column_stock; ?></td>
          <td class="right"><?php echo $column_price; ?></td>
          <td class="right"><?php echo $column_action; ?></td>
        </tr>
      </thead>
      <?php foreach ($products as $product) { ?>
      <tbody id="wishlist-row<?php echo $product['product_id']; ?>">
        <tr>
          <td class="center"><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
            <?php } else { ?>
            <a href="<?php echo $product['href']; ?>"><img src="catalog/view/theme/default/image/placeholder.png" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
            <?php } ?></td>
          <td class="left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?> </a></td>
          <td class="left"><?php echo $product['model']; ?></td>
          <td class="right"><?php echo $product['stock']; ?></td>
          <td class="right"><?php if ($product['price']) { ?>
            <div class="price">
              <?php if (!$product['special']) { ?>
              <?php echo $product['price']; ?>
              <?php } else { ?>
              <b><?php echo $product['special']; ?></b> <s><?php echo $product['price']; ?></s>
              <?php } ?>
            </div>
            <?php } ?></td>
          <td class="right"><a onclick="addToCart('<?php echo $product['product_id']; ?>');" data-toggle="tooltip" title="<?php echo $button_cart; ?>"><i class="icon-shopping-cart"></i></a> <a href="<?php echo $product['remove']; ?>" data-toggle="tooltip" title="<?php echo $button_remove; ?>"><i class="icon-remove"></i></a></td>
        </tr>
      </tbody>
      <?php } ?>
    </table>
    <?php } else { ?>
    <div class="enpty"><?php echo $text_empty; ?></div>
    <?php } ?>
    <div class="buttons clearfix">
      <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"> <?php echo $button_continue; ?></a></div>
    </div>
    <?php echo $content_bottom; ?></div>
  <?php echo $column_right; ?></div>
<?php echo $footer; ?> 