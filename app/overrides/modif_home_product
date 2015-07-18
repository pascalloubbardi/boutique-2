Deface::Override.new(
  :virtual_path =>"spree/shared/_sidebar",
  :name => "modif sidbar",
  :replace => "#sidebar",
  :text => "<aside id='sidebar' class='columns four' data-hook>
              <div class='col-sm-4 col-md-3' style='background-color:red;'>
                <ol class='rounded-list'>
                  <% Spree::Taxonomy.includes(root: :children).each do |taxonomy| %>
                  <li><h3><%= taxonomy.name %></h3><hr>
                    <ol>
                      <% taxonomy.root.children.each do |taxon| %> 
                      <li><%= link_to taxon.name, seo_url(taxon) %></li>
                      <% end %>
                    </ol>
                  </li>
                  <% end %>                     
                </ol>
            
              <%= link_to 'Promotions', sale_path, class: 'btn btn-primary btn-lg btn-block' %>
             
<br>
              
               <% @products.where('spree_variants.sale_price is not null').uniq.first(2).each do |product| %>
               
               <ul class='list-group'>

               <% url = spree.product_url(product, taxon_id: @taxon.try(:id)) %>
               <li id='product_<%= product.id %>' class='list-group-item'> 
        
          <% cache(@taxon.present? ? [I18n.locale, current_currency, @taxon, product] : [I18n.locale, current_currency, product]) do %>
            <div class='panel-body text-center product-body'>
              <%= link_to small_image(product, itemprop: 'image'), url, itemprop: 'url' %><br/>
              <%= link_to truncate(product.name, length: 50), url, class: 'info', itemprop: 'name', title: product.name %>
            </div>
            <div class='panel-footer text-center'>
              <span itemprop='offers' itemscope itemtype='https://schema.org/Offer'>
                <span class='price selling lead' itemprop='price'><%= display_price(product) %></span>
              </span>
            </div>
          <% end %>
      </li>
      </ul>



               <% end %>
              </div>
            </aside>

")
