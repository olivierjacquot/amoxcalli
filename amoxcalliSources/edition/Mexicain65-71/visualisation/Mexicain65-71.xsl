<?xml version="1.0" encoding="UTF-8"?>
<!--
<h1>Mexicain65-71.xsl</h1>

© 2019 Olivier Jacquot

<p>
Cette transformation XSLT 2.0 transforme du TEI en HTML. Elle est produite dans le cadre du 
master "Technologies numériques appliquées à l'histoire" de l'Ecole nationale des chartes
pour transformer l'encodage du manuscrit Mexicain 65-71 de la Bibliothèque nationale de France.
</p>
-->


<!DOCTYPE stylesheet [
<!ENTITY inf "&#8249;" >
<!ENTITY sup "&#8250;" >
]>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="xs tei"
    version="2.0">

    <!-- Sortie html -->
    <xsl:output method="html" indent="yes" encoding="UTF-8"/>
    <xsl:preserve-space elements="content"/>

    <!-- Définition des chemins des sorties html -->
    <xsl:template match="/">
        <xsl:variable name="witfile">
            <xsl:value-of select="replace(base-uri(.), '.xml', '')"/>
        </xsl:variable>

        <!-- Test -->
        <!--<xsl:variable name="testFacsim">
        <xsl:apply-templates select="//tei:TEI" />
        </xsl:variable>
       -->
        <!-- Fin test -->

        <xsl:variable name="pathFacsim">
            <xsl:value-of select="concat($witfile, '_facsim', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathNorm">
            <xsl:value-of select="concat($witfile, '_norm', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathBibliogr">
            <xsl:value-of select="concat($witfile, '_biblio', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathAccueil">
            <xsl:value-of select="concat($witfile, '_accueil', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathManuel">
            <xsl:value-of select="concat($witfile, '_manuel', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathTémoins">
            <xsl:value-of select="concat($witfile, '_temoins', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathMains">
            <xsl:value-of select="concat($witfile, '_mains', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathLayout">
            <xsl:value-of select="concat($witfile, '_layout', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathDécoration">
            <xsl:value-of select="concat($witfile, '_deco', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathStructure">
            <xsl:value-of select="concat($witfile, '_struct', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathSupport">
            <xsl:value-of select="concat($witfile, '_support', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathReliure">
            <xsl:value-of select="concat($witfile, '_reliure', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathFoliotation">
            <xsl:value-of select="concat($witfile, '_foliotation', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathEtat">
            <xsl:value-of select="concat($witfile, '_etat', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathHistoire">
            <xsl:value-of select="concat($witfile, '_histoire', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathApropos">
            <xsl:value-of select="concat($witfile, '_a_propos', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathIndexL">
            <xsl:value-of select="concat($witfile, '_indexl', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathIndexN">
            <xsl:value-of select="concat($witfile, '_indexn', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathNotes">
            <xsl:value-of select="concat($witfile, '_notes', '.html')"/>
        </xsl:variable>

        <!-- Configuration de la sortie de la page d'accueil -->
        <xsl:result-document href="{$pathAccueil}" method="html" indent="yes">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="{$pathAccueil}">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Manuscrit Mexicain 65-71</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_facsim.html"
                                        >Version fac-similaire</a>
                                    <a class="dropdown-item" href="Mexicain65-71_norm.html">Version
                                        normalisée</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Description codicologique</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_temoins.html"
                                        >Témoins</a>
                                    <a class="dropdown-item" href="Mexicain65-71_mains.html"
                                        >Mains</a>
                                    <a class="dropdown-item" href="Mexicain65-71_layout.html">Mise
                                        en page</a>
                                    <a class="dropdown-item" href="Mexicain65-71_deco.html"
                                        >Décoration</a>
                                    <a class="dropdown-item" href="Mexicain65-71_struct.html"
                                        >Structure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_support.html"
                                        >Support</a>
                                    <a class="dropdown-item" href="Mexicain65-71_reliure.html"
                                        >Reliure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_foliotation.html"
                                        >Foliotation</a>
                                    <a class="dropdown-item" href="Mexicain65-71_etat.html">État</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_biblio.html"
                                    >Bibliographie</a>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_indexn.html">Index
                                        nominum</a>
                                    <a class="dropdown-item" href="Mexicain65-71_indexl.html">Index
                                        locorum</a>
                                    <!-- <a class="dropdown-item" href="Mexicain65-71_notes.html">Index
                                        rerum</a> -->
                                </div>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_histoire.html"
                                    >Historique</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_a_propos.html">À propos du
                                    projet</a>
                            </li>
                        </ul>
                    </nav>
                    <div class="media">
                        <div style="display: block;" class="align-self-start mr-3">
                            <iframe style="width: 500px; height:566.1174899866488px; border: 0;"
                                src="https://gallica.bnf.fr/ark:/12148/btv1b84701752/f1.item.mini.auto=2"
                            />
                        </div>
                        <div class="media-body">
                            <div>
                                <h1/>
                                <h1 class="display-4">Manuscrit Mexicain 65-71 : Codex
                                    Ixtlilxochitl</h1>
                                <h1/>
                                <p class="lead">Édition scientifique nativement numérique du
                                    manuscrit Mexicain 65-71, dit <span style="font-style:italic;"
                                        >Codex Ixtlilxochitl</span>.</p>
                                <hr class="my-4"/>
                            </div>
                            <p style="font-style:italic;">Cette édition a été encodée selon les
                                recommandations de la "Text Encoding Initiative" (schéma XML-TEI
                                dans sa version P5). Le menu haut donne accès à quelques ressources
                                afférentes au manuscrit. Les liens du bas de page permettent d'aller
                                plus loin vers des ressources extérieures. <p>
                                    <a class="btn btn-secondary" href="Mexicain65-71_facsim.html"
                                        >Version fac-similaire du manuscrit</a>
                                </p>
                                <p>
                                    <a class="btn btn-secondary" href="Mexicain65-71_norm.html"
                                        >Version régularisée du manuscrit</a>
                                </p>
                            </p>
                        </div>
                    </div>
                </body>
                <hr class="my-2"/>
                <div class="row"> </div>
                <div class="row">
                    <div class="col-sm-4">
                        <div class="card" style="width: 19rem;">
                            <div class="card-body">
                                <h5 class="card-title">L'encodage du texte</h5>
                                <p class="card-text">Accès aux fichierx source.</p>
                                <a
                                    href="https://github.com/olivierjacquot/amoxcalli/tree/master/amoxcalliSources/edition/Mexicain65-71"
                                    class="btn btn-info">github.com/olivierjacquot</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="card" style="width: 19rem;">
                            <div class="card-body">
                                <h5 class="card-title">Voir l'original</h5>
                                <p class="card-text">Consulter le manuscrit numérisé.</p>
                                <a href="https://gallica.bnf.fr/ark:/12148/btv1b84701752"
                                    class="btn btn-info">gallica.bnf.fr</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="card" style="width: 19rem;">
                            <div class="card-body">
                                <h5 class="card-title">En savoir plus</h5>
                                <p class="card-text">Manuel d'encodage.</p>
                                <a href="visualisation/ODD-Mexicain65-71.html" class="btn btn-info"
                                    >Manuel</a>
                            </div>
                        </div>
                    </div>
                </div>
                <hr class="my-4"/>
                <!-- Footer -->
                <footer class="page-footer pt-2"
                    style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                    <div class="container">

                        <div class="row">
                            <div class="col-sm">
                                <a href="http://www.chartes.psl.eu/">
                                    <img src="visualisation/logo-ENC.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> École nationale des
                                    Chartes 65, rue de Richelieu 75002 Paris</p>
                            </div>
                            <div class="col-sm"> </div>
                            <div class="col-sm">
                                <a href="http://www.bnf.fr/">
                                    <img src="visualisation/logo-BnF.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> Bibliothèque
                                    nationale de France Quai François Mauriac 75116 Paris cedex
                                    13</p>
                            </div>
                        </div>
                    </div>
                    <!-- Content -->
                    <div class="container-fluid text-center"> </div>
                    <!-- Content -->
                    <!-- Copyright -->
                    <div class="footer-copyright text-center">© <a
                            href="https://amoxcalli.hypotheses.org/"> Olivier Jacquot</a>,
                        2019.</div>
                    <!-- Copyright -->
                </footer>
                <!-- Footer -->
            </html>
        </xsl:result-document>


        <!-- Manuel-->
        <xsl:result-document href="{$pathManuel}" method="html" indent="yes">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <p>
                        <a class="btn btn-warning" href="{$pathAccueil}">Retour accueil</a>
                    </p>
                </body>
            </html>
        </xsl:result-document>

        <!-- Configuration de la sortie de la bibliographie -->
        <xsl:result-document href="{$pathBibliogr}" method="html" indent="yes">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="{$pathAccueil}">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Manuscrit Mexicain 65-71</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_facsim.html"
                                        >Version fac-similaire</a>
                                    <a class="dropdown-item" href="Mexicain65-71_norm.html">Version
                                        normalisée</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Description codicologique</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_temoins.html"
                                        >Témoins</a>
                                    <a class="dropdown-item" href="Mexicain65-71_mains.html"
                                        >Mains</a>
                                    <a class="dropdown-item" href="Mexicain65-71_layout.html">Mise
                                        en page</a>
                                    <a class="dropdown-item" href="Mexicain65-71_deco.html"
                                        >Décoration</a>
                                    <a class="dropdown-item" href="Mexicain65-71_struct.html"
                                        >Structure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_support.html"
                                        >Support</a>
                                    <a class="dropdown-item" href="Mexicain65-71_reliure.html"
                                        >Reliure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_foliotation.html"
                                        >Foliotation</a>
                                    <a class="dropdown-item" href="Mexicain65-71_etat.html">État</a>
                                </div>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_biblio.html"
                                    >Bibliographie</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_indexn.html">Index
                                        nominum</a>
                                    <a class="dropdown-item" href="Mexicain65-71_indexl.html">Index
                                        locorum</a>
                                    <!-- <a class="dropdown-item" href="Mexicain65-71_notes.html">Index
                                        rerum</a> -->
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_histoire.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_a_propos.html">À propos du
                                    projet</a>
                            </li>
                        </ul>
                    </nav>
                    <div>
                        <h2>
                            <xsl:apply-templates select="//listBibl/head"/>
                        </h2>
                        <ul>
                            <xsl:for-each select="//listBibl/bibl">
                                <xsl:element name="li">
                                    <xsl:if test="author">
                                        <xsl:value-of
                                            select="concat(string-join(author, ' ; '), ', ')"/>
                                    </xsl:if>
                                    <xsl:if test="title">
                                        <xsl:element name="em">
                                            <xsl:value-of
                                                select="concat(string-join(title, ', '), ', ')"/>
                                        </xsl:element>
                                    </xsl:if>
                                    <xsl:if test="pubPlace">
                                        <xsl:value-of
                                            select="concat(string-join(pubPlace, ' ; '), ' : ')"/>
                                    </xsl:if>
                                    <xsl:if test="publisher">
                                        <xsl:value-of
                                            select="concat(string-join(publisher, ' : '), ', ')"/>
                                    </xsl:if>
                                    <xsl:if test="date">
                                        <xsl:value-of select="concat(string-join(date, ', '), '. ')"
                                        />
                                    </xsl:if>
                                    <xsl:if test="note[@type = 'text']">
                                        <!-- Règle pour les notes standard -->
                                        <xsl:value-of
                                            select="concat(string-join(note[@type = 'text'], ' '), ' ')"
                                        />
                                    </xsl:if>
                                    <xsl:if test="note[@type = 'url']">
                                        <!-- Règle pour les notes url -->
                                        <xsl:text>Disponible en ligne, url : &#8249;</xsl:text>
                                        <xsl:element name="a">
                                            <!-- Instruction pour activer l'url -->
                                            <xsl:attribute name="href">
                                                <xsl:value-of select="ref[@type = 'url']"/>
                                            </xsl:attribute>
                                            <xsl:value-of select="note/ref[@type = 'url']"/>
                                        </xsl:element>
                                        <xsl:text>&#8250;.</xsl:text>
                                    </xsl:if>
                                </xsl:element>
                                <xsl:element name="br"/>
                                <!-- Ajout pour aérer la présentation -->
                            </xsl:for-each>
                        </ul>
                        <p>
                            <a class="btn btn-warning" href="{$pathAccueil}">Retour accueil</a>
                        </p>
                    </div>
                </body>
                <!-- Footer -->
                <footer class="page-footer pt-2"
                    style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                    <div class="container">

                        <div class="row">
                            <div class="col-sm">
                                <a href="http://www.chartes.psl.eu/">
                                    <img src="visualisation/logo-ENC.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> École nationale des
                                    Chartes 65, rue de Richelieu 75002 Paris</p>
                            </div>
                            <div class="col-sm"> </div>
                            <div class="col-sm">
                                <a href="http://www.bnf.fr/">
                                    <img src="visualisation/logo-BnF.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> Bibliothèque
                                    nationale de France Quai François Mauriac 75116 Paris cedex
                                    13</p>
                            </div>
                        </div>
                    </div>
                    <!-- Content -->
                    <div class="container-fluid text-center"> </div>
                    <!-- Content -->
                    <!-- Copyright -->
                    <div class="footer-copyright text-center">© <a
                            href="https://amoxcalli.hypotheses.org/"> Olivier Jacquot</a>,
                        2019.</div>
                    <!-- Copyright -->
                </footer>
                <!-- Footer -->
            </html>
        </xsl:result-document>

        <!--Configuration de sorte de la page des témoins-->
        <xsl:result-document href="{$pathTémoins}" method="html" indent="yes">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="{$pathAccueil}">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Manuscrit Mexicain 65-71</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_facsim.html"
                                        >Version fac-similaire</a>
                                    <a class="dropdown-item" href="Mexicain65-71_norm.html">Version
                                        normalisée</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Description codicologique</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_temoins.html"
                                        >Témoins</a>
                                    <a class="dropdown-item" href="Mexicain65-71_mains.html"
                                        >Mains</a>
                                    <a class="dropdown-item" href="Mexicain65-71_layout.html">Mise
                                        en page</a>
                                    <a class="dropdown-item" href="Mexicain65-71_deco.html"
                                        >Décoration</a>
                                    <a class="dropdown-item" href="Mexicain65-71_struct.html"
                                        >Structure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_support.html"
                                        >Support</a>
                                    <a class="dropdown-item" href="Mexicain65-71_reliure.html"
                                        >Reliure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_foliotation.html"
                                        >Foliotation</a>
                                    <a class="dropdown-item" href="Mexicain65-71_etat.html">État</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_biblio.html"
                                    >Bibliographie</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_indexn.html">Index
                                        nominum</a>
                                    <a class="dropdown-item" href="Mexicain65-71_indexl.html">Index
                                        locorum</a>
                                    <!-- <a class="dropdown-item" href="Mexicain65-71_notes.html">Index
                                        rerum</a> -->
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_histoire.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_a_propos.html">À propos du
                                    projet</a>
                            </li>
                        </ul>
                    </nav>
                    <h1/>
                    <ul>
                        <h1 class="display-6">Témoins</h1>
                        <div class="col-6">
                            <hr class="my-4"/>
                        </div>
                    </ul>
                    <div>
                        <ul>
                            <p>La recherche stemmalogique sur le manuscrit doit être menée pour
                                chacune des quatre parties dont il est composé. Nous fournissons
                                ci-après les différents témoins, soit les divers exemplaires du
                                manuscrit considérés comme une étape dans la transmission et la
                                transformation de l'une ou l'autre de ses parties.</p>
                            <xsl:call-template name="temoins"/>
                            <h1/>
                            <p>
                                <a class="btn btn-warning" href="{$pathAccueil}">Retour accueil</a>
                            </p>
                        </ul>
                    </div>
                </body>
                <!-- Footer -->
                <footer class="page-footer pt-2"
                    style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                    <div class="container">

                        <div class="row">
                            <div class="col-sm">
                                <a href="http://www.chartes.psl.eu/">
                                    <img src="visualisation/logo-ENC.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> École nationale des
                                    Chartes 65, rue de Richelieu 75002 Paris</p>
                            </div>
                            <div class="col-sm"> </div>
                            <div class="col-sm">
                                <a href="http://www.bnf.fr/">
                                    <img src="visualisation/logo-BnF.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> Bibliothèque
                                    nationale de France Quai François Mauriac 75116 Paris cedex
                                    13</p>
                            </div>
                        </div>
                    </div>
                    <!-- Content -->
                    <div class="container-fluid text-center"> </div>
                    <!-- Content -->
                    <!-- Copyright -->
                    <div class="footer-copyright text-center">© <a
                            href="https://amoxcalli.hypotheses.org/"> Olivier Jacquot</a>,
                        2019.</div>
                    <!-- Copyright -->
                </footer>
                <!-- Footer -->
            </html>
        </xsl:result-document>

        <!--Configuration de sortie pour les mains-->
        <xsl:result-document href="{$pathMains}" method="html" indent="yes">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="{$pathAccueil}">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Manuscrit Mexicain 65-71</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_facsim.html"
                                        >Version fac-similaire</a>
                                    <a class="dropdown-item" href="Mexicain65-71_norm.html">Version
                                        normalisée</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Description codicologique</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_temoins.html"
                                        >Témoins</a>
                                    <a class="dropdown-item" href="Mexicain65-71_mains.html"
                                        >Mains</a>
                                    <a class="dropdown-item" href="Mexicain65-71_layout.html">Mise
                                        en page</a>
                                    <a class="dropdown-item" href="Mexicain65-71_deco.html"
                                        >Décoration</a>
                                    <a class="dropdown-item" href="Mexicain65-71_struct.html"
                                        >Structure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_support.html"
                                        >Support</a>
                                    <a class="dropdown-item" href="Mexicain65-71_reliure.html"
                                        >Reliure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_foliotation.html"
                                        >Foliotation</a>
                                    <a class="dropdown-item" href="Mexicain65-71_etat.html">État</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_biblio.html"
                                    >Bibliographie</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_indexn.html">Index
                                        nominum</a>
                                    <a class="dropdown-item" href="Mexicain65-71_indexl.html">Index
                                        locorum</a>
                                    <!-- <a class="dropdown-item" href="Mexicain65-71_notes.html">Index
                                        rerum</a> -->
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_histoire.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_a_propos.html">À propos du
                                    projet</a>
                            </li>
                        </ul>
                    </nav>
                    <h1/>
                    <ul>
                        <h1 class="display-6">Mains du manuscrit</h1>
                        <div class="col-6">
                            <hr class="my-4"/>
                        </div>
                    </ul>
                    <div>
                        <ul>
                            <p>Un examen paléographique attentif permet de distinguer plusieurs
                                mains, ce qui confirme le caractère composite du manuscrit.</p>
                            <xsl:call-template name="mains"/>
                            <h1/>
                            <p>
                                <a class="btn btn-warning" href="{$pathAccueil}">Retour accueil</a>
                            </p>
                        </ul>
                    </div>
                </body>
                <!-- Footer -->
                <footer class="page-footer pt-2"
                    style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                    <div class="container">

                        <div class="row">
                            <div class="col-sm">
                                <a href="http://www.chartes.psl.eu/">
                                    <img src="visualisation/logo-ENC.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> École nationale des
                                    Chartes 65, rue de Richelieu 75002 Paris</p>
                            </div>
                            <div class="col-sm"> </div>
                            <div class="col-sm">
                                <a href="http://www.bnf.fr/">
                                    <img src="visualisation/logo-BnF.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> Bibliothèque
                                    nationale de France Quai François Mauriac 75116 Paris cedex
                                    13</p>
                            </div>
                        </div>
                    </div>
                    <!-- Content -->
                    <div class="container-fluid text-center"> </div>
                    <!-- Content -->
                    <!-- Copyright -->
                    <div class="footer-copyright text-center">© <a
                            href="https://amoxcalli.hypotheses.org/"> Olivier Jacquot</a>,
                        2019.</div>
                    <!-- Copyright -->
                </footer>
                <!-- Footer -->
            </html>
        </xsl:result-document>

        <!--Configuration de sortie pour la mise en page-->
        <xsl:result-document href="{$pathLayout}" method="html" indent="yes">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="{$pathAccueil}">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Manuscrit Mexicain 65-71</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_facsim.html"
                                        >Version fac-similaire</a>
                                    <a class="dropdown-item" href="Mexicain65-71_norm.html">Version
                                        normalisée</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Description codicologique</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_temoins.html"
                                        >Témoins</a>
                                    <a class="dropdown-item" href="Mexicain65-71_mains.html"
                                        >Mains</a>
                                    <a class="dropdown-item" href="Mexicain65-71_layout.html">Mise
                                        en page</a>
                                    <a class="dropdown-item" href="Mexicain65-71_deco.html"
                                        >Décoration</a>
                                    <a class="dropdown-item" href="Mexicain65-71_struct.html"
                                        >Structure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_support.html"
                                        >Support</a>
                                    <a class="dropdown-item" href="Mexicain65-71_reliure.html"
                                        >Reliure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_foliotation.html"
                                        >Foliotation</a>
                                    <a class="dropdown-item" href="Mexicain65-71_etat.html">État</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_biblio.html"
                                    >Bibliographie</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Index</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_indexn.html">Index
                                        nominum</a>
                                    <a class="dropdown-item" href="Mexicain65-71_indexl.html">Index
                                        locorum</a>
                                    <!-- <a class="dropdown-item" href="Mexicain65-71_notes.html">Index
                                        rerum</a> -->
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_histoire.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_a_propos.html">À propos du
                                    projet</a>
                            </li>
                        </ul>
                    </nav>
                    <h1/>
                    <ul>
                        <h1 class="display-6">Mise en page du manuscrit </h1>
                        <div class="col-6">
                            <hr class="my-4"/>
                        </div>
                    </ul>
                    <div>
                        <ul>
                            <p>Ce manuscrit moderne ne présente pas à proprement parler de schéma de
                                réglure. Aussi, pour évoquer sa présentation, nous nous contentons
                                d'évoquer sa mise en page.</p>

                            <xsl:call-template name="layout"/>
                        </ul>
                        <p>
                            <a class="btn btn-warning" href="{$pathAccueil}">Retour accueil</a>
                        </p>

                    </div>
                </body>
                <!-- Footer -->
                <footer class="page-footer pt-2"
                    style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                    <div class="container">

                        <div class="row">
                            <div class="col-sm">
                                <a href="http://www.chartes.psl.eu/">
                                    <img src="visualisation/logo-ENC.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> École nationale des
                                    Chartes 65, rue de Richelieu 75002 Paris</p>
                            </div>
                            <div class="col-sm"> </div>
                            <div class="col-sm">
                                <a href="http://www.bnf.fr/">
                                    <img src="visualisation/logo-BnF.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> Bibliothèque
                                    nationale de France Quai François Mauriac 75116 Paris cedex
                                    13</p>
                            </div>
                        </div>
                    </div>
                    <!-- Content -->
                    <div class="container-fluid text-center"> </div>
                    <!-- Content -->
                    <!-- Copyright -->
                    <div class="footer-copyright text-center">© <a
                            href="https://amoxcalli.hypotheses.org/"> Olivier Jacquot</a>,
                        2019.</div>
                    <!-- Copyright -->
                </footer>
                <!-- Footer -->
            </html>
        </xsl:result-document>

        <!--Configuration de sortie pour la décoration-->
        <xsl:result-document href="{$pathDécoration}" method="html" indent="yes">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="{$pathAccueil}">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Manuscrit Mexicain 65-71</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_facsim.html"
                                        >Version fac-similaire</a>
                                    <a class="dropdown-item" href="Mexicain65-71_norm.html">Version
                                        normalisée</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Description codicologique</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_temoins.html"
                                        >Témoins</a>
                                    <a class="dropdown-item" href="Mexicain65-71_mains.html"
                                        >Mains</a>
                                    <a class="dropdown-item" href="Mexicain65-71_layout.html">Mise
                                        en page</a>
                                    <a class="dropdown-item" href="Mexicain65-71_deco.html"
                                        >Décoration</a>
                                    <a class="dropdown-item" href="Mexicain65-71_struct.html"
                                        >Structure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_support.html"
                                        >Support</a>
                                    <a class="dropdown-item" href="Mexicain65-71_reliure.html"
                                        >Reliure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_foliotation.html"
                                        >Foliotation</a>
                                    <a class="dropdown-item" href="Mexicain65-71_etat.html">État</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_biblio.html"
                                    >Bibliographie</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_indexn.html">Index
                                        nominum</a>
                                    <a class="dropdown-item" href="Mexicain65-71_indexl.html">Index
                                        locorum</a>
                                    <!-- <a class="dropdown-item" href="Mexicain65-71_notes.html">Index
                                        rerum</a> -->
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_histoire.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_a_propos.html">À propos du
                                    projet</a>
                            </li>
                        </ul>
                    </nav>
                    <h1/>
                    <ul>
                        <h1 class="display-6">Décoration du manuscrit</h1>
                        <div class="col-6">
                            <hr class="my-4"/>
                        </div>
                    </ul>
                    <div>
                        <ul>
                            <xsl:call-template name="deco"/>
                        </ul>
                        <p>
                            <a class="btn btn-warning" href="{$pathAccueil}">Retour accueil</a>
                        </p>

                    </div>
                </body>
                <!-- Footer -->
                <footer class="page-footer pt-2"
                    style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                    <div class="container">

                        <div class="row">
                            <div class="col-sm">
                                <a href="http://www.chartes.psl.eu/">
                                    <img src="visualisation/logo-ENC.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> École nationale des
                                    Chartes 65, rue de Richelieu 75002 Paris</p>
                            </div>
                            <div class="col-sm"> </div>
                            <div class="col-sm">
                                <a href="http://www.bnf.fr/">
                                    <img src="visualisation/logo-BnF.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> Bibliothèque
                                    nationale de France Quai François Mauriac 75116 Paris cedex
                                    13</p>
                            </div>
                        </div>
                    </div>
                    <!-- Content -->
                    <div class="container-fluid text-center"> </div>
                    <!-- Content -->
                    <!-- Copyright -->
                    <div class="footer-copyright text-center">© <a
                            href="https://amoxcalli.hypotheses.org/"> Olivier Jacquot</a>,
                        2019.</div>
                    <!-- Copyright -->
                </footer>
                <!-- Footer -->
            </html>
        </xsl:result-document>

        <!--Configuration de sortie pour la structure-->
        <xsl:result-document href="{$pathStructure}" method="html" indent="yes">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="{$pathAccueil}">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Manuscrit Mexicain 65-71</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_facsim.html"
                                        >Version fac-similaire</a>
                                    <a class="dropdown-item" href="Mexicain65-71_norm.html">Version
                                        normalisée</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Description codicologique</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_temoins.html"
                                        >Témoins</a>
                                    <a class="dropdown-item" href="Mexicain65-71_mains.html"
                                        >Mains</a>
                                    <a class="dropdown-item" href="Mexicain65-71_layout.html">Mise
                                        en page</a>
                                    <a class="dropdown-item" href="Mexicain65-71_deco.html"
                                        >Décoration</a>
                                    <a class="dropdown-item" href="Mexicain65-71_struct.html"
                                        >Structure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_support.html"
                                        >Support</a>
                                    <a class="dropdown-item" href="Mexicain65-71_reliure.html"
                                        >Reliure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_foliotation.html"
                                        >Foliotation</a>
                                    <a class="dropdown-item" href="Mexicain65-71_etat.html">État</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_biblio.html"
                                    >Bibliographie</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_indexn.html">Index
                                        nominum</a>
                                    <a class="dropdown-item" href="Mexicain65-71_indexl.html">Index
                                        locorum</a>
                                    <!-- <a class="dropdown-item" href="Mexicain65-71_notes.html">Index
                                        rerum</a> -->
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_histoire.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_a_propos.html">À propos du
                                    projet</a>
                            </li>
                        </ul>
                    </nav>
                    <h1/>
                    <ul>
                        <h1 class="display-6">Structure du manuscrit</h1>
                        <div class="col-6">
                            <hr class="my-4"/>
                        </div>
                    </ul>
                    <div>
                        <ul>
                            <p>Incomplet, ce manuscrit s'avère être composite.</p>
                            <xsl:call-template name="struct"/>
                        </ul>
                        <p>
                            <a class="btn btn-warning" href="{$pathAccueil}">Retour accueil</a>
                        </p>

                    </div>
                </body>
                <!-- Footer -->
                <footer class="page-footer pt-2"
                    style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                    <div class="container">

                        <div class="row">
                            <div class="col-sm">
                                <a href="http://www.chartes.psl.eu/">
                                    <img src="visualisation/logo-ENC.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> École nationale des
                                    Chartes 65, rue de Richelieu 75002 Paris</p>
                            </div>
                            <div class="col-sm"> </div>
                            <div class="col-sm">
                                <a href="http://www.bnf.fr/">
                                    <img src="visualisation/logo-BnF.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> Bibliothèque
                                    nationale de France Quai François Mauriac 75116 Paris cedex
                                    13</p>
                            </div>
                        </div>
                    </div>
                    <!-- Content -->
                    <div class="container-fluid text-center"> </div>
                    <!-- Content -->
                    <!-- Copyright -->
                    <div class="footer-copyright text-center">© <a
                            href="https://amoxcalli.hypotheses.org/"> Olivier Jacquot</a>,
                        2019.</div>
                    <!-- Copyright -->
                </footer>
                <!-- Footer -->
            </html>
        </xsl:result-document>

        <!--Configuration de sortie pour le support-->
        <xsl:result-document href="{$pathSupport}" method="html" indent="yes">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="{$pathAccueil}">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Manuscrit Mexicain 65-71</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_facsim.html"
                                        >Version fac-similaire</a>
                                    <a class="dropdown-item" href="Mexicain65-71_norm.html">Version
                                        normalisée</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Description codicologique</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_temoins.html"
                                        >Témoins</a>
                                    <a class="dropdown-item" href="Mexicain65-71_mains.html"
                                        >Mains</a>
                                    <a class="dropdown-item" href="Mexicain65-71_layout.html">Mise
                                        en page</a>
                                    <a class="dropdown-item" href="Mexicain65-71_deco.html"
                                        >Décoration</a>
                                    <a class="dropdown-item" href="Mexicain65-71_struct.html"
                                        >Structure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_support.html"
                                        >Support</a>
                                    <a class="dropdown-item" href="Mexicain65-71_reliure.html"
                                        >Reliure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_foliotation.html"
                                        >Foliotation</a>
                                    <a class="dropdown-item" href="Mexicain65-71_etat.html">État</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_biblio.html"
                                    >Bibliographie</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_indexn.html">Index
                                        nominum</a>
                                    <a class="dropdown-item" href="Mexicain65-71_indexl.html">Index
                                        locorum</a>
                                    <!-- <a class="dropdown-item" href="Mexicain65-71_notes.html">Index
                                        rerum</a> -->
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_histoire.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_a_propos.html">À propos du
                                    projet</a>
                            </li>
                        </ul>
                    </nav>
                    <h1/>
                    <ul>
                        <h1 class="display-6">Support du manuscrit</h1>
                        <div class="col-6">
                            <hr class="my-4"/>
                        </div>
                    </ul>
                    <div>
                        <ul>
                            <xsl:call-template name="support"/>
                        </ul>
                        <p>
                            <a class="btn btn-warning" href="{$pathAccueil}">Retour accueil</a>
                        </p>

                    </div>
                </body>
                <!-- Footer -->
                <footer class="page-footer pt-2"
                    style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                    <div class="container">

                        <div class="row">
                            <div class="col-sm">
                                <a href="http://www.chartes.psl.eu/">
                                    <img src="visualisation/logo-ENC.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> École nationale des
                                    Chartes 65, rue de Richelieu 75002 Paris</p>
                            </div>
                            <div class="col-sm"> </div>
                            <div class="col-sm">
                                <a href="http://www.bnf.fr/">
                                    <img src="visualisation/logo-BnF.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> Bibliothèque
                                    nationale de France Quai François Mauriac 75116 Paris cedex
                                    13</p>
                            </div>
                        </div>
                    </div>
                    <!-- Content -->
                    <div class="container-fluid text-center"> </div>
                    <!-- Content -->
                    <!-- Copyright -->
                    <div class="footer-copyright text-center">© <a
                            href="https://amoxcalli.hypotheses.org/"> Olivier Jacquot</a>,
                        2019.</div>
                    <!-- Copyright -->
                </footer>
                <!-- Footer -->
            </html>
        </xsl:result-document>

        <!--Configuration de sortie pour la reliure-->
        <xsl:result-document href="{$pathReliure}" method="html" indent="yes">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="{$pathAccueil}">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Manuscrit Mexicain 65-71</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_facsim.html"
                                        >Version fac-similaire</a>
                                    <a class="dropdown-item" href="Mexicain65-71_norm.html">Version
                                        normalisée</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Description codicologique</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_temoins.html"
                                        >Témoins</a>
                                    <a class="dropdown-item" href="Mexicain65-71_mains.html"
                                        >Mains</a>
                                    <a class="dropdown-item" href="Mexicain65-71_layout.html">Mise
                                        en page</a>
                                    <a class="dropdown-item" href="Mexicain65-71_deco.html"
                                        >Décoration</a>
                                    <a class="dropdown-item" href="Mexicain65-71_struct.html"
                                        >Structure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_support.html"
                                        >Support</a>
                                    <a class="dropdown-item" href="Mexicain65-71_reliure.html"
                                        >Reliure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_foliotation.html"
                                        >Foliotation</a>
                                    <a class="dropdown-item" href="Mexicain65-71_etat.html">État</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_biblio.html"
                                    >Bibliographie</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_indexn.html">Index
                                        nominum</a>
                                    <a class="dropdown-item" href="Mexicain65-71_indexl.html">Index
                                        locorum</a>
                                    <!-- <a class="dropdown-item" href="Mexicain65-71_notes.html">Index
                                        rerum</a> -->
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_histoire.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_a_propos.html">À propos du
                                    projet</a>
                            </li>
                        </ul>
                    </nav>
                    <h1/>
                    <ul>
                        <h1 class="display-6">Reliure du manuscrit</h1>
                        <div class="col-6">
                            <hr class="my-4"/>
                        </div>
                    </ul>
                    <div>
                        <ul>
                            <xsl:call-template name="reliure"/>
                        </ul>
                        <p>
                            <a class="btn btn-warning" href="{$pathAccueil}">Retour accueil</a>
                        </p>

                    </div>
                </body>
                <!-- Footer -->
                <footer class="page-footer pt-2"
                    style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                    <div class="container">

                        <div class="row">
                            <div class="col-sm">
                                <a href="http://www.chartes.psl.eu/">
                                    <img src="visualisation/logo-ENC.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> École nationale des
                                    Chartes 65, rue de Richelieu 75002 Paris</p>
                            </div>
                            <div class="col-sm"> </div>
                            <div class="col-sm">
                                <a href="http://www.bnf.fr/">
                                    <img src="visualisation/logo-BnF.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> Bibliothèque
                                    nationale de France Quai François Mauriac 75116 Paris cedex
                                    13</p>
                            </div>
                        </div>
                    </div>
                    <!-- Content -->
                    <div class="container-fluid text-center"> </div>
                    <!-- Content -->
                    <!-- Copyright -->
                    <div class="footer-copyright text-center">© <a
                            href="https://amoxcalli.hypotheses.org/"> Olivier Jacquot</a>,
                        2019.</div>
                    <!-- Copyright -->
                </footer>
                <!-- Footer -->
            </html>
        </xsl:result-document>

        <!--Configuration de sortie pour la foliotation-->
        <xsl:result-document href="{$pathFoliotation}" method="html" indent="yes">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="{$pathAccueil}">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Manuscrit Mexicain 65-71</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_facsim.html"
                                        >Version fac-similaire</a>
                                    <a class="dropdown-item" href="Mexicain65-71_norm.html">Version
                                        normalisée</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Description codicologique</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_temoins.html"
                                        >Témoins</a>
                                    <a class="dropdown-item" href="Mexicain65-71_mains.html"
                                        >Mains</a>
                                    <a class="dropdown-item" href="Mexicain65-71_layout.html">Mise
                                        en page</a>
                                    <a class="dropdown-item" href="Mexicain65-71_deco.html"
                                        >Décoration</a>
                                    <a class="dropdown-item" href="Mexicain65-71_struct.html"
                                        >Structure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_support.html"
                                        >Support</a>
                                    <a class="dropdown-item" href="Mexicain65-71_reliure.html"
                                        >Reliure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_foliotation.html"
                                        >Foliotation</a>
                                    <a class="dropdown-item" href="Mexicain65-71_etat.html">État</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_biblio.html"
                                    >Bibliographie</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_indexn.html">Index
                                        nominum</a>
                                    <a class="dropdown-item" href="Mexicain65-71_indexl.html">Index
                                        locorum</a>
                                    <!-- <a class="dropdown-item" href="Mexicain65-71_notes.html">Index
                                        rerum</a> -->
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_histoire.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_a_propos.html">À propos du
                                    projet</a>
                            </li>
                        </ul>
                    </nav>
                    <h1/>
                    <ul>
                        <h1 class="display-6">Foliotation du manuscrit</h1>
                        <div class="col-6">
                            <hr class="my-4"/>
                        </div>
                    </ul>
                    <div>
                        <ul>
                            <xsl:call-template name="foliotation"/>
                        </ul>
                        <p>
                            <a class="btn btn-warning" href="{$pathAccueil}">Retour accueil</a>
                        </p>

                    </div>
                </body>
                <!-- Footer -->
                <footer class="page-footer pt-2"
                    style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                    <div class="container">

                        <div class="row">
                            <div class="col-sm">
                                <a href="http://www.chartes.psl.eu/">
                                    <img src="visualisation/logo-ENC.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> École nationale des
                                    Chartes 65, rue de Richelieu 75002 Paris</p>
                            </div>
                            <div class="col-sm"> </div>
                            <div class="col-sm">
                                <a href="http://www.bnf.fr/">
                                    <img src="visualisation/logo-BnF.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> Bibliothèque
                                    nationale de France Quai François Mauriac 75116 Paris cedex
                                    13</p>
                            </div>
                        </div>
                    </div>
                    <!-- Content -->
                    <div class="container-fluid text-center"> </div>
                    <!-- Content -->
                    <!-- Copyright -->
                    <div class="footer-copyright text-center">© <a
                            href="https://amoxcalli.hypotheses.org/"> Olivier Jacquot</a>,
                        2019.</div>
                    <!-- Copyright -->
                </footer>
                <!-- Footer -->
            </html>
        </xsl:result-document>

        <!--Configuration de sortie pour l'état de conservation-->
        <xsl:result-document href="{$pathEtat}" method="html" indent="yes">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="{$pathAccueil}">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Manuscrit Mexicain 65-71</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_facsim.html"
                                        >Version fac-similaire</a>
                                    <a class="dropdown-item" href="Mexicain65-71_norm.html">Version
                                        normalisée</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Description codicologique</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_temoins.html"
                                        >Témoins</a>
                                    <a class="dropdown-item" href="Mexicain65-71_mains.html"
                                        >Mains</a>
                                    <a class="dropdown-item" href="Mexicain65-71_layout.html">Mise
                                        en page</a>
                                    <a class="dropdown-item" href="Mexicain65-71_deco.html"
                                        >Décoration</a>
                                    <a class="dropdown-item" href="Mexicain65-71_struct.html"
                                        >Structure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_support.html"
                                        >Support</a>
                                    <a class="dropdown-item" href="Mexicain65-71_reliure.html"
                                        >Reliure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_foliotation.html"
                                        >Foliotation</a>
                                    <a class="dropdown-item" href="Mexicain65-71_etat.html">État</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_biblio.html"
                                    >Bibliographie</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_indexn.html">Index
                                        nominum</a>
                                    <a class="dropdown-item" href="Mexicain65-71_indexl.html">Index
                                        locorum</a>
                                    <!-- <a class="dropdown-item" href="Mexicain65-71_notes.html">Index
                                        rerum</a> -->
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_histoire.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_a_propos.html">À propos du
                                    projet</a>
                            </li>
                        </ul>
                    </nav>
                    <h1/>
                    <ul>
                        <h1 class="display-6">État de conservation du manuscrit</h1>
                        <div class="col-6">
                            <hr class="my-4"/>
                        </div>
                    </ul>
                    <div>
                        <ul>
                            <xsl:call-template name="etat"/>
                        </ul>
                        <p>
                            <a class="btn btn-warning" href="{$pathAccueil}">Retour accueil</a>
                        </p>

                    </div>
                </body>
                <!-- Footer -->
                <footer class="page-footer pt-2"
                    style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                    <div class="container">

                        <div class="row">
                            <div class="col-sm">
                                <a href="http://www.chartes.psl.eu/">
                                    <img src="visualisation/logo-ENC.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> École nationale des
                                    Chartes 65, rue de Richelieu 75002 Paris</p>
                            </div>
                            <div class="col-sm"> </div>
                            <div class="col-sm">
                                <a href="http://www.bnf.fr/">
                                    <img src="visualisation/logo-BnF.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> Bibliothèque
                                    nationale de France Quai François Mauriac 75116 Paris cedex
                                    13</p>
                            </div>
                        </div>
                    </div>
                    <!-- Content -->
                    <div class="container-fluid text-center"> </div>
                    <!-- Content -->
                    <!-- Copyright -->
                    <div class="footer-copyright text-center">© <a
                            href="https://amoxcalli.hypotheses.org/"> Olivier Jacquot</a>,
                        2019.</div>
                    <!-- Copyright -->
                </footer>
                <!-- Footer -->
            </html>
        </xsl:result-document>

        <!--Configuration de sortie pour l'histoire du mss-->
        <xsl:result-document href="{$pathHistoire}" method="html" indent="yes">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="{$pathAccueil}">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Manuscrit Mexicain 65-71</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_facsim.html"
                                        >Version fac-similaire</a>
                                    <a class="dropdown-item" href="Mexicain65-71_norm.html">Version
                                        normalisée</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Description codicologique</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_temoins.html"
                                        >Témoins</a>
                                    <a class="dropdown-item" href="Mexicain65-71_mains.html"
                                        >Mains</a>
                                    <a class="dropdown-item" href="Mexicain65-71_layout.html">Mise
                                        en page</a>
                                    <a class="dropdown-item" href="Mexicain65-71_deco.html"
                                        >Décoration</a>
                                    <a class="dropdown-item" href="Mexicain65-71_struct.html"
                                        >Structure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_support.html"
                                        >Support</a>
                                    <a class="dropdown-item" href="Mexicain65-71_reliure.html"
                                        >Reliure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_foliotation.html"
                                        >Foliotation</a>
                                    <a class="dropdown-item" href="Mexicain65-71_etat.html">État</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_biblio.html"
                                    >Bibliographie</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_indexn.html">Index
                                        nominum</a>
                                    <a class="dropdown-item" href="Mexicain65-71_indexl.html">Index
                                        locorum</a>
                                    <!-- <a class="dropdown-item" href="Mexicain65-71_notes.html">Index
                                        rerum</a> -->
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_histoire.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_a_propos.html">À propos du
                                    projet</a>
                            </li>
                        </ul>
                    </nav>
                    <h1/>
                    <ul>
                        <h1 class="display-6">Histoire du manuscrit (origine, provenance,
                            acquisition)</h1>
                        <div class="col-6">
                            <hr class="my-4"/>
                        </div>
                    </ul>
                    <div>
                        <ul>
                            <xsl:call-template name="histoire"/>
                        </ul>
                        <p>
                            <a class="btn btn-warning" href="{$pathAccueil}">Retour accueil</a>
                        </p>

                    </div>
                </body>
                <!-- Footer -->
                <footer class="page-footer pt-2"
                    style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                    <div class="container">

                        <div class="row">
                            <div class="col-sm">
                                <a href="http://www.chartes.psl.eu/">
                                    <img src="visualisation/logo-ENC.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> École nationale des
                                    Chartes 65, rue de Richelieu 75002 Paris</p>
                            </div>
                            <div class="col-sm"> </div>
                            <div class="col-sm">
                                <a href="http://www.bnf.fr/">
                                    <img src="visualisation/logo-BnF.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> Bibliothèque
                                    nationale de France Quai François Mauriac 75116 Paris cedex
                                    13</p>
                            </div>
                        </div>
                    </div>
                    <!-- Content -->
                    <div class="container-fluid text-center"> </div>
                    <!-- Content -->
                    <!-- Copyright -->
                    <div class="footer-copyright text-center">© <a
                            href="https://amoxcalli.hypotheses.org/"> Olivier Jacquot</a>,
                        2019.</div>
                    <!-- Copyright -->
                </footer>
                <!-- Footer -->
            </html>
        </xsl:result-document>

        <!--Configuration de sortie pour l'à propos-->
        <xsl:result-document href="{$pathApropos}" method="html" indent="yes">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="{$pathAccueil}">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Manuscrit Mexicain 65-71</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_facsim.html"
                                        >Version fac-similaire</a>
                                    <a class="dropdown-item" href="Mexicain65-71_norm.html">Version
                                        normalisée</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Description codicologique</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_temoins.html"
                                        >Témoins</a>
                                    <a class="dropdown-item" href="Mexicain65-71_mains.html"
                                        >Mains</a>
                                    <a class="dropdown-item" href="Mexicain65-71_layout.html">Mise
                                        en page</a>
                                    <a class="dropdown-item" href="Mexicain65-71_deco.html"
                                        >Décoration</a>
                                    <a class="dropdown-item" href="Mexicain65-71_struct.html"
                                        >Structure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_support.html"
                                        >Support</a>
                                    <a class="dropdown-item" href="Mexicain65-71_reliure.html"
                                        >Reliure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_foliotation.html"
                                        >Foliotation</a>
                                    <a class="dropdown-item" href="Mexicain65-71_etat.html">État</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_biblio.html"
                                    >Bibliographie</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_indexn.html">Index
                                        nominum</a>
                                    <a class="dropdown-item" href="Mexicain65-71_indexl.html">Index
                                        locorum</a>
                                    <!-- <a class="dropdown-item" href="Mexicain65-71_notes.html">Index
                                        rerum</a> -->
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_histoire.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_a_propos.html">À propos du
                                    projet</a>
                            </li>
                        </ul>
                    </nav>
                    <h1/>
                    <ul>
                        <h1 class="display-6">Histoire du manuscrit (origine, provenance,
                            acquisition)</h1>
                        <div class="col-6">
                            <hr class="my-4"/>
                        </div>
                    </ul>
                    <div>
                        <ul>
                            <xsl:call-template name="a_propos"/>
                        </ul>
                        <p>
                            <a class="btn btn-warning" href="{$pathAccueil}">Retour accueil</a>
                        </p>

                    </div>
                </body>
                <!-- Footer -->
                <footer class="page-footer pt-2"
                    style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                    <div class="container">

                        <div class="row">
                            <div class="col-sm">
                                <a href="http://www.chartes.psl.eu/">
                                    <img src="visualisation/logo-ENC.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> École nationale des
                                    Chartes 65, rue de Richelieu 75002 Paris</p>
                            </div>
                            <div class="col-sm"> </div>
                            <div class="col-sm">
                                <a href="http://www.bnf.fr/">
                                    <img src="visualisation/logo-BnF.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> Bibliothèque
                                    nationale de France Quai François Mauriac 75116 Paris cedex
                                    13</p>
                            </div>
                        </div>
                    </div>
                    <!-- Content -->
                    <div class="container-fluid text-center"> </div>
                    <!-- Content -->
                    <!-- Copyright -->
                    <div class="footer-copyright text-center">© <a
                            href="https://amoxcalli.hypotheses.org/"> Olivier Jacquot</a>,
                        2019.</div>
                    <!-- Copyright -->
                </footer>
                <!-- Footer -->
            </html>
        </xsl:result-document>

        <!--Configuration de sortie pour l'index nominum-->
        <xsl:result-document href="{$pathIndexN}" method="html" indent="yes">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="{$pathAccueil}">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Manuscrit Mexicain 65-71</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_facsim.html"
                                        >Version fac-similaire</a>
                                    <a class="dropdown-item" href="Mexicain65-71_norm.html">Version
                                        normalisée</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Description codicologique</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_temoins.html"
                                        >Témoins</a>
                                    <a class="dropdown-item" href="Mexicain65-71_mains.html"
                                        >Mains</a>
                                    <a class="dropdown-item" href="Mexicain65-71_layout.html">Mise
                                        en page</a>
                                    <a class="dropdown-item" href="Mexicain65-71_deco.html"
                                        >Décoration</a>
                                    <a class="dropdown-item" href="Mexicain65-71_struct.html"
                                        >Structure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_support.html"
                                        >Support</a>
                                    <a class="dropdown-item" href="Mexicain65-71_reliure.html"
                                        >Reliure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_foliotation.html"
                                        >Foliotation</a>
                                    <a class="dropdown-item" href="Mexicain65-71_etat.html">État</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_biblio.html"
                                    >Bibliographie</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_indexn.html">Index
                                        nominum</a>
                                    <a class="dropdown-item" href="Mexicain65-71_indexl.html">Index
                                        locorum</a>
                                    <!-- <a class="dropdown-item" href="Mexicain65-71_notes.html">Index
                                        rerum</a> -->
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_histoire.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_a_propos.html">À propos du
                                    projet</a>
                            </li>
                        </ul>
                    </nav>
                    <h1/>
                    <ul>
                        <h1 class="display-6">Index nominum</h1>
                        <div class="col-6">
                            <hr class="my-4"/>
                        </div>
                    </ul>
                    <div>
                        <ul>
                            <xsl:call-template name="indexn"/>
                        </ul>
                        <p>
                            <a class="btn btn-warning" href="{$pathAccueil}">Retour accueil</a>
                        </p>

                    </div>
                </body>
                <!-- Footer -->
                <footer class="page-footer pt-2"
                    style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                    <div class="container">

                        <div class="row">
                            <div class="col-sm">
                                <a href="http://www.chartes.psl.eu/">
                                    <img src="visualisation/logo-ENC.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> École nationale des
                                    Chartes 65, rue de Richelieu 75002 Paris</p>
                            </div>
                            <div class="col-sm"> </div>
                            <div class="col-sm">
                                <a href="http://www.bnf.fr/">
                                    <img src="visualisation/logo-BnF.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> Bibliothèque
                                    nationale de France Quai François Mauriac 75116 Paris cedex
                                    13</p>
                            </div>
                        </div>
                    </div>
                    <!-- Content -->
                    <div class="container-fluid text-center"> </div>
                    <!-- Content -->
                    <!-- Copyright -->
                    <div class="footer-copyright text-center">© <a
                            href="https://amoxcalli.hypotheses.org/"> Olivier Jacquot</a>,
                        2019.</div>
                    <!-- Copyright -->
                </footer>
                <!-- Footer -->
            </html>
        </xsl:result-document>

        <!--Configuration de sortie pour l'index locorum-->

        <xsl:result-document href="{$pathIndexL}" method="html" indent="yes">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="{$pathAccueil}">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Manuscrit Mexicain 65-71</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_facsim.html"
                                        >Version fac-similaire</a>
                                    <a class="dropdown-item" href="Mexicain65-71_norm.html">Version
                                        normalisée</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Description codicologique</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_temoins.html"
                                        >Témoins</a>
                                    <a class="dropdown-item" href="Mexicain65-71_mains.html"
                                        >Mains</a>
                                    <a class="dropdown-item" href="Mexicain65-71_layout.html">Mise
                                        en page</a>
                                    <a class="dropdown-item" href="Mexicain65-71_deco.html"
                                        >Décoration</a>
                                    <a class="dropdown-item" href="Mexicain65-71_struct.html"
                                        >Structure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_support.html"
                                        >Support</a>
                                    <a class="dropdown-item" href="Mexicain65-71_reliure.html"
                                        >Reliure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_foliotation.html"
                                        >Foliotation</a>
                                    <a class="dropdown-item" href="Mexicain65-71_etat.html">État</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_biblio.html"
                                    >Bibliographie</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_indexn.html">Index
                                        nominum</a>
                                    <a class="dropdown-item" href="Mexicain65-71_indexl.html">Index
                                        locorum</a>
                                    <!-- <a class="dropdown-item" href="Mexicain65-71_notes.html">Index
                                        rerum</a> -->
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_histoire.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_a_propos.html">À propos du
                                    projet</a>
                            </li>
                        </ul>
                    </nav>
                    <ul>
                        <h1 class="display-6">Index locorum</h1>
                        <div class="col-6">
                            <hr class="my-4"/>
                        </div>
                    </ul>
                    <div>
                        <ul>
                            <xsl:call-template name="indexl"/>
                        </ul>
                        <p>
                            <a class="btn btn-warning" href="{$pathAccueil}">Retour accueil</a>
                        </p>

                    </div>
                </body>
                <!-- Footer -->
                <footer class="page-footer pt-2"
                    style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                    <div class="container">

                        <div class="row">
                            <div class="col-sm">
                                <a href="http://www.chartes.psl.eu/">
                                    <img src="visualisation/logo-ENC.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> École nationale des
                                    Chartes 65, rue de Richelieu 75002 Paris</p>
                            </div>
                            <div class="col-sm"> </div>
                            <div class="col-sm">
                                <a href="http://www.bnf.fr/">
                                    <img src="visualisation/logo-BnF.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> Bibliothèque
                                    nationale de France Quai François Mauriac 75116 Paris cedex
                                    13</p>
                            </div>
                        </div>
                    </div>
                    <!-- Content -->
                    <div class="container-fluid text-center"> </div>
                    <!-- Content -->
                    <!-- Copyright -->
                    <div class="footer-copyright text-center">© <a
                            href="https://amoxcalli.hypotheses.org/"> Olivier Jacquot</a>,
                        2019.</div>
                    <!-- Copyright -->
                </footer>
                <!-- Footer -->
            </html>
        </xsl:result-document>

        <!--Configuration de sortie pour l'index rerum-->

        <xsl:result-document href="{$pathNotes}" method="html" indent="yes">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="{$pathAccueil}">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Manuscrit Mexicain 65-71</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_facsim.html"
                                        >Version fac-similaire</a>
                                    <a class="dropdown-item" href="Mexicain65-71_norm.html">Version
                                        normalisée</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Description codicologique</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_temoins.html"
                                        >Témoins</a>
                                    <a class="dropdown-item" href="Mexicain65-71_mains.html"
                                        >Mains</a>
                                    <a class="dropdown-item" href="Mexicain65-71_layout.html">Mise
                                        en page</a>
                                    <a class="dropdown-item" href="Mexicain65-71_deco.html"
                                        >Décoration</a>
                                    <a class="dropdown-item" href="Mexicain65-71_struct.html"
                                        >Structure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_support.html"
                                        >Support</a>
                                    <a class="dropdown-item" href="Mexicain65-71_reliure.html"
                                        >Reliure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_foliotation.html"
                                        >Foliotation</a>
                                    <a class="dropdown-item" href="Mexicain65-71_etat.html">État</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_biblio.html"
                                    >Bibliographie</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_indexn.html">Index
                                        nominum</a>
                                    <a class="dropdown-item" href="Mexicain65-71_indexl.html">Index
                                        locorum</a>
                                    <!-- <a class="dropdown-item" href="Mexicain65-71_notes.html">Index
                                        rerum</a> -->
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_histoire.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_a_propos.html">À propos du
                                    projet</a>
                            </li>
                        </ul>
                    </nav>
                    <ul>
                        <h1 class="display-6">Index rerum</h1>
                        <div class="col-6">
                            <hr class="my-4"/>
                        </div>
                    </ul>
                    <div>
                        <ul>
                            <xsl:call-template name="notes"/>
                        </ul>
                        <p>
                            <a class="btn btn-warning" href="{$pathAccueil}">Retour accueil</a>
                        </p>

                    </div>
                </body>
                <!-- Footer -->
                <footer class="page-footer pt-2"
                    style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                    <div class="container">

                        <div class="row">
                            <div class="col-sm">
                                <a href="http://www.chartes.psl.eu/">
                                    <img src="visualisation/logo-ENC.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> École nationale des
                                    Chartes 65, rue de Richelieu 75002 Paris</p>
                            </div>
                            <div class="col-sm"> </div>
                            <div class="col-sm">
                                <a href="http://www.bnf.fr/">
                                    <img src="visualisation/logo-BnF.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> Bibliothèque
                                    nationale de France Quai François Mauriac 75116 Paris cedex
                                    13</p>
                            </div>
                        </div>
                    </div>
                    <!-- Content -->
                    <div class="container-fluid text-center"> </div>
                    <!-- Content -->
                    <!-- Copyright -->
                    <div class="footer-copyright text-center">© <a
                            href="https://amoxcalli.hypotheses.org/"> Olivier Jacquot</a>,
                        2019.</div>
                    <!-- Copyright -->
                </footer>
                <!-- Footer -->
            </html>
        </xsl:result-document>

        <!--Configuration de sortie fac-similaire-->
        <xsl:result-document href="{$pathFacsim}" method="html" indent="yes">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="{$pathAccueil}">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Manuscrit Mexicain 65-71</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_facsim.html"
                                        >Version fac-similaire</a>
                                    <a class="dropdown-item" href="Mexicain65-71_norm.html">Version
                                        normalisée</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Description codicologique</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_temoins.html"
                                        >Témoins</a>
                                    <a class="dropdown-item" href="Mexicain65-71_mains.html"
                                        >Mains</a>
                                    <a class="dropdown-item" href="Mexicain65-71_layout.html">Mise
                                        en page</a>
                                    <a class="dropdown-item" href="Mexicain65-71_deco.html"
                                        >Décoration</a>
                                    <a class="dropdown-item" href="Mexicain65-71_struct.html"
                                        >Structure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_support.html"
                                        >Support</a>
                                    <a class="dropdown-item" href="Mexicain65-71_reliure.html"
                                        >Reliure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_foliotation.html"
                                        >Foliotation</a>
                                    <a class="dropdown-item" href="Mexicain65-71_etat.html">État</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_biblio.html"
                                    >Bibliographie</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_indexn.html">Index
                                        nominum</a>
                                    <a class="dropdown-item" href="Mexicain65-71_indexl.html">Index
                                        locorum</a>
                                    <!-- <a class="dropdown-item" href="Mexicain65-71_notes.html">Index
                                        rerum</a> -->
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_histoire.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_a_propos.html">À propos du
                                    projet</a>
                            </li>
                        </ul>
                    </nav>
                    <h1/>
                    <ul>
                        <h1 class="display-6">Version fac-similaire</h1>
                        <div class="col-6">
                            <hr class="my-4"/>
                        </div>
                    </ul>
                    <div>
                        <ul>
                            <ol>
                                <xsl:apply-templates select="descendant::body" mode="orig"/>
                            </ol>
                        </ul>
                        <p>
                            <a class="btn btn-warning" href="{$pathAccueil}">Retour accueil</a>
                        </p>
                    </div>
                </body>
                <!-- Footer -->
                <footer class="page-footer pt-2"
                    style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                    <div class="container">

                        <div class="row">
                            <div class="col-sm">
                                <a href="http://www.chartes.psl.eu/">
                                    <img src="visualisation/logo-ENC.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> École nationale des
                                    Chartes 65, rue de Richelieu 75002 Paris</p>
                            </div>
                            <div class="col-sm"> </div>
                            <div class="col-sm">
                                <a href="http://www.bnf.fr/">
                                    <img src="visualisation/logo-BnF.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> Bibliothèque
                                    nationale de France Quai François Mauriac 75116 Paris cedex
                                    13</p>
                            </div>
                        </div>
                    </div>
                    <!-- Content -->
                    <div class="container-fluid text-center"> </div>
                    <!-- Content -->
                    <!-- Copyright -->
                    <div class="footer-copyright text-center">© <a
                            href="https://amoxcalli.hypotheses.org/"> Olivier Jacquot</a>,
                        2019.</div>
                    <!-- Copyright -->
                </footer>
                <!-- Footer -->
            </html>
        </xsl:result-document>

        <!--Configuration de sortie normalisée-->
        <xsl:result-document href="{$pathNorm}" method="html" indent="yes">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>                  
                    
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="{$pathAccueil}">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Manuscrit Mexicain 65-71</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_facsim.html"
                                        >Version fac-similaire</a>
                                    <a class="dropdown-item" href="Mexicain65-71_norm.html">Version
                                        normalisée</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">Description codicologique</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_temoins.html"
                                        >Témoins</a>
                                    <a class="dropdown-item" href="Mexicain65-71_mains.html"
                                        >Mains</a>
                                    <a class="dropdown-item" href="Mexicain65-71_layout.html">Mise
                                        en page</a>
                                    <a class="dropdown-item" href="Mexicain65-71_deco.html"
                                        >Décoration</a>
                                    <a class="dropdown-item" href="Mexicain65-71_struct.html"
                                        >Structure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_support.html"
                                        >Support</a>
                                    <a class="dropdown-item" href="Mexicain65-71_reliure.html"
                                        >Reliure</a>
                                    <a class="dropdown-item" href="Mexicain65-71_foliotation.html"
                                        >Foliotation</a>
                                    <a class="dropdown-item" href="Mexicain65-71_etat.html">État</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_biblio.html"
                                    >Bibliographie</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Mexicain65-71_indexn.html">Index
                                        nominum</a>
                                    <a class="dropdown-item" href="Mexicain65-71_indexl.html">Index
                                        locorum</a>
                                    <!-- <a class="dropdown-item" href="Mexicain65-71_notes.html">Index
                                        rerum</a> -->
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_histoire.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Mexicain65-71_a_propos.html">À propos du
                                    projet</a>
                            </li>
                        </ul>
                    </nav>
                    <h1/>
                    <ul>
                        <h1 class="display-6">Version normalisée</h1>
                        <div class="col-6">
                            <hr class="my-4"/>
                        </div>
                    </ul>
                    <div>
                        <ul>
                            <ol>
                                <xsl:apply-templates select="descendant::body" mode="reg"/>
                            </ol>
                        </ul>   
                        <p>
                            <a class="btn btn-warning" href="{$pathAccueil}">Retour accueil</a>
                        </p>
                    </div>
                    <!-- Pour les notes, nous avons préféré l'emploi d'info-bulles à l'endroit de la note, 
                        plutôt que des notes de bas de page obligeant à des allers-retours notes->bas de page 
                        et retour -->
                    <!-- L'outil tooltip (trigger par défaut : "hover" est plus intuitif que popover car il évite un clic. Nous avons choisi
                        le trigger: "click" pour permettre de copier/coller le contenu de l'info-bulle -->
                    <!-- L'outil popover, plus lisible que tooltip implique un titre et un contenu. Son activation nécessite un clic -->
                    <script>
                        $(document).ready(function(){
                        $('[data-toggle="tooltip"]').tooltip({trigger: "click"})
                        })
                    </script>
                    <!--<script>
                        $(document).ready(function(){                       
                        $('[data-toggle="popover"]').popover()
                        })
                    </script>-->

                </body>
                <!-- Footer -->
                <footer class="page-footer pt-2"
                    style="background-color: #dccda2; font-variant:small-caps; font-weight:bold;">
                    <div class="container">

                        <div class="row">
                            <div class="col-sm">
                                <a href="http://www.chartes.psl.eu/">
                                    <img src="visualisation/logo-ENC.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> École nationale des
                                    Chartes 65, rue de Richelieu 75002 Paris</p>
                            </div>
                            <div class="col-sm"> </div>
                            <div class="col-sm">
                                <a href="http://www.bnf.fr/">
                                    <img src="visualisation/logo-BnF.png" alt="..."/>
                                </a>
                                <br/>
                                <p style="font-style:italic; font-size:13px;"> Bibliothèque
                                    nationale de France Quai François Mauriac 75116 Paris cedex
                                    13</p>
                            </div>
                        </div>
                    </div>
                    <!-- Content -->
                    <div class="container-fluid text-center"> </div>
                    <!-- Content -->
                    <!-- Copyright -->
                    <div class="footer-copyright text-center">© <a
                            href="https://amoxcalli.hypotheses.org/"> Olivier Jacquot</a>,
                        2019.</div>
                    <!-- Copyright -->
                </footer>
                <!-- Footer -->
            </html>
        </xsl:result-document>

    </xsl:template>


    <!--Règles appelées ci-dessus au moyen d'un call-template-->

    <!--Règles pour les témoins-->

    <xsl:template name="temoins">
        <xsl:for-each select="//witness/@xml:id">
            <ul>
                <span style="font-weight:bold; font-size:18px;">
                    <xsl:value-of select="."/>
                </span>
                <xsl:text> : </xsl:text>
                <xsl:value-of
                    select="
                        ancestor::witness/node()
                        | ancestor::witness/node()"/>
                <xsl:text>.</xsl:text>
                <!-- <xsl:if test="ptr != ''">
                <xsl:text>Disponible en ligne, url : &#8249;</xsl:text>
                <xsl:element name="a">
                    <xsl:attribute name="href">
                        <xsl:value-of select="ptr[@target='url']"/>                                                
                    </xsl:attribute>    
                    <xsl:value-of select="ptr[@target='url']"/>
                </xsl:element><xsl:text>&#8250;.</xsl:text>
                </xsl:if>  -->
            </ul>
        </xsl:for-each>
    </xsl:template>


    <!--Règles pour les mains-->

    <xsl:template name="mains">
        <xsl:for-each select="//handNote/@xml:id">
            <xsl:element name="br">
                <ul>
                    <span style="font-weight:bold; font-size:18px;">
                        <xsl:value-of select="."/>
                    </span>
                    <xsl:text> : </xsl:text>
                    <xsl:value-of select="ancestor::handNote/node()"/>
                </ul>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

    <!--Règles pour la mise en page du mss-->

    <xsl:template name="layout">
        <xsl:for-each select="//layoutDesc/layout">
            <ul>
                <span style="font-weight:bold; font-size:18px;">
                    <xsl:value-of select="."/>
                </span>
                <xsl:value-of
                    select="
                        ancestor::layout/node()
                        | ancestor::layout/node()"/>
                <p style="font-style:italic;">
                    <xsl:value-of select="ancestor::layout/text()"/>
                </p>
            </ul>
        </xsl:for-each>
    </xsl:template>

    <!--Règles pour la décoration-->

    <xsl:template name="deco">
        <xsl:for-each select="//decoDesc/p">
            <ul>
                <span style="font-weight:bold; font-size:18px;">
                    <xsl:value-of select="."/>
                </span>
                <xsl:value-of select="p"/>
                <p style="font-style:italic;"> </p>
            </ul>
        </xsl:for-each>
    </xsl:template>

    <!--Règles pour la structure du manuscrit-->

    <xsl:template name="struct">
        <xsl:for-each select="//msContents/msItemStruct">
            <xsl:element name="li">
                <xsl:if test="locus != ''">
                    <xsl:value-of select="concat('Fol. ', descendant::locus)"/>
                </xsl:if>
                <!-- Des champs étant répétés dans le fichier initial, il a fallu ajouter la fonction string-join -->
                <xsl:element name="br">
                    <strong>
                        <xsl:value-of select="string-join(descendant::author, ', ')"/>
                    </strong>
                    <xsl:element name="br">
                        <em>
                            <xsl:value-of select="title"/>
                        </em>
                        <xsl:element name="br"> </xsl:element>
                    </xsl:element>
                </xsl:element>
            </xsl:element>
            <xsl:element name="br"/>
        </xsl:for-each>
    </xsl:template>

    <!--Règles de présentation du support-->

    <xsl:template name="support">
        <xsl:call-template name="support1"/>
        <xsl:call-template name="support2"/>
        <xsl:call-template name="support3"/>
    </xsl:template>
    <xsl:template name="support1">
        <xsl:for-each select="//support/p">
            <span style="font-weight:bold; font-size:18px;">
                <xsl:value-of select="."/>
            </span>
            <xsl:element name="p">
                <xsl:value-of select="p"/>
                <p style="font-style:italic;"> </p>
            </xsl:element>
            <xsl:element name="br"/>
        </xsl:for-each>
    </xsl:template>
    <xsl:template name="support2">
        <span style="font-weight:bold; font-size:18px;">
            <xsl:text>Dimensions de la reliure : H </xsl:text>
            <xsl:value-of select="//support/dimensions/height"/>
            <xsl:text> mm x </xsl:text>
            <xsl:text>L </xsl:text>
            <xsl:value-of select="//support/dimensions/width"/>
            <xsl:text> mm x prof. </xsl:text>
            <xsl:value-of select="//support/dimensions/depth"/>
            <xsl:text> mm.</xsl:text>
        </span>
        <xsl:element name="br"/>
    </xsl:template>
    <xsl:template name="support3">
        <span style="font-weight:bold; font-size:18px;">
            <xsl:text>Dimensions du papier : H </xsl:text>
            <xsl:value-of select="//extent/dimensions/height"/>
            <xsl:text> mm x </xsl:text>
            <xsl:text>L </xsl:text>
            <xsl:value-of select="//extent/dimensions/width"/>
            <xsl:text> mm.</xsl:text>
        </span>
    </xsl:template>

    <!--Règles de présentation pour la reliure-->

    <xsl:template name="reliure">
        <span style="font-weight:bold; font-size:18px;">
            <xsl:copy-of select="descendant::binding"/>
        </span>
    </xsl:template>

    <!--Règles de présentation pour la foliotation-->

    <xsl:template name="foliotation">
        <xsl:for-each select="//foliation/p">
            <span style="font-weight:bold; font-size:18px;">
                <xsl:value-of select="."/>
            </span>
            <xsl:element name="p">
                <xsl:value-of select="p"/>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

    <!--Règles de présentation pour l'état de conservation-->

    <xsl:template name="etat">
        <xsl:for-each select="//condition/p">
            <span style="font-weight:bold; font-size:18px;">
                <xsl:value-of select="."/>
            </span>
            <xsl:element name="p">
                <xsl:value-of select="p"/>
                <p style="font-style:italic;"> </p>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

    <!--Règles de présentation pour l'histoire-->

    <xsl:template name="histoire">
        <xsl:call-template name="histoire3"/>
        <xsl:call-template name="histoire2"/>
        <xsl:call-template name="histoire1"/>
    </xsl:template>
    <xsl:template name="histoire1">
        <span style="font-weight:bold; font-size:18px;">
            <xsl:copy-of select="descendant::history"/>
        </span>
    </xsl:template>
    <xsl:template name="histoire2">
        <span style="font-weight:bold; font-size:18px;">
            <xsl:copy-of select="descendant::langUsage"/>
        </span>
        <xsl:element name="br"/>
    </xsl:template>
    <xsl:template name="histoire3">
        <span style="font-weight:bold; font-size:18px;">
            <xsl:copy-of select="descendant::creation"/>
        </span>
        <xsl:element name="br"/>
    </xsl:template>

    <!--Règles de présentation pour l'à propos-->

    <xsl:template name="a_propos">
        <span style="font-weight:bold; font-size:18px;">
            <xsl:copy-of select="descendant::encodingDesc"/>
        </span>
        <xsl:element name="br"/>
    </xsl:template>

    <!-- Règles pour l'index nominum-->

    <xsl:template name="indexn">
        <xsl:for-each select="//listPerson//persName">
            <li>
                <span style="font-weight:bold;">
                    <xsl:value-of select="."/>
                </span>
                <xsl:variable name="idPerson">
                    <xsl:value-of select="concat('#', parent::person/@xml:id)"/>
                </xsl:variable>
                <xsl:text> : </xsl:text>
                <xsl:for-each select="//body//persName[@ref = $idPerson]">
                    <xsl:value-of
                        select="
                            text() |
                            .//orig/text() |
                            .//expan//text() |
                            .//hi//text()"/>
                    <xsl:text> (l. </xsl:text>
                    <xsl:value-of select="replace((preceding::lb/@facs)[last()], '#l', '')"/>
                    <xsl:text>)</xsl:text>
                    <xsl:if test="position() != last()">, </xsl:if>
                    <xsl:if test="position() = last()">.</xsl:if>
                </xsl:for-each>
            </li>
        </xsl:for-each>
    </xsl:template>

    <!-- Règles pour l'index locorum-->

    <xsl:template name="indexl">
        <xsl:for-each select="//listPlace//placeName">
            <li>
                <span style="font-weight:bold;">
                    <xsl:value-of select="."/>
                </span>
                <xsl:variable name="idPlace">
                    <xsl:value-of select="concat('#', parent::place/@xml:id)"/>
                </xsl:variable>
                <xsl:text> : </xsl:text>
                <xsl:for-each select="//body//placeName[@ref = $idPlace]">
                    <xsl:value-of
                        select="
                            text() |
                            .//orig/text() |
                            .//expan//text() |
                            .//hi//text()"/>
                    <xsl:text> (l. </xsl:text>
                    <xsl:value-of select="replace((preceding::lb/@facs)[last()], '#l', '')"/>
                    <xsl:text>)</xsl:text>
                    <xsl:if test="position() != last()">, </xsl:if>
                    <xsl:if test="position() = last()">.</xsl:if>
                </xsl:for-each>
            </li>
        </xsl:for-each>
    </xsl:template>

    <!--Règles de présentation pour l'index rerum-->

    <!--   <xsl:template name="notes">
        <xsl:call-template name="notes1"/> 
        <xsl:call-template name="notes2"/> 
        <xsl:call-template name="notes3"/>
    </xsl:template>
    <xsl:template name="notes1">
        <span style="font-weight:bold;">
            <xsl:text>Terme </xsl:text>
            <xsl:copy-of select="descendant::index[@indexName=IndexRerum]"/> Il manque ici les '' pour indiquer une chaine de caractères
        </span>             
        <xsl:text> : </xsl:text>
    </xsl:template>
    <xsl:template name="notes2">
            <xsl:copy-of select="descendant::term"/>
    </xsl:template>
    <xsl:template name="notes3">
            <xsl:copy-of select="descendant::n"/>
        <xsl:element name="br"/>
    </xsl:template>     -->


    <xsl:template name="notes">
        <xsl:for-each select="//index">
            <li>
                <span style="font-weight:bold;">
                    <xsl:text>Terme : </xsl:text>
                    <xsl:value-of select="."/>
                </span>
                <xsl:text> : </xsl:text>
                <xsl:for-each select="index[@indexName ='IndexRerum']"> --> <!-- Essais infructueux /  Il manque ici les '' pour indiquer une chaine de caractères -->
                    <!-- <xsl:value-of select="                      
                        text() |
                        term/text() |
                        note/text()"/> -->
                    <!-- <xsl:value-of select="                      
                        text() |
                        .//term/text() |
                        .//note/text()"/> -->
                    <!-- <xsl:copy-of select=".//note/text()"/> -->
                    <!-- <xsl:value-of select="//index/term/note/text()"/> -->
                    <!-- <xsl:value-of select="note/text()"/> -->
                    <!-- <xsl:copy-of select="descendant::note"/> -->
                    <!-- <xsl:copy-of select=".//note"/> -->
                    <xsl:text> (l. </xsl:text>
                    <xsl:value-of select="replace((preceding::lb/@facs)[last()], '#l', '')"/>
                    <xsl:text>)</xsl:text>
                    <xsl:if test="position() != last()">, </xsl:if>
                    <xsl:if test="position() = last()">.</xsl:if>
                </xsl:for-each>
            </li>
        </xsl:for-each>
    </xsl:template>

    <!-- Règles de présentation du texte -->

    <xsl:template match="descendant::supplied" mode="#all">
        <xsl:value-of select="supplied"/>
    </xsl:template>
    
    <xsl:template match="choice" mode="orig">
        <xsl:value-of select="orig | abbr"/>
    </xsl:template>
    
    <xsl:template match="choice" mode="reg">
        <xsl:value-of select="reg | expan | ex"/>
    </xsl:template>
    
    <!--   <xsl:template match="div" mode="default">  C'est ici qu'il faut modifier un peu la règle - default n'existe pas, à moins de l'avoir défini, sinon #default/ je pense que cela devrait fonctionnner, sinon essayer #default ou "orig reg" -->
    <xsl:template match="div" mode="#all">  <!-- #all, #default, default ne font rien -->
    <div>
            <xsl:apply-templates mode="#current"/>
    </div>
    </xsl:template>
    
    <xsl:template match="descendant::seg[@type='hyphen']" mode="reg"><xsl:apply-templates mode="#current"/></xsl:template>
   <!-- Template pour supprimer l'espace blanc laissé par <seg type="hyphen"> -->
    <xsl:template match="descendant::lb[@type='facs']" mode="reg"><xsl:apply-templates mode="#current"/></xsl:template>
   <!-- Template pour supprimer l'espace blanc laissé par <lb facs="#lx"/> -->

    <!--  <xsl:template match="pb" mode="reg">
        <div>
            <p>
                <xsl:apply-templates select="pb" mode="reg"/> 
                <xsl:element name="br"/>
            </p>
        </div>
    </xsl:template> -->
    
    <xsl:template match="p" mode="#all">
        <div>
            <p>
                <xsl:apply-templates mode="#current"/>
            </p>
        </div>
    </xsl:template> 

    <!-- Règles de présentation des tableaux -->

    <xsl:template name="atts">
        <xsl:param name="class"/>
    </xsl:template>

    <xsl:template match="table" mode="#all">
        <hr class="clear"/>
        <table>
            <xsl:call-template name="atts">
                <xsl:with-param name="class">table</xsl:with-param>
            </xsl:call-template>
            <xsl:apply-templates/>
        </table>
    </xsl:template>
    <xsl:template match="table/head">
        <caption>
            <xsl:call-template name="atts"/>
            <xsl:apply-templates/>
        </caption>
    </xsl:template>
    <xsl:template match="table/spanGrp">
        <colgroup>
            <xsl:apply-templates/>
        </colgroup>
    </xsl:template>
    <xsl:template match="table/spanGrp/span">
        <col>
            <xsl:call-template name="atts"/>
        </col>
    </xsl:template>
    <!-- Ligne -->
    <xsl:template match="row">
        <tr>
            <xsl:call-template name="atts"/>
            <xsl:apply-templates/>
        </tr>
    </xsl:template>
    <!-- Cellule  -->
    <xsl:template match="cell">
        <xsl:variable name="el">
            <xsl:choose>
                <xsl:when test="@role = 'label'">th</xsl:when>
                <xsl:when test="../@role = 'label'">th</xsl:when>
                <xsl:otherwise>td</xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:element name="{$el}" namespace="http://www.w3.org/1999/xhtml">
            <xsl:call-template name="atts"/>
            <xsl:if test="@rows &gt; 1">
                <xsl:attribute name="rowspan">
                    <xsl:value-of select="@rows"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="@cols &gt; 1">
                <xsl:attribute name="colspan">
                    <xsl:value-of select="@cols"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <!-- Règles de présentation des listes -->
    
    <xsl:template match="list" mode="reg">
        <dl>
            <xsl:call-template name="atts"/>
            <xsl:apply-templates mode="#current"/>
        </dl>
        <xsl:element name="br"/>
    </xsl:template>
    
    <xsl:template match="list/head" mode="reg">
        <head>  
            <span style="font-weight:bold;">
            <xsl:call-template name="atts"/>
            <xsl:apply-templates mode="#current"/>
            </span>
        </head>
    </xsl:template>
    
    <xsl:template match="list/label" mode="reg">
        <dt>
            <xsl:call-template name="atts"/>
            <xsl:apply-templates mode="#current"/>
        </dt>
    </xsl:template>
    
    <xsl:template match="list/item" mode="reg">
        <dd>
            <xsl:call-template name="atts"/>
            <xsl:apply-templates mode="#current"/>   
        </dd>
    </xsl:template>
    
    <!-- Suppressions d'éléments -->

    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="index" mode="#all"/>
    <xsl:template match="term" mode="#all"/>
    <xsl:template match="note" mode="orig"/> <!-- Suppresion des notes en mode orig -->
    <xsl:template match="choice/orig" mode="reg"/>
    <xsl:template match="list" mode="orig"/>

    <!-- Règles de présentation des notes numérotées et en exposant -->
    <!-- Pour les notes, nous avons préféré l'emploi d'info-bulles à l'endroit de la note, plutôt que des 
        notes de bas de page obligeant à des allers-retours notes->bas de page et retour -->

    <xsl:template match="note" mode="reg">
        <xsl:variable name="pos">
            <xsl:number count="text//note" level="any" from="div[@type = 'edition']" format="[1]"/>
        </xsl:variable>
        <xsl:variable name="text">
            <!-- Texte de la note mis dans une variable pour être placé dans le champ title requis 
                pour le popover/tooltip bootstrap -->
            <xsl:value-of select="text//note/text()"/>
            <xsl:apply-templates/>
        </xsl:variable>
        <sup>
            <a name="appelnote{$pos}" href="#textenote{$pos}" data-toggle="tooltip" title="{$text}">
                <xsl:value-of select="$pos"/>
            </a>
        </sup>
    </xsl:template>

    <!-- Images -->

    <xsl:template match="graphic" mode="#all">
       <xsl:element name="br"/>
        <xsl:element name="figure">
            <img src="visualisation/{@url}"/>
        </xsl:element>
    </xsl:template>
    
    <!-- Nous n'avons plus eu le temps d'améliorer ce template pour générer le bon alt pour chaque image.
        Ce template ramène tous les head des <graphic><list> 
        
        <xsl:template match="graphic" mode="#all">
        <xsl:variable name="titre">
            <xsl:copy-of select="//list/head/text()"/>
            <xsl:apply-templates/>
        </xsl:variable>
        <xsl:element name="br"/>
        <xsl:element name="figure">
            <img src="visualisation/{@url}" alt="{$titre}"/>
        </xsl:element>
    </xsl:template>  -->

</xsl:stylesheet>
