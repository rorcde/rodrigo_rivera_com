<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method="html" encoding="utf-8" />
<xsl:template match="/rss">
	<xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html &gt;</xsl:text>
	<html>
	<head>
		<xsl:text disable-output-escaping="yes"><![CDATA[
		<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>RSS Feed (Styled)</title>

    <link rel="stylesheet" type="text/css" href="/assets/css/styles_feeling_responsive.css">

  

	<script src="/assets/js/modernizr.min.js"></script>

	<script src="https://ajax.googleapis.com/ajax/libs/webfont/1.5.18/webfont.js"></script>
	<script>
		WebFont.load({
			google: {
				families: [ 'Lato:400,700,400italic:latin', 'Volkhov::latin' ]
			}
		});
	</script>

	<noscript>
		<link href='http://fonts.googleapis.com/css?family=Lato:400,700,400italic%7CVolkhov' rel='stylesheet' type='text/css'>
	</noscript>


	<!-- Search Engine Optimization -->
	<meta name="description" content="International by design, speaking five languages, Rodrigo is a Mexican German machine-learning researcher at the ADASE group part of Skoltech  in Moscow, Russia. He has worked on leadership roles in machine learning research and data science in South East Asia, the Americas, and Europe  with leading FMCG, Internet, and electronic companies over the last fourteen years.">
	<meta name="google-site-verification" content="">
	<meta name="msvalidate.01" content="" >
	
	<link rel="author" href="">
	
	
	<link rel="canonical" href="/assets/xslt/rss.xslt">


	<!-- Facebook Open Graph -->
	<meta property="og:title" content="RSS Feed (Styled)">
	<meta property="og:description" content="International by design, speaking five languages, Rodrigo is a Mexican German machine-learning researcher at the ADASE group part of Skoltech  in Moscow, Russia. He has worked on leadership roles in machine learning research and data science in South East Asia, the Americas, and Europe  with leading FMCG, Internet, and electronic companies over the last fourteen years.">
	<meta property="og:url" content="/assets/xslt/rss.xslt">
	<meta property="og:locale" content="en_EN">
	<meta property="og:type" content="website">
	<meta property="og:site_name" content="Rodrigo Rivera - Machine Learning Researcher">
	
	


	

	<link type="text/plain" rel="author" href="/humans.txt">

	

	


	<link rel="icon" sizes="32x32" href="/assets/img/favicon-32x32.png">

	<link rel="icon" sizes="192x192" href="/assets/img/touch-icon-192x192.png">

	<link rel="apple-touch-icon-precomposed" sizes="180x180" href="/assets/img/apple-touch-icon-180x180-precomposed.png">

	<link rel="apple-touch-icon-precomposed" sizes="152x152" href="/assets/img/apple-touch-icon-152x152-precomposed.png">

	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="/assets/img/apple-touch-icon-144x144-precomposed.png">

	<link rel="apple-touch-icon-precomposed" sizes="120x120" href="/assets/img/apple-touch-icon-120x120-precomposed.png">

	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="/assets/img/apple-touch-icon-114x114-precomposed.png">

	
	<link rel="apple-touch-icon-precomposed" sizes="76x76" href="/assets/img/apple-touch-icon-76x76-precomposed.png">

	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="/assets/img/apple-touch-icon-72x72-precomposed.png">

	<link rel="apple-touch-icon-precomposed" href="/assets/img/apple-touch-icon-precomposed.png">	

	<meta name="msapplication-TileImage" content="/assets/img/msapplication_tileimage.png">

	<meta name="msapplication-TileColor" content="#fabb00">

	
		]]></xsl:text>
	</head>
	<body id="top-of-page">
		<xsl:text disable-output-escaping="yes"><![CDATA[
		
<div id="navigation" class="sticky">
  <nav class="top-bar" role="navigation" data-topbar>
    <ul class="title-area">
      <li class="name">
      <h1 class="show-for-small-only"><a href="" class="icon-tree"> Rodrigo Rivera - Machine Learning Researcher</a></h1>
    </li>
       <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
      <li class="toggle-topbar menu-icon"><a href="#"><span>Nav</span></a></li>
    </ul>
    <section class="top-bar-section">

      <ul class="right">
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
            
            
              <li class="divider"></li>
              <li><a  href="/blog/">Blog</a></li>

            
            
          
        

              

          
          
            
            
              <li class="divider"></li>
              <li><a  href="/contact/">Contact</a></li>

            
            
          
        
        
      </ul>

      <ul class="left">
        

              

          
          

            
            
              <li><a  href="/">Rodrigo Rivera-Castro</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          

            
            
              <li><a  href="/about/">About</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          

            
            
              <li><a  href="/cv/">CV</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          

            
            
              <li><a  href="/research/">Research</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          

            
            
              <li><a  href="/publications/">Publications</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          

            
            
              <li><a  href="/teaching/">Teaching</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          

            
            
              <li><a  href="/outreach/">Outreach</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          
        

              

          
          
        
        
      </ul>
    </section>
  </nav>
</div><!-- /#navigation -->
		

<div id="masthead-no-image-header">
	<div class="row">
		<div class="small-12 columns">
			<a id="logo" href="/" title="Rodrigo Rivera - Machine Learning Researcher – Rodrigo Rivera - Machine Learning Researcher">
				<img src="/assets/img/logo.png" alt="Rodrigo Rivera - Machine Learning Researcher – Rodrigo Rivera - Machine Learning Researcher">
			</a>
		</div><!-- /.small-12.columns -->
	</div><!-- /.row -->
</div><!-- /#masthead -->








		


<div class="alert-box warning text-center"><p>This <a href="https://en.wikipedia.org/wiki/RSS" target="_blank">RSS feed</a> is meant to be used by <a href="https://en.wikipedia.org/wiki/Template:Aggregators" target="_blank">RSS reader applications and websites</a>.</p>
</div>


		]]></xsl:text>
		<header class="t30 row">
	<p class="subheadline"><xsl:value-of select="channel/description" disable-output-escaping="yes" /></p>
	<h1>
		<xsl:element name="a">
			<xsl:attribute name="href">
				<xsl:value-of select="channel/link" />
			</xsl:attribute>
			<xsl:value-of select="channel/title" disable-output-escaping="yes" />
		</xsl:element>
	</h1>
</header>
<ul class="accordion row" data-accordion="">
	<xsl:for-each select="channel/item">
		<li class="accordion-navigation">
			<xsl:variable name="slug-id">
				<xsl:call-template name="slugify">
					<xsl:with-param name="text" select="guid" />
				</xsl:call-template>
			</xsl:variable>
			<xsl:element name="a">
				<xsl:attribute name="href"><xsl:value-of select="concat('#', $slug-id)"/></xsl:attribute>
				<xsl:value-of select="title"/>
				<br/>
				<small><xsl:value-of select="pubDate"/></small>
			</xsl:element>
			<xsl:element name="div">
				<xsl:attribute name="id"><xsl:value-of select="$slug-id"/></xsl:attribute>
				<xsl:attribute name="class">content</xsl:attribute>
				<h1>
					<xsl:element name="a">
						<xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute>
						<xsl:value-of select="title"/>
					</xsl:element>
				</h1>
				<xsl:value-of select="description" disable-output-escaping="yes" />
			</xsl:element>
		</li>
	</xsl:for-each>
</ul>

		<xsl:text disable-output-escaping="yes"><![CDATA[
		    <div id="up-to-top" class="row .hide-for-print">
      <div class="small-12 columns .hide-for-print" style="text-align: right;">
        <a class="iconfont" href="#top-of-page">&#xf108;</a>
      </div><!-- /.small-12.columns -->
    </div><!-- /.row -->
    

        <!-- / map with location -->
    <div class="row .hide-for-print"><!-- /.row -->
  <div class="large-12 columns .hide-for-print">
    <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A28e443c9576ec69156dc75cd4767b982b2d35dca845cf5e4b7dfe814b17d7c38&amp;width=100%25&amp;height=300&amp;lang=en_FR&amp;scroll=true"></script>
  </div>
</div><!-- /.grid-x -->


    <footer id="footer-content" class="bg-grau .hide-for-print">
      <div id="footer">
        <div class="row">
          <div class="medium-6 large-5 columns .hide-for-print">
            <h5 class="shadow-black">About Rodrigo</h5>

            <p class="shadow-black">
              International by design, speaking five languages, Rodrigo is a Mexican German machine-learning researcher at the ADASE group part of Skoltech  in Moscow, Russia. He has worked on leadership roles in machine learning research and data science in South East Asia, the Americas, and Europe  with leading FMCG, Internet, and electronic companies over the last fourteen years.

            </p>
          </div><!-- /.large-6.columns -->


          <div class="small-6 medium-3 large-3 large-offset-1 columns .hide-for-print">
            
              
                <h5 class="shadow-black">Services</h5>
              
            
              
            
              
            
              
            
              
            

              <ul class="no-bullet shadow-black">
              
                
                  <li >
                    <a href=""  title=""></a>
                  </li>
              
                
                  <li >
                    <a href="/contact/"  title="Contact">Contact</a>
                  </li>
              
                
                  <li >
                    <a href="/feed.xml"  title="Subscribe to RSS Feed">RSS</a>
                  </li>
              
                
                  <li >
                    <a href="/atom.xml"  title="Subscribe to Atom Feed">Atom</a>
                  </li>
              
                
                  <li >
                    <a href="/sitemap.xml"  title="Sitemap for Google Webmaster Tools">sitemap.xml</a>
                  </li>
              
              </ul>
          </div><!-- /.large-4.columns -->


          <div class="small-6 medium-3 large-3 columns .hide-for-print">
            
              
                <h5 class="shadow-black">Associations</h5>
              
            
              
            
              
            
              
            
              
            
              
            

            <ul class="no-bullet shadow-black">
            
              
                <li >
                  <a href=""  title=""></a>
                </li>
            
              
                <li class="sitemap-link" >
                  <a href="https://cdtm.de" target="_blank"  title="CDTM">* CDTM</a>
                </li>
            
              
                <li class="network-entypo" >
                  <a href="http://smiles.skoltech.ru/" target="_blank"  title="The School of Machine Learning at Skoltech">* SMILES</a>
                </li>
            
              
                <li class="network-entypo" >
                  <a href="http://mlss.cc/" target="_blank"  title="Machine Learning Summer School">* MLSS</a>
                </li>
            
              
                <li class="rss-link" >
                  <a href="http://adase.group/" target="_blank"  title="ADASE">* ADASE Group</a>
                </li>
            
              
                <li class="services-newsletter" >
                  <a href="http://skoltech.ru/" target="_blank"  title="Skoltech">* Skoltech</a>
                </li>
            
            </ul>
          </div><!-- /.large-3.columns -->
        </div><!-- /.row -->

      </div><!-- /#footer -->


      <div id="subfooter" class=".hide-for-print">
        <nav class="row .hide-for-print">
          <section id="subfooter-left" class="small-12 medium-6 columns credits">
            <p>Rodrigo is a machine learning researcher at the <a href="http://adase.group">ADASE</a> group in <a href="http://skoltech.ru">Skoltech</a>.</p> 
          </section>

          <section id="subfooter-right" class="small-12 medium-6 columns">
            <ul class="inline-list social-icons">
            
            </ul>
          </section>
        </nav>
      </div><!-- /#subfooter -->
    </footer>
		


<script src="/assets/js/javascript.min.js"></script>
















		]]></xsl:text>
	</body>
	</html>
</xsl:template>
<xsl:template name="slugify">
	<xsl:param name="text" select="''" />
	<xsl:variable name="dodgyChars" select="' ,.#_-!?*:;=+|&amp;/\\'" />
	<xsl:variable name="replacementChar" select="'-----------------'" />
	<xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" />
	<xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
	<xsl:variable name="lowercased"><xsl:value-of select="translate( $text, $uppercase, $lowercase )" /></xsl:variable>
	<xsl:variable name="escaped"><xsl:value-of select="translate( $lowercased, $dodgyChars, $replacementChar )" /></xsl:variable>
	<xsl:value-of select="$escaped" />
</xsl:template>
</xsl:stylesheet>