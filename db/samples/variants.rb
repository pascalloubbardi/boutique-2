Spree::Sample.load_sample("option_values")
Spree::Sample.load_sample("products")

  calcium_marin_100 = Spree::Product.find_by_name!("Calcium Marin 100 gélules")
  calcium_marin_40 = Spree::Product.find_by_name!("Calcium Marin 40 gélules")
  bain_aromatique_sport = Spree::Product.find_by_name!("Bain Aromatique Sport 100ml BIO")
  articulations_infusion_ab = Spree::Product.find_by_name!("Articulations Infusion AB")
  curcuma_articulations_60 = Spree::Product.find_by_name!("Curcuma Articulations 60 comprimés")
  curcuma_extrait_fluide_300 = Spree::Product.find_by_name!("Curcuma Extrait Fluide 300 ml AB")
  extrait_de_plante_fraiche_cassis_50ml = Spree::Product.find_by_name!("Extrait de Plante Fraiche Cassis 50ml AB")
  calcium_forte_75_comp = Spree::Product.find_by_name!("Calcium forte 75 comp")
  peau_cheveux_ongles_45_cap = Spree::Product.find_by_name!("Peau cheveux & ongles 45 cap")
  pelixir_du_suedois_17_5_dg = Spree::Product.find_by_name!("Elixir du Suédois 17,5 dg")
  ail_extra = Spree::Product.find_by_name!("Ail extra")
  levure_de_riz_rouge_60_comp = Spree::Product.find_by_name!("Levure de riz rouge 60 comp")
  sensi_colon_relax_30_comp = Spree::Product.find_by_name!("Sensi Colon relax 30 comp")


  gelule1 = Spree::OptionValue.where(name: "gelule1").first
  gelule2 = Spree::OptionValue.where(name: "gelule2").first
  gelule3 = Spree::OptionValue.where(name: "gelule3").first

  dosage1 = Spree::OptionValue.where(name: "dosage1").first
  dosage2 = Spree::OptionValue.where(name: "dosage2").first
  dosage3 = Spree::OptionValue.where(name: "dosage3").first

variants = [
 
]

masters = {
  calcium_marin_100 => {
    :sku => "ROR-001",
    :cost_price => 17,
  },
  calcium_marin_40 => {
    :sku => "ROR-00011",
    :cost_price => 17
  },
  bain_aromatique_sport => {
    :sku => "ROR-00012",
    :cost_price => 21
  },
  articulations_infusion_ab => {
    :sku => "ROR-00013",
    :cost_price => 17
  },
  curcuma_articulations_60 => {
    :sku => "ROR-00014",
    :cost_price => 11
  },
  curcuma_extrait_fluide_300 => {
    :sku => "ROR-00015",
    :cost_price => 17
  },
  extrait_de_plante_fraiche_cassis_50ml => {
    :sku => "ROR-00016",
    :cost_price => 8.95
  },
  calcium_forte_75_comp => {
    :sku => "ROR-00018",
    :cost_price => 2.75
  },
  peau_cheveux_ongles_45_cap => {
    :sku => "ROR-00019",
    :cost_price => 3.75
  },
  pelixir_du_suedois_17_5_dg => {
    :sku => "ROR-00020",
    :cost_price => 4.75
  },
  ail_extra => {
    :sku => "ROR-00021",
    :cost_price => 3.55
  },
  levure_de_riz_rouge_60_comp => {
    :sku => "ROR-00022",
    :cost_price => 6.32
  },
  sensi_colon_relax_30_comp => {
    :sku => "ROR-00023",
    :cost_price => 4.25
  },
}

Spree::Variant.create!(variants)

masters.each do |product, variant_attrs|
  product.master.update_attributes!(variant_attrs)
end
