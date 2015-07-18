Spree::Sample.load_sample("products")
Spree::Sample.load_sample("variants")

products = {}
products[:articulations_infusion_ab] = Spree::Product.find_by_name!("Articulations Infusion AB") 
products[:bain_aromatique_sport] = Spree::Product.find_by_name!("Bain Aromatique Sport 100ml BIO")
products[:calcium_marin_100] = Spree::Product.find_by_name!("Calcium Marin 100 gélules")
products[:calcium_marin_40] = Spree::Product.find_by_name!("Calcium Marin 40 gélules")
products[:curcuma_articulations_60] = Spree::Product.find_by_name!("Curcuma Articulations 60 comprimés")
products[:curcuma_extrait_fluide_300] = Spree::Product.find_by_name!("Curcuma Extrait Fluide 300 ml AB")
products[:extrait_de_plante_fraiche_cassis_50ml] = Spree::Product.find_by_name!("Extrait de Plante Fraiche Cassis 50ml AB")
products[:calcium_forte_75_comp] = Spree::Product.find_by_name!("Calcium forte 75 comp")
products[:peau_cheveux_ongles_45_cap] = Spree::Product.find_by_name!("Peau cheveux & ongles 45 cap")
products[:elixir_du_suedois_17_5_dg] = Spree::Product.find_by_name!("Elixir du Suédois 17,5 dg")
products[:ail_extra] = Spree::Product.find_by_name!("Ail extra")
products[:levure_de_riz_rouge_60_comp] = Spree::Product.find_by_name!("Levure de riz rouge 60 comp")
products[:sensi_colon_relax_30_comp] = Spree::Product.find_by_name!("Sensi Colon relax 30 comp")

def image(name, type="jpeg")
  images_path = Pathname.new(File.dirname(__FILE__)) + "images"
  path = images_path + "#{name}.#{type}"
  return false if !File.exist?(path)
  File.open(path)
end

images = {
  products[:articulations_infusion_ab].master => [
    {
      :attachment => image("ArticulationAB")
    }
  ],
  products[:bain_aromatique_sport].master => [
    {
      :attachment => image("BASportBIO")
    }
  ],
   products[:calcium_marin_100].master => [
    {
      :attachment => image("CalciumMarin100gel")
    }
  ],
   products[:calcium_marin_40].master => [
    {
      :attachment => image("CalciumMarin40gel")
    }
  ],
   products[:curcuma_articulations_60].master => [
    {
      :attachment => image("CurcumaArticulationsAB")
    }
  ],
   products[:curcuma_extrait_fluide_300].master => [
    {
      :attachment => image("CurcumaExtraitFluideAB")
    }
  ],
  products[:extrait_de_plante_fraiche_cassis_50ml].master => [
    {
      :attachment => image("EPFCassisAB")
    }
  ],
    products[:calcium_forte_75_comp].master => [
    {
      :attachment => image("calcium-forte-tab_171079")
    }
  ],
  products[:peau_cheveux_ongles_45_cap].master => [
    {
      :attachment => image("huid-haar-en-nagels-caps_170943")
    }
  ],
  products[:elixir_du_suedois_17_5_dg].master => [
    {
      :attachment => image("00407027_p")
    }
  ],
  products[:ail_extra].master => [
    {
      :attachment => image("05105080-1-2014_07")
    }
  ],
  products[:levure_de_riz_rouge_60_comp].master => [
    {
      :attachment => image("03306060-2-2013_10")
    }
  ],
  products[:sensi_colon_relax_30_comp].master => [
    {
      :attachment => image("18908055-1-2014_04")
    }
  ],
}



products[:calcium_marin_100].variants.each do |variant|
  
end

images.each do |variant, attachments|
  puts "Loading images for #{variant.product.name}"
  attachments.each do |attachment|
  variant.images.create!(attachment)
  end
end
