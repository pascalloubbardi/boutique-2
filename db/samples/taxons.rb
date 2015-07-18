Spree::Sample.load_sample("taxonomies")
Spree::Sample.load_sample("products")

categories = Spree::Taxonomy.find_by_name!("Categories")
marques = Spree::Taxonomy.find_by_name!("Marques")

products = { 
  :articulation_1 => "Articulations Infusion AB",
  :articulation_2 => "Bain Aromatique Sport 100ml BIO",
  :articulation_3 => "Calcium Marin 100 gélules",
  :articulation_4 => "Calcium Marin 40 gélules",
  :articulation_5 => "Curcuma Articulations 60 comprimés",
  :articulation_6 => "Curcuma Extrait Fluide 300 ml AB",
  :articulation_7 => "Extrait de Plante Fraiche Cassis 50ml AB",
  :articulation_8 => "Calcium forte 75 comp",
  :beaute_9 => "Peau cheveux & ongles 45 cap",
  :elimination_10 => "Elixir du Suédois 17,5 dg",
  :circulation_11 => "Ail extra",
  :circulation_12 => "Levure de riz rouge 60 comp",
  :digestion_13 => "Sensi Colon relax 30 comp",
}


products.each do |key, name|
  products[key] = Spree::Product.find_by_name!(name)
end

taxons = [
  {
    :name => "Categories",
    :taxonomy => categories,
    :position => 0
  },
  {
    :name => "Articulation",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 1,
    :products => [
      products[:articulation_1],
      products[:articulation_2],
      products[:articulation_3],
      products[:articulation_4],
      products[:articulation_5],
      products[:articulation_6],
      products[:articulation_7],
      products[:articulation_8],
    ]
  },
  {
    :name => "Beauté et peau",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 2,
    :products => [
      products[:beaute_9],
    ]
  },
  {
    :name => "Bien−être féminin",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 3,
    :products => [
    ]
  },
  {
    :name => "Bien−être masculin",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 4,
    :products => [
    ]
  },
  {
    :name => "Bienfaits de la mer",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 5,
    :products => [
      products[:articulation_3],
      products[:articulation_4]
    ]
  },
  {
    :name => "Circulation",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 6,
    :products => [
      products[:circulation_11],
      products[:circulation_12]
    ]
  },
  {
    :name => "Détente",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 7,
    :products => [
    ]
  },
  {
    :name => "Digestion",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 8,
    :products => [
      products[:digestion_13],
    ]
  },
  {
    :name => "Elimination",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 9,
    :products => [
      products[:elimination_10],

    ]
  },
  {
    :name => "Mémoire",
    :taxonomy => categories,
    :parent => "Categories",
    :position => 10,
    :products => [
    ]
  },
  {
    :name => "Marques",
    :taxonomy => marques
  },
  {
    :name => "Biover",
    :taxonomy => marques,
    :parent => "Marques",
    :products => [
      products[:articulation_1],
      products[:articulation_2],
      products[:articulation_7]
    ]
  },
  {
    :name => "Biotechnie",
    :taxonomy => marques,
    :parent => "Marques",
    :products => [
      products[:articulation_3],
      products[:articulation_4],
      products[:articulation_5],
      products[:articulation_6],
    ]
  },
  {
    :name => "St-benoît",
    :taxonomy => marques,
    :parent => "Marques",
    :products => [
      products[:elimination_10],
    ]
  },
  {
    :name => "Boutique Nature",
    :taxonomy => marques,
    :parent => "Marques",
    :products => [
    products[:circulation_11]
    ]
  },
  {
    :name => "Diet Horizon",
    :taxonomy => marques,
    :parent => "Marques",
    :products => [
    products[:circulation_12],
    products[:digestion_13],
    ]
  },
]

taxons.each do |taxon_attrs|
  if taxon_attrs[:parent]
    taxon_attrs[:parent] = Spree::Taxon.where(name: taxon_attrs[:parent]).first
    Spree::Taxon.create!(taxon_attrs)
  end
end
