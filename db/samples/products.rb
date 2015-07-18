Spree::Sample.load_sample("tax_categories")
Spree::Sample.load_sample("shipping_categories")

complementalimentaire = Spree::TaxCategory.find_by_name!("Complement Alimentaire")
shipping_category = Spree::ShippingCategory.find_by_name!("Default")

default_attrs = {
  #description: FFaker::Lorem.paragraph,
  available_on: Time.zone.now
}

products = [
  {
    :name => "Articulations Infusion AB",
    :tax_category => complementalimentaire,
    :shipping_category => shipping_category,
    :price => 15.99,
    :eur_price => 14,
    :description => '

<p>Nos articulations se &#34; rouillent &#34; inévitablement avec l&acute;&acirc;ge. Nous devons par cons&eacute;quent faire face &agrave; divers inconv&eacute;nients comme la raideur des muscles et des articulations, des genoux qui craquent, mains sensibles aux changements climatiques ... Les infusettes Biover à base d&acute;ortie, de saule et de cassis soulagent les gênes articulaires tout en stimulant l&acute;&eacute;limination des toxines.</p>

<br>

<table>
	<tbody>
          <tr>
	    <td>
              <h4>
                Informations&nbsp;complémentaires
              </h4>
            </td>
          </tr>
	
	  <tr>
	    <td>
	      Utilisation: Verser de l&acute;eau bouillante sur le sachet d&acute;herbes et laisser infuser pendant 3 à 5 minutes. Consommer 3 à 4 tasses par jour.<br>Ingrédients: ortie* (42%), cassis* (25%), saule* (21%), menthe poivr&eacute;e*, mauve*.<br>Boite de 20 sachets 36 g.<br>* culture biologique.<br>Avertissement: Déconseillé aux femmes enceintes.<br>
	    </td>
	  </tr>
	</tbody>
</table>

',
  },
  {
    :name => "Bain Aromatique Sport 100ml BIO",
    :tax_category => complementalimentaire,
    :shipping_category => shipping_category,
    :price => 22.99,
    :eur_price => 19,
    :description => '

<p>Soulagez vos muscles et articulations apr&egrave;s chaque effort physique avec le bain aromatique Sport de Biover. Le savant m&eacute;lange d&acute;huiles essentielles biologiques dans cette formule transforme un bain chaud après le sport en une exp&eacute;rience d&eacute;licieusement relaxante ! Le gen&eacute;vrier a un effet bénéfique sur les muscles et articulations raides.</p>

<br>

<table>
	<tbody>
          <tr>
	    <td>
              <h4>
                Informations&nbsp;complémentaires
              </h4>
            </td>
          </tr>
	
	  <tr>
	    <td>
	      Utilisation: Versez un bouchon de bain aromatique sous l&acute;eau du robinet (36 - 38 &deg;C). Profitez d&acute;un bain r&eacute;parateur pendant 15 à 20 minutes. 
	    </td>
	  </tr>
          <tr>
	    <td>
	      Ingrédients: GLYCERIN, SULFATED CASTER OIL, AQUA, GAULTHERIA FRAGRANTISSIMA OIL*, ROSMARINUS OFFICINALIS OIL*, BENZYL ALCOHOL, EUCALYPTUS CITRIODORA OIL*, EUCALYPTUS GLOBULUS OIL*, PINUS SYLVESTRIS OIL*, DEHYDROACETIC ACID, JUNIPERUS COMMUNIS OIL*, LIMONENE&deg;, CITRONELLOL&deg;, LINALOOL&deg;, GERANIOL&deg;, EUGENOL&deg;, CITRAL&deg;.<br>
*Cosmétique écologique et biologique certifié par ECOCERT Greenlife.<br>
&deg;Les huiles essentielles 100% naturelles.<br>
Avertissement: Ne convient pas aux femmes enceintes ni aux enfants de moins de 3 ans. Ne pas appliquer directement sur la peau à l&acute;&eacute;tat pur.. 
	    </td>
	  </tr>
	</tbody>
</table>

',
  },
  {
    :name => "Calcium Marin 100 gélules",
    :tax_category => complementalimentaire,
    :shipping_category => shipping_category,
    :price => 19.99,
    :eur_price => 16,
    :description => '

<p>Pour des os forts! A prendre en cas de besoin d’un suppl&eacute;ment de calcium, pour le maintien d&acute;une ossature solide.</p>

<br>

<table>
	<tbody>
          <tr>
	    <td>
              <h4>
                Informations&nbsp;complémentaires
              </h4>
            </td>
          </tr>
	
	  <tr>
	    <td>
	      Utilisation: A partir de 6 ans : 2 à 4 g&eacute;lules par jour.<br>
              Ingr&eacute;dients principaux: lithothamne (1936 mg), vitamine B6 (2 mg), acide folique (0.2 mg)
	    </td>
	  </tr>
	</tbody>
</table>

',
  },
  {
    :name => "Calcium Marin 40 gélules",
    :tax_category => complementalimentaire,
    :shipping_category => shipping_category,
    :price => 19.99,
    :eur_price => 16,
    :description => '

<p>Pour des os forts! A prendre en cas de besoin d’un suppl&eacute;ment de calcium, pour le maintien d&acute;une ossature solide.</p>

<br>

<table>
	<tbody>
          <tr>
	    <td>
              <h4>
                Informations&nbsp;complémentaires
              </h4>
            </td>
          </tr>
	
	  <tr>
	    <td>
	      Utilisation: A partir de 6 ans : 2 à 4 g&eacute;lules par jour.<br>
              Ingr&eacute;dients principaux: lithothamne (1936 mg), vitamine B6 (2 mg), acide folique (0.2 mg)
	    </td>
	  </tr>
	</tbody>
</table>

',
  },
  {
    :name => "Curcuma Articulations 60 comprimés",
    :shipping_category => shipping_category,
    :tax_category => complementalimentaire,
    :price => 19.99,
    :eur_price => 16,
    :description => '

<p>Le curcuma a un long pass&eacute; m&eacute;dicinal, notamment en m&eacute;decine Ayurv&eacute;dique, où il est employ&eacute; pour ces propri&eacute;t&eacute;s anti-inflammatoires.<br> Toutes les pathologies de type inflammatoire sont autant d&acute;indications du curcuma : Les tendinites, l’ath&eacute;roscl&eacute;rose, l&acute;art&eacute;rite, les douleurs articulaires, l&acute;arthrose, etc...<br> L’intérêt de prendre du curcuma qui a été reconnu cliniquement plus actif qu’un anti-inflammatoire de référence (la cortisone, ibuprofène, aspirine).</p>

<br>

<table>
	<tbody>
          <tr>
	    <td>
              <h4>
                Informations&nbsp;complémentaires
              </h4>
            </td>
          </tr>
	
	  <tr>
	    <td>
	      Utilisation: Prendre 2 comprimés par jour avec un grand verre d’eau.
	    </td>
	  </tr>
          <tr>
	    <td>
            Ingrédients: Extrait de rhizome de curcuma, citrate de calcium, carbonate de magnésium, sirop de riz, amidon de froment, extrait de racine d’harpagophytum, extrait de rhizome de gingembre, poudre de grain de poivre noir.<br>
            *AB : Agriculture Biologique certifiée par ECOCERT<br>
	    </td>
	  </tr>
	</tbody>
</table>

',
  },
  {
    :name => "Curcuma Extrait Fluide 300 ml AB",
    :tax_category => complementalimentaire,
    :shipping_category => shipping_category,
    :price => 19.99,
    :eur_price => 16,
    :description => '

<p>Le curcuma favorise le bon fonctionnement du foie et soulage les problèmes digestifs. Le curcuma a des effets protecteurs sur la muqueuse gastrique.
<br> 
L&acute;efficacité des rhizomes du curcuma pour traiter la dyspepsie, c&acute;est-à-dire des troubles digestifs, comme les maux d&acute;estomac, les naus&eacute;es, la perte d&acute;appétit ou les sensations de lourdeur a &eacute;t&aecute; d&eacute;montr&eacute;e cliniquement. En outre, Le curcuma agit sur le syndrome du colon irritable en stimulant la production et la qualit&eacute; du mucus gastrique qui tapisse la paroi intestinale permettant ainsi de combattre les irritations et de favoriser la r&eacute;&eacute;ducation du transit intestinal et par cons&eacute;quent l’att&eacute;nuation des douleurs abdominales.
<br>
Action anti-oxydante remarquable: C’est un « piège » à radicaux libres. Action anti-&acirc;ge: La curcumine influence l&acute;activit&eacute; de l&acute;&eacute;lastase (enzyme qui d&eacute;truit l&acute;&eacute;lastine de notre peau entrainant l&acute;apparition des rides et le manque de fermeté de la peau). Propriétés anti-inflammatoires: Reconnu cliniquement plus actif que l’anti-inflammatoire de r&eacute;f&eacute;rence: la cortisone. La curcumine calme les irritations cutan&eacute;es, soulage les probl&egrave;mes articulaires en g&eacute;n&eacute;ral, comme celui de l&acute;arthrose. Utilis&eacute; depuis longtemps comme anti-inflammatoire dans la m&eacute;decine ayurv&eacute;dique indienne.</p>

<br>

<table>
	<tbody>
          <tr>
	    <td>
              <h4>
                Informations&nbsp;complémentaires
              </h4>
            </td>
          </tr>
	
	  <tr>
	    <td>
	      Utilisation: Agitez avant emploi. Diluez l&acute;&eacute;quivalent de 10 ml de « curcuma bio extrait fluide » &agrave; l&acute;aide du bouchon doseur dans un verre d&acute;eau 2 fois par jour. Rincez le bouchon doseur avant et après chaque utilisation.<br>
Ingr&eacute;dients: Extrait hydro-alcoolique glyc&eacute;rin&eacute; de rhizome de curcuma *(Curcuma longa). Alcool 4, 95&deg;.<br>
*Issus de l&acute;Agriculture biologique.<br>
Pour 20 ml: Extrait de curcuma: 20 000 mg (20 g) dont curcumine: 200 mg.<br>
Avertissement: D&eacute;conseill&eacute; aux femmes enceintes et allaitantes et aux jeunes enfants. Conserver à l&acute;abri de la chaleur et au r&eacute;frig&eacute;rateur apr&egrave;s ouverture. <br>
	    </td>
	  </tr>
	</tbody>
</table>

',
  },
    {
    :name => "Extrait de Plante Fraiche Cassis 50ml AB",
    :tax_category => complementalimentaire,
    :shipping_category => shipping_category,
    :price => 8.95,
    :eur_price => 8.95,
    :description => '

<p>Le cassis a une influence favorable sur la raideur des muscles et articulations et aide à maintenir leur souplesse.</p>

<br>

<table>
	<tbody>
          <tr>
	    <td>
              <h4>
                Informations&nbsp;complémentaires
              </h4>
            </td>
          </tr>
	
	  <tr>
	    <td>
	     Utilisation: 3 x 30 gouttes par jour dans un verre d’eau ou de jus de fruits.<br>
             Ingrédients: Ribes nigrum extrait hydroalcoolique 100% (alcool* 66% vol, cassis* (feuille), eau).<br>
             *culture biologique.<br>
             Avertissement: Déconseillé aux femmes enceintes.
	    </td>
	  </tr>
	</tbody>
</table>

',
  },
    {
    :name => "Calcium forte 75 comp",
    :tax_category => complementalimentaire,
    :shipping_category => shipping_category,
    :price => 6.74,
    :eur_price => 6.74,
    :description => '

<h2>Description</h2>
<p>
Le calcium et la vitamine D sont nécessaires au maintien d’une ossature et d’une dentition normales. Chez les enfants aussi, ils assurent une croissance et un développement normaux du système osseux. La vitamine D contribue à l’absorption du calcium.
</p>
<h3>Emploi</h3>
<p>Adultes et enfants à partir de 12 ans : 6 comprimés par jour ; 3 le midi et 3 le soir. A prendre avec un peu d’eau ou de jus de fruits pendant les repas.</p>
<br>
<h3>Composition</h3>
<p>Composition pour 6 comprimés
<br>
Calcium (100%*) 800 mg
Vitamine D (150%*) 7,5 &micro;g
<br>
* = AR : Apport de Référence</p>
<h3>Ingrédients</h3>
<p>
Citrate de calcium ; agents de charge : cellulose ; agents d&acute;enrobage : hydroxypropylcellulose, hydroxypropylm&eacute;thylcellulose, st&eacute;arate de magn&eacute;sium, talc, triglyc&eacute;ride ; antiagglom&eacute;rant : dioxyde de silicium ; colorant : dioxyde de titane ; chol&eacute;calicf&eacute;rol.
</p>
',
  },
{
    :name => "Peau cheveux & ongles 45 cap",
    :tax_category => complementalimentaire,
    :shipping_category => shipping_category,
    :price => 10.95,
    :eur_price => 10.95,
    :description => '

<h2>Description</h2>
<p>
Biover Peau, cheveux & ongles contient des substances nutritives naturelles de premi&egrave;re importance comme la biotine et le zinc qui contribuent au maintien d&acute;une peau et d&acute;une chevelure normales. Le zinc aide &eacute;galement &agrave; prot&eacute;ger les cellules contre le stress oxydatif. La vitamine B6 contribue au m&eacute;tabolisme normal des prot&eacute;ines. A utiliser en cas de chute ou de d&eacute;coloration des cheveux et en cas de cheveux ternes et fragiles.
</p>
<h3>Emploi</h3>
<p>Adultes : 2 à 3 capsules par jour. A prendre avec un peu d&acute;eau ou de jus de fruits.</p>
<h3>Composition</h3>
<p>Composition pour 3 capsules
<br>
Equisetum arvense extr. 300 mg<br>
Lithothamnium calcareum 100 mg<br>
L-cystine 200 mg<br>
L-cystéine 100 mg<br>
L-méthionine 450 mg<br>
Vitamine B1 (127%*) 1,4 mg<br>
Vitamine B2 (114%*) 1,6 mg<br>
Vitamine B3 (112,5%*) 18 mg<br>
Vitamine B5 (100%*) 6 mg<br>
Vitamine B6 (143%*) 2 mg<br>
Vitamine B12 (40%*) 1 &micro;g<br>
Biotine (300%*) 150 &micro;g<br>
Zinc (150%*) 15 mg
Acide folique (100%*) 200 &micro;g
<br>
* = AR : Apport de Référence</p>
<h3>Ingrédients</h3>
<p>
L-méthionine ; prêle des champs (18%) ; gélifiant : hydroxypropylméthylcellulose ; L-cystine ; L-cystéine chlorhydrate ; lithothamne (crustacés) (6%) ; citrate de zinc ; antiagglomérants : hydroxypropylméthylcellulose, dioxyde de silicium ; agent d’enrobage : stéarate de magnésium ; nicotinamide ; agents de charge : cellulose, orthophosphate de calcium ; pantothénate de calcium ; colorants : dioxyde de titane, cuivre-chlorophylline ; chlorhydrate de pyridoxine ; mononitrate de thiamine ; riboflavine ; cyanocobalamine ; acide ptéroylmonoglutamique ; biotine.
</p>
',
  },
{
    :name => "Elixir du Suédois 17,5 dg",
    :tax_category => complementalimentaire,
    :shipping_category => shipping_category,
    :price => 13.85,
    :eur_price => 13.85,
    :description => '

<h2>Description</h2>
<p>
BLe grand ELIXIR DU SUEDOIS des laboratoires SAINT BENOIT s’inspire directement de la formule originale du Docteur SAMST, célèbre médecin suédois du 18e siècle, reconnu pour ses nombreuses recherches en botanique. Toujours fabriqué de façon artisanale, le grand Elixir du Suédois est une association de 59 composants naturels qui agissent en synergie pour favoriser l’élimination des déchets dans l’organisme. L’extrême richesse du Grand Elixir du suédois en plantes amères, saveur fondamentale dans le processus de la digestion, et qui a pratiquement disparu de notre alimentation, explique ses vertus digestives, purifiantes et tonifiantes.
</p>
<h3>Emploi</h3>
<p>En complément d’une alimentation variée et équilibrée, 1 cuillère à café, 1 à 3 fois par jour, diluée dans une boisson chaude ou froide. Il est conseillé de prendre le grand ELIXIR DU SUEDOIS à chaque changement de saison, ou après un repas trop copieux. Bien agiter avant emploi. Pour faciliter la digestion, l’élimination : - manger des aliments riches en fibres : fruits et légumes, légumes secs , céréales de préférence complètes - buvez régulièrement, au moins 1,5 litres d’eau par jour. - pratiquez régulièrement un exercice physique. Analyses Contrôle des pesticides et des métaux lourds réalisé par un laboratoire pharmaceutique indépendant. Le trouble du produit, lié à sa composition, n’altère en rien sa qualité. Sans colorant, sans conservateur. Sans sucre ajouté. Tenir hors de portée des enfants, respecter les conseils d’utilisation et ne pas dépasser les doses indiquées.</p>
<h3>Composition</h3>
<p>Eau, alcool, angélique, manne, rhubarbe, séné, zédoaire, camphre, carline, myrrhe, safran, aloès, substances végétales aromatiques Disponible en flacon verre de 200, 350 ou 700 ml</p>
',
  },
{
    :name => "Ail extra",
    :tax_category => complementalimentaire,
    :shipping_category => shipping_category,
    :price => 14.33,
    :eur_price => 14.33,
    :description => '

<h2>Description</h2>
<p>
Sa formule extra concentrée ne nécessite que 2 gélules par jour!
<br>
L&acute;Ail extra de Boutique Nature est formulé pour équilibrer le taux de cholestérol et le maintenir à la normale. Il est aussi bénéfique pour diminuer la tension. Pratique sous forme de gélules pour éviter tous les désagréments de la consommation d&acute;ail pur.
</p>
<h3>Emploi</h3>
<p>Conseils 2 gélules par jour avec un grand verre d’eau.</p>
<h3>Composition</h3>
<p>Extrait de bulbe d&acute;ail (Allium sativum); supports : cellulose microcristalline, xylitol; agents d’enrobage : povidone, gomme laque; gélule d’origine végétale. Pour 2 gélules : Extrait d&acute;ail.........400 mg* dont alicine..........4,8 mg. * Equivalent à 1200 mg de bulbe.</p>
',
  },
{
    :name => "Levure de riz rouge 60 comp",
    :tax_category => complementalimentaire,
    :shipping_category => shipping_category,
    :price => 19.40,
    :eur_price => 19.40,
    :description => '

<h2>Description</h2>
<p>
La levure de riz rouge des laboratoires Diet Horizon est dosée à 600 mg par comprimé. Diet Horizon a renforcé l&acute;efficacité de la levure de riz rouge par :
<br> 
- Du policosanol issu de la canne à sucre. 
<br>
- Du coenzyme Q10 et de la vitamine E antioxydante. 
<br>
- De l&acute;extrait d&acute;artichaut.
<br> 
La levure de riz rouge est utilisée car elle renferme de la monacoline K qui aide à maintenir un taux de cholestérol normal
</p>
<h3>Emploi</h3>
<p>Prendre un comprimé par jour. A ne pas utiliser en cas de prise simultanée de médicaments hypolipidémiants. Déconseillé aux femmes encientes et allaitantes. 
<br>
A conserver à l&acute;abri de la lumière dans un endroit frais et sec.
Les compléments alimentaires doivent être utilisés dans le cadre d&acute;une alimentation variée et équilibrée, et d&acute;un mode de vie sain. Ne pas dépasser la dose journalière indiquée. Tenir hors de portée des enfants. Femmes enceintes et allaitantes, consulter votre médecin.
</p>
<h3>Composition</h3>
<p>
Levure de riz rouge (monascus purpureus), Antiagglomérants : phosphate dicalcique, phosphate tricalcique, mono, di et triglycérides d&acute;acides gras; extrait sec d&acute;artichaut(Cynara scolymus), Agent de charge : fructo-oligo-saccharides; angents d&acute;enrobage : hydroxypropylméthylcellulose, acide stéarique, phosphate dicalcique; coenzyme Q10, extrait de canne à sucre (Saccharum officinarum), succinate acide de D-alphatocophéryle (vitamine E). Sans gluten.
</p>
',
  },
{
    :name => "Sensi Colon relax 30 comp",
    :tax_category => complementalimentaire,
    :shipping_category => shipping_category,
    :price => 11.40,
    :eur_price => 11.40,
    :description => '

<h2>Description</h2>
<p>
ensi Colon Relax d&acute;Ortis est un complément alimentaire naturel qui permet de soulager rapidement et efficacement les ballonnements occasionnels. Fenouil, camomille, menthe et mélisse diminueront ballonnements, flatulences et tensions abdominales. 
<br>
Ventre gonflé, gaz, crampes...
<br>
sont inconfortables et peuvent avoir des conséquences néfastes tant dans votre vie privée que votre vie professionnelle. 
<br>
Si ces symptômes apparaissent moins de 3 fois par mois, après la consommation de certains aliments, d&acute;un repas trop riche, Sensi Colon Relax vous aportera la solution. Le fenouil combat les spasmes, diminue la production de gaz et facilite la digestion. La Camomille lutte contre les tensions abdominales. La Mélisse soulage la douleurs et aide à relâcher les muscles intestinaux source de ces inconforts.
</p>
<h3>Emploi</h3>
<p>Adultes: Prendre 1 comprimé, 3 fois par jour avant chaque repas, avec un grand verre d’eau. 
<br>
Adolescents de 12 à 18 ans: maximum 2 comprimés par jour. Ne pas dépasser la dose journalière recommandée. 
br>
Les compléments alimentaires ne peuvent être utilisés comme substitut d’un régime alimentaire varié, équilibré et d’un mode de vie sain. Tenir hors de portée des jeunes enfants. Déconseillé pendant la grossesse et l’allaitement. Convient aux végétariens. La couleur, l&acute;odeur et le goût de ce produit peuvent varier sans en affecter sa qualité et son efficacité. Ceci est dû au caractère naturel des ingrédients. Conserver au sec et à l’abri de la chaleur.
</p>
<h3>Composition</h3>
<p>
Agent de charge: cellulose microcristalline; extrait de fenouil (Foeniculum vulgare Miller – 600 mg/3 comp.), fibres d’acacia, extraits de: mélisse (Melissa officinalis L. – 400 mg/3 comp.), Camomille (Matricaria recutita L. – 150 mg/ 3 comp.); huile essentielle de menthe poivrée (Mentha x piperita L. – 55 mg/3 comp.), agents d’enrobage: éthylcellulose, triglycérides, acide oléique, carboxymethylcellulose sodique, talc, polydextrose, lécithine de soja, citrate de sodium; anti-agglomérants: dioxyde de silice, stéarate de magnésium.
</p>
',
  }
]

products.each do |product_attrs|
  eur_price = product_attrs.delete(:eur_price)
  Spree::Config[:currency] = "USD"

  default_shipping_category = Spree::ShippingCategory.find_by_name!("Default")
  product = Spree::Product.create!(default_attrs.merge(product_attrs))
  Spree::Config[:currency] = "EUR"
  product.reload
  product.price = eur_price
  product.shipping_category = default_shipping_category
  product.save!
end

Spree::Config[:currency] = "USD"
