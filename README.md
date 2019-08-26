# Mexicain 65-71 : Codex Ixtlilxóchitl de la Bibliothèque nationale de France

Ce livrable technique accompagne le mémoire *« C'est tout un monde à ressusciter ». Édition électronique du manuscrit Mexicain 65-71 : Codex Ixtlilxóchitl de la Bibliothèque nationale de France*, mémoire pour le diplôme de master « Technologies numériques appliquées à l'histoire » de l'Ecole nationale des chartes, dirigé par Ariane Pinche et rédigé par Olivier Jacquot.

**Table des matières**

[TOCM]

[TOC]

## Pour commencer

### Contenu
L'ensemble de la livraison comprend plusieurs types de documents :
1. des fichiers créés pour produire une édition électronique encodée au format XML-TEI, son site web de consultation en HTML et des instruments de recherche (IR) en XML/EAD ; 
2. de la documentation nécessaire à la compréhension des outils utilisés (ODD, dtd)  ;
3. un fichier (.xsl) lié au processus de conversion de l'XML vers HTML : la feuille de style XSLT qui permet de transformer les documents .xml en un document d'un autre format, à savoir pour notre cas, des pages web (.html) ; 
4. un schéma Relax NG (document .rng) élaboré à partir de l'édition TEI que nous avons développée (document .xml). 
5. des fichiers produits pour rédiger en LaTeX un mémoire de recherche (sortie PDF) ;
6. des fichiers d'images (jpg, jpeg, png) utilisés pour illustrer le mémoire de recherche et le site web ;
7. des packs d'installation pour les logiciels utilisés pour ces travaux.

### Pré-requis
Quelques logiciels élémentaires suffisent pour prendre connaissance du mémoire et de l'édition électronique du manuscrit Mexicain 65-71 :
```
Navigateur Web pour lire les fichiers PDF et HTML
```
En effet, tous les navigateurs proposent des lecteurs PDF intégrés.

Livrés sous forme de fichiers HTML et PDF, l'édition électronique et le site web de consultation sont réputés accessibles à tout public.

Les fichiers source (xml, tex) produits avec des logiciels dédiés peuvent être consultés avec ceux-ci ou un éditeur de texte (Notepad++, Sublime Text, etc.). Sinon, les fichiers à exécuter sont fournis afin d'installer l'environnement informatique nécessaire au fonctionnement des fichiers source.

### Architecture
Voir [annexe : Architecture de la livraison](#annexe1)

### Installation
Pour lire les fichiers source, des logiciels sont à installer.

#### Installer un lecteur de fichier PDF
À défaut de navigateur web, un lecteur de fichiers PDF peut être installé :
* [Adobe Acrobat Reader DC](https://get.adobe.com/fr/reader/otherversions/) : lecteur de fichiers PDF pour Windows, MAC OS, Android ;
* [Evince](https://wiki.gnome.org/Apps/Evince/Downloads) : lecteur de fichiers PDF pour Ubuntu.

#### Générer le fichier HTML à partir des fichiers livrés
```
Ouvrir le logiciel Oxygen XML Editor
Ouvrir le fichier 'Mexicain65-71-corpus.xml', 'Mexicain65-71.xsl' sur Oxygen XML Editor
Utiliser le processeur XSLT du logiciel Oxygen XML Editor pour générer les fichiers .html
Enregistrer les fichiers .html et ouvrir le fichier 'Mexicain65-71-01accueil.html' dans un navigateur web.
```
#### Générer le fichier PDF du mémoire à partir des fichiers livrés
```
Ouvrir le logiciel TeXstudio
Ouvrir le fichier 'Jacquot_memoire.tex' sur TeXstudio
Dans le menu Options > Configurer TeXStudio > Compilations
```
Changer la ligne :
```
xelatex -synctex=1 -interaction=nonstopmode %.tex
```
En  :
```
xelatex -synctex=1 -shell-escape -interaction=nonstopmode %.tex
Dans le menu Options > Configurer TeXStudio > Production, choisir la compilation par défaut XeLaTeX
Compiler pour générer le fichier pdf
```

## Démarrage

#### Consulter l'édition numérique du Mexicain 65-71 : Codex Ixtlilxóchitl
Ouvrir le fichier *Mexicain65-71_accueil.html* avec un navigateur Web. Les différents menus de navigation du site construit permettent de consulter l'ensemble des fichiers HTML produits.

#### Lire le mémoire
Ouvrir le fichier *Jacquot_memoire.pdf* avec un navigateur web ou un lecteur de fichiers PDF.

## Fabriqué avec
* [Oxygen XML Editor](https://www.oxygenxml.com/) - Éditeur XML
* [TeX Live](http://www.tug.org/texlive/) - Distribution TeX
* [TeXstudio](https://www.texstudio.org/) - Éditeur LaTeX
* [Bootstrap](https://getbootstrap.com/) - Framework de création de sites web

## Auteur
* **Olivier Jacquot** - [Amoxcalli](https://github.com/olivierjacquot)

## License
Ces sources sont mises à disposition dans le cadre de la licence *Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International Conditions* [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.fr).

## Remerciements
Ce projet doit beaucoup à de nombreuses éditions numériques, dont :

* [The Mapas Project](https://mapas.uoregon.edu/) - Édition numérique de mappes
* [Les cours d'Antoine Desgodets ](http://www.desgodets.net/) - Édition numérique des cours d'Antoine Desgodets
* [Vincent Van Gogh The Letters](http://vangoghletters.org) - Édition numérique des lettre de Vincent Van Gogh

## Annexe
### <a name="annexe1"></a>Architecture de la livraison
Ce livrable technique se divise en plusieurs dossiers :
```bash
┌── Jacquot
├───ead
│   ├───ead.dtd [183kB]                                         # Document type definition EAD
│   ├───FRBAM-Americain.xml [275kB]                             # Instrument de recherche EAD
│   ├───FRBAM-Angrand.xml [66Kb]                                # Instrument de recherche EAD
│   └───FRBAM-Mexicain.xml [716kB]                              # Instrument de recherche EAD
├───edition
│   ├───Mexicain65-71
│   ├─────documentation
│   │   ├─────out
│   │   ├───────ODD-Mexicain65-71.rng [408Kb]                   # Fichier ODD RelaxNG
│   │   ├─────DTD-Entity.dtd [7Kb]                              # Document type definition
│   │   ├─────ODD-Mexicain65-71.html [2Mb]                      # Version HTML de l'ODD
│   │   └─────ODD-Mexicain65-71.xml [109Kb]                     # Version XML de l'ODD
│   ├─────visualisation
│   │   ├─────fol_94r.jpg [223Kb]                               # Fichier image
│   │   ├─────fol_95r.jpg [293Kb]                               # Fichier image
│   │   ├─────fol_95v.jpg [218Kb]                               # Fichier image
│   │   ├─────fol_96r.jpg [253Kb]                               # Fichier image
│   │   ├─────fol_96v.jpg [273Kb]                               # Fichier image
│   │   ├─────fol_97r.jpg [264Kb]                               # Fichier image
│   │   ├─────fol_97v.jpg [205Kb]                               # Fichier image
│   │   ├─────fol_98r.jpg [230Kb]                               # Fichier image
│   │   ├─────fol_98v.jpg [237Kb]                               # Fichier image
│   │   ├─────fol_99r.jpg [232Kb]                               # Fichier image
│   │   ├─────fol_99v.jpg [233Kb]                               # Fichier image
│   │   ├─────fol_100r.jpg [279Kb]                              # Fichier image
│   │   ├─────fol_100v.jpg [270Kb]                              # Fichier image
│   │   ├─────fol_101r.jpg [234Kb]                              # Fichier image
│   │   ├─────fol_101v.jpg [217Kb]                              # Fichier image
│   │   ├─────fol_102r.jpg [279Kb]                              # Fichier image
│   │   ├─────fol_102v.jpg [232Kb]                              # Fichier image
│   │   ├─────fol_103r.jpg [286Kb]                              # Fichier image
│   │   ├─────fol_103v.jpg [266Kb]                              # Fichier image
│   │   ├─────fol_104r.jpg [257Kb]                              # Fichier image
│   │   ├─────fol_104v.jpg [249Kb]                              # Fichier image
│   │   ├─────fol_105r.jpg [333Kb]                              # Fichier image
│   │   ├─────fol_106r.jpg [366Kb]                              # Fichier image
│   │   ├─────fol_107r.jpg [222Kb]                              # Fichier image
│   │   ├─────fol_108r.jpg [333Kb]                              # Fichier image
│   │   ├─────fol_109-110r.jpg [428Kb]                          # Fichier image
│   │   ├─────fol_109-110v.jpg [366Kb]                          # Fichier image
│   │   ├─────fol_112r.jpg [420Kb]                              # Fichier image
│   │   ├─────fol_112v.jpg [309Kb]                              # Fichier image
│   │   ├─────fol_113r.jpg [292Kb]                              # Fichier image
│   │   ├─────fol_113v.jpg [304Kb]                              # Fichier image
│   │   ├─────fol_114r.jpg [306Kb]                              # Fichier image
│   │   ├─────fol_114v.jpg [296Kb]                              # Fichier image
│   │   ├─────fol_115r.jpg [349Kb]                              # Fichier image
│   │   ├─────fol_115v.jpg [364Kb]                              # Fichier image
│   │   ├─────fol_116r.jpg [324Kb]                              # Fichier image
│   │   ├─────fol_116v.jpg [315Kb]                              # Fichier image
│   │   ├─────fol_117r.jpg [338Kb]                              # Fichier image
│   │   ├─────fol_117v.jpg [278Kb]                              # Fichier image
│   │   ├─────fol_118r.jpg [281Kb]                              # Fichier image
│   │   ├─────fol_118v.jpg [266Kb]                              # Fichier image
│   │   ├─────fol_119r.jpg [260Kb]                              # Fichier image
│   │   ├─────fol_119v.jpg [297Kb]                              # Fichier image
│   │   ├─────fol_120r.jpg [305Kb]                              # Fichier image
│   │   ├─────fol_120v.jpg [271Kb]                              # Fichier image
│   │   ├─────fol_121r.jpg [291Kb]                              # Fichier image
│   │   ├─────fol_121v.jpg [291Kb]                              # Fichier image
│   │   ├─────fol_122r.jpg [341Kb]                              # Fichier image
│   │   ├─────fol_122v.jpg [352Kb]                              # Fichier image
│   │   ├─────logo-BnF.png [2Kb]                                # Fichier image
│   │   ├─────logo-ENC.png [24Kb]                               # Fichier image
│   │   ├─────mexicain65-71.png [178Kb]                         # Fichier image
│   │   └─────Mexicain65-71.xsl [189Kb]                         # Feuille de transformation
│   ├─────Mexicain65-71.xml [3Kb]		                        # Fichier XML du corpus
│   ├─────Mexicain65-71-01.xml [211Kb]                          # Fichier XML, 1e partie du MSS
│   ├─────Mexicain65-71-02.xml [17Kb]                           # Fichier XML, 2e partie du MSS
│   ├─────Mexicain65-71-03.xml [35Kb]                           # Fichier XML, 3e partie du MSS
│   ├─────Mexicain65-71-04.xml [484Kb]                          # Fichier XML, 4e partie du MSS
│   ├─────Mexicain65-71_accueil.html [8Kb]                      # Fichier HTML, page d'accueil
│   ├─────Mexicain65-71_a_propos.html [11Kb]                    # Fichier HTML, page à propos 
│   ├─────Mexicain65-71_biblio.html [19Kb]                      # Fichier HTML, page bibliographie
│   ├─────Mexicain65-71_deco.html [6Kb]                         # Fichier HTML, page décoration
│   ├─────Mexicain65-71_etat.html [6Kb]                         # Fichier HTML, page état
│   ├─────Mexicain65-71_facsim.html [302Kb]                     # Fichier HTML, page facsimilaire
│   ├─────Mexicain65-71_foliotation.html [7Kb]                  # Fichier HTML, page foliotation
│   ├─────Mexicain65-71_histoire.html [12Kb]                    # Fichier HTML, page histoire
│   ├─────Mexicain65-71_indexl.html [6Kb]                       # Fichier HTML, page index locorum
│   ├─────Mexicain65-71_indexn.html [8Kb]                       # Fichier HTML, page index nominum
│   ├─────Mexicain65-71_layout.html [7Kb]                       # Fichier HTML, page layout
│   ├─────Mexicain65-71_mains.html [9Kb]                        # Fichier HTML, page mains
│   ├─────Mexicain65-71_manuel.html [1Kb]                       # Fichier HTML, page manuel
│   ├─────Mexicain65-71_norm.html [330Kb]                       # Fichier HTML, page normalisée
│   ├─────Mexicain65-71_notes.html [13Kb]                       # Fichier HTML, page notes
│   ├─────Mexicain65-71_reliure.html [6Kb]                      # Fichier HTML, page reliure
│   ├─────Mexicain65-71_struct.html [6Kb]                       # Fichier HTML, page structure
│   ├─────Mexicain65-71_support.html [7Kb]                      # Fichier HTML, page support
│   └─────Mexicain65-71_temoins.html [7Kb]                      # Fichier HTML, page témoins
├───memoire
│   ├───back
│   │   ├───appendix.tex [205kB]                                # Fichier LaTeX de annexes
│   │   ├───colophon.tex [2kB]                                  # Fichier LaTeX du colophon
│   │   └───repertoire.tex [110kB]                              # Fichier LaTeX du répertorie
│   ├───front
│   │   ├───abbrev.tex [8kB]                                    # Fichier LaTeX des abréviations
│   │   ├───abstract.tex [3kB]                                  # Fichier LaTeX du résumé
│   │   ├───epigraph.tex [1kB]                                  # Fichier LaTeX de l'épigraphe
│   │   ├───thanks.tex [3kB]                                    # Fichier LaTeX des remerciements
│   │   └───titlepage.tex [1kB]                                 # Fichier LaTeX de la page de titre
│   ├───images
│   │   ├───25795.png [7Mb]                                     # Fichier image
│   │   ├───36db339b6a.jpg [315kB]                              # Fichier image
│   │   ├───40_brasseur.png [316Kb]                             # Fichier image
│   │   ├───40_omont.jpg [180Kb]                                # Fichier image
│   │   ├───40_pinart.png [229Kb]                               # Fichier image
│   │   ├───596dbb9882.jpg [48Kb]                               # Fichier image
│   │   ├───833189e405.jpg [8Kb]                                # Fichier image
│   │   ├───aigle-serpent.jpg [337Kb]                           # Fichier image
│   │   ├───America-Latina-Mapa.jpg [197Kb]                     # Fichier image
│   │   ├───amoxcalli65-71.jpg [235Kb]                          # Fichier image
│   │   ├───amoxcalli65-71-glifo.jpg [159Kb]                    # Fichier image
│   │   ├───ano.png [77Kb]                                      # Fichier image
│   │   ├───arkyves.png [300Kb]                                 # Fichier image
│   │   ├───arrancaban.jpg [17Kb]                               # Fichier image
│   │   ├───aubin.jpg [284Kb]                                   # Fichier image
│   │   ├───aztec-empire.jpg [1Mb]                              # Fichier image
│   │   ├───ballad-result.png [377Kb]                           # Fichier image
│   │   ├───ballad-sel.png [689Kb]                              # Fichier image
│   │   ├───bdmx.png [1Mb]                                      # Fichier image
│   │   ├───bodegon_thesaurus.jpg [278Kb]                       # Fichier image
│   │   ├───boothome.png [330Kb]                                # Fichier image
│   │   ├───carnet-proust.jpg [26Kb]                            # Fichier image
│   │   ├───cedille.png [82Kb]                                  # Fichier image
│   │   ├───ciceri.png [79Kb]                                   # Fichier image
│   │   ├───Codex_Ixtlilxochitl__btv1b84701752_22.JPEG [227Kb]  # Fichier image
│   │   ├───Codex_Ixtlilxochitl__btv1b84701752_29.JPEG [358Kb]  # Fichier image
│   │   ├───Codex_Ixtlilxochitl__btv1b84701752_33.JPEG [326Kb]  # Fichier image
│   │   ├───Codex_Ixtlilxochitl__btv1b84701752_36.JPEG [358Kb]  # Fichier image
│   │   ├───Codex_Ixtlilxochitl__btv1b84701752_45.JPEG [317Kb]  # Fichier image
│   │   ├───Codex_Ixtlilxochitl__btv1b84701752_5.JPEG [218Kb]   # Fichier image
│   │   ├───Codex_Veytia_page_2.jpg [241Kb]                     # Fichier image
│   │   ├───Codex_Veytia_page_22.jpg [71Kb]                     # Fichier image
│   │   ├───codex-ixtlilxochitl-veytia-echaniz.jpg [501Kb]      # Fichier image
│   │   ├───codex-justinianus.jpg [126Kb]                       # Fichier image
│   │   ├───cohuatopilli.jpg [220Kb]                            # Fichier image
│   │   ├───conestas.png [48Kb]                                 # Fichier image
│   │   ├───corazon.png [87Kb]                                  # Fichier image
│   │   ├───cubes.png [187Kb]                                   # Fichier image
│   │   ├───cuitlahuac.jpg [75Kb]                               # Fichier image
│   │   ├───decimo.png [41Kb]                                   # Fichier image
│   │   ├───digipal-annot.jpg [327Kb]                           # Fichier image
│   │   ├───digipal-select.png [365Kb]                          # Fichier image
│   │   ├───dombey.png [604Kb]                                  # Fichier image
│   │   ├───ducuing.png [940Kb]                                 # Fichier image
│   │   ├───echaniz-laud1.jpg [29Kb]                            # Fichier image
│   │   ├───echaniz-laud2.jpg [18Kb]                            # Fichier image
│   │   ├───elcorazon.png [61Kb]                                # Fichier image
│   │   ├───expo-1889.jpg [363Kb]                               # Fichier image
│   │   ├───expo1889.png [797Kb]                                # Fichier image
│   │   ├───gayol.jpg [259Kb]                                   # Fichier image
│   │   ├───giunti.jpg [145Kb]                                  # Fichier image
│   │   ├───glasgow.png [666Kb]                                 # Fichier image
│   │   ├───gorman.jpg [638Kb]                                  # Fichier image
│   │   ├───goupil-atlas.jpg [142Kb]                            # Fichier image
│   │   ├───goupil-in-atlas.jpg [141Kb]                         # Fichier image
│   │   ├───hacian.png [53Kb]                                   # Fichier image
│   │   ├───himanis.png [607Kb]                                 # Fichier image
│   │   ├───htr114.jpg [374Kb]                                  # Fichier image
│   │   ├───humarec.png [644Kb]                                 # Fichier image
│   │   ├───iln.png [386Kb]                                     # Fichier image
│   │   ├───irht-leica.jpg [193Kb]                              # Fichier image
│   │   ├───izcoatl.jpg [71Kb]                                  # Fichier image
│   │   ├───langues.jpg [67Kb]                                  # Fichier image
│   │   ├───lotb.png [755Kb]                                    # Fichier image
│   │   ├───maaya.jpg [135Kb]                                   # Fichier image
│   │   ├───maayavector.jpg [48Kb]                              # Fichier image
│   │   ├───mandragore102.jpg [167Kb]                           # Fichier image
│   │   ├───mandragore-mod.jpg [264Kb]                          # Fichier image
│   │   ├───mapasproject1.jpg [192Kb]                           # Fichier image
│   │   ├───mapasproject2.jpg [146Kb]                           # Fichier image
│   │   ├───meroweg.png [128Kb]                                 # Fichier image
│   │   ├───mesoamerica.jpg [576Kb]                             # Fichier image
│   │   ├───miradorannot.png [468Kb]                            # Fichier image
│   │   ├───munczos.png [51Kb]                                  # Fichier image
│   │   ├───mwb.png [89Kb]                                      # Fichier image
│   │   ├───neurdein.png [43Kb]                                 # Fichier image
│   │   ├───numipal.png [400Kb]                                 # Fichier image
│   │   ├───ocr113.jpg [290Kb]                                  # Fichier image
│   │   ├───ODD-html.png [71Kb]                                 # Fichier image
│   │   ├───ODD-rng.png [46Kb]                                  # Fichier image
│   │   ├───P476015.jpg [330Kb]                                 # Fichier image
│   │   ├───paraque.jpg [4Kb]                                   # Fichier image
│   │   ├───points.png [118Kb]                                  # Fichier image
│   │   ├───que.png [88Kb]                                      # Fichier image
│   │   ├───quinbakiric.png [101Kb]                             # Fichier image
│   │   ├───rregosijos.png [66Kb]                               # Fichier image
│   │   ├───sacandoles.jpg [24Kb]                               # Fichier image
│   │   ├───segmentation115.jpg [450Kb]                         # Fichier image
│   │   ├───siguiente.png [55Kb]                                # Fichier image
│   │   ├───tepalecoc.png [80Kb]                                # Fichier image
│   │   ├───thouvenot.jpg [522Kb]                               # Fichier image
│   │   ├───tlacuilo.jpg [102Kb]                                # Fichier image
│   │   ├───tlaloc-ceron.jpg [125Kb]                            # Fichier image
│   │   ├───tlatlazan.png [220Kb]                               # Fichier image
│   │   ├───tonalamatl.jpg [528Kb]                              # Fichier image
│   │   ├───triollet.jpg [900Kb]                                # Fichier image
│   │   ├───tsak.png [213Kb]                                    # Fichier image
│   │   ├───ulb.png [58Kb]                                      # Fichier image
│   │   ├───uxul.jpg [160Kb]                                    # Fichier image
│   │   ├───vercelli.png [479Kb]                                # Fichier image
│   │   ├───voleur.png [1Mb]                                    # Fichier image
│   │   ├───waldeck.jpg [36Kb]                                  # Fichier image
│   │   ├───welsh-book.jpg [323Kb]                              # Fichier image
│   │   ├───writing-systems.png [47Kb]                          # Fichier image
│   │   ├───xochicalco.jpg [68Kb]                               # Fichier image
│   │   └───xochicalco-an.jpg [51Kb]                            # Fichier image
│   ├───main
│   │   ├───bibliography.tex [175Mb]                            # Fichier LaTeX de la bibliographie
│   │   ├───conclusion.tex [10Mb]                               # Fichier LaTeX de la conclusion
│   │   ├───introduction.tex [5Mb]                              # Fichier LaTeX de l'introduction
│   │   ├───partie1.tex [469Mb]                                 # Fichier LaTeX de la 1e partie
│   │   ├───partie2.tex [173Mb]                                 # Fichier LaTeX de la 2e partie
│   │   ├───partie3.tex [154Mb]                                 # Fichier LaTeX de la 3e partie
│   │   ├───partie4.tex [144Mb]                                 # Fichier LaTeX de la 4e partie
│   │   ├───partie5.tex [86Mb]                                  # Fichier LaTeX de la 5e partie
│   │   ├───partie6.tex [47Mb]                                  # Fichier LaTeX de la 6e partie
│   │   └───partie7.tex [255Mb]                                 # Fichier LaTeX de la 7e partie
│   ├───Jacquot_memoire.pdf [36Mb]                                     # Fichier .pdf du mémoire
│   └───Jacquot_memoire.tex [7Mb]                               # Fichier source .tex du mémoire
├───oxygen_XML_editor                                           # Répertoire d'Oxygen
│   ├───linux
│   │   └───oxygen-64bit.sh [274Mb]                             # Script shell
│   ├───max_os_x
│   │   └───oxygen.dmg [312Mb]                                  # Image disque
│   └───windows
│       ├───oxygen.exe [263Mb]                                  # Fichier exécutable
│       └───oxygen-64bit.exe [268Mb]                            # Fichier exécutable
├───texstudio                                                   # Répertoire de TeXstudio
│   ├───linux
│   │   └───texstudio_2.12.16-1+2.1_amd64.deb [17Mb]            # Package Debian
│   ├───max_os_x
│   │   └───texstudio-2.12.16-osx.dmg [52Mb]                    # Image disque
│   └───windows
│       └───texstudio-2.12.16-win-qt5.exe [87Mb]                # Fichier exécutable
└──README.md [Kb]                                               # Fichier Lisez-moi
```