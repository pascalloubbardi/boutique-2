Deface::Override.new(:virtual_path => "spree/shared/_login_bar", 
                     :name => "login icon", 
                     :replace => "erb[loud]:contains('link_to Spree.t(:login), spree.login_path')", 
                     :text => "<%= link_to login_path, title: 'Connexion'.html_safe do %>
                               <span class='glyphicon glyphicon-log-in' aria-hidden='true'style='font-size:15px' ></span>&nbsp;&nbsp;Connexion
                               <% end %>
")

Deface::Override.new(:virtual_path => "spree/shared/_login_bar", 
                     :name => "logout icon", 
                     :replace => "erb[loud]:contains('link_to Spree.t(:logout), spree.logout_path')", 
                     :text => "<%= link_to spree.logout_path, title: 'D&eacute;conexion'.html_safe do %>
                               <span class='glyphicon glyphicon-log-out' aria-hidden='true'></span>
                               <% end %>
")
Deface::Override.new(:virtual_path => "spree/shared/_login_bar", 
                     :name => "user acount icon", 
                     :replace => "erb[loud]:contains('link_to Spree.t(:my_account), spree.account_path')", 
                     :text => "<%= link_to spree.account_path, title: 'Mon compte' do %>
                               <span class='glyphicon glyphicon-user' aria-hidden='true'></span>
                               <% end %>&nbsp;&nbsp;
")
