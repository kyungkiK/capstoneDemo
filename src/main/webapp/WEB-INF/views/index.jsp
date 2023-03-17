<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Nevada - Free HTML Bootstrap Template</title>

    <!-- Css -->
    <link href="/css/bootstrap.css" rel="stylesheet">
    <link href="/css/style.css" rel="stylesheet">


</head>

<body>

<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <div class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-menu">
                <span class="bar1"></span>
                <span class="bar2"></span>
                <span class="bar3"></span>
            </div>
            <a class="navbar-brand top" href="#">
                <img src="/img/logo.png" alt="">
            </a>

        </div>

        <div class="collapse navbar-collapse" id="main-menu">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#about">About</a></li>
                <li><a href="#portfolio">Portfolio</a></li>
                <li><a href="#press">Press</a></li>
                <li><a href="#brand">Brand</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>




<!-- Intro -->
<section class="intro">
    <div class="container">
        <div class="row">
            <div class="col-lg-7">
                <p>Aliquam pellentesque nisl et maximus egestas. Vivamus accumsan, <i>sem ut viverra</i> ullamcorper, neque ligula laoreet justo, non semper nunc mauris mattis lorem. </p>
            </div>
        </div>
    </div>
</section>


<!-- Slider -->
<section class="slider">
    <div class="container-fluid">
        <div class="row no-gutter">
            <div class="col-lg-12">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="/img/slide-1.jpg" alt="slide">
                        </div>

                        <div class="item">
                            <img src="/img/slide-2.jpg" alt="slide">
                        </div>

                        <div class="item">
                            <img src="/img/slide-3.jpg" alt="slide">
                        </div>

                        <div class="item">
                            <img src="/img/slide-4.jpg" alt="slide">
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>


<!-- About -->
<section class="about" id="about">
    <div class="container about">
        <div class="row">
            <div class="col-md-6 big-letter">
                <p>
                    Donec quis leo leo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.
                    Cras scelerisque rhoncus nulla sit amet bibendum. Quisque maximus vel nibh non tincidunt. Mauris felis felis, porta
                    vitae sem sed, auctor consequat diam. Sed eu magna ultricies, convallis elit vel, lacinia ante.
                </p>
                <br>
                <p>
                    Vestibulum tempor velit nibh, nec finibus lectus ultrices sodales. Aliquam pellentesque nisl et maximus egestas. Vivamus accumsan, sem ut viverra
                    ullamcorper, neque ligula laoreet justo, non semper nunc mauris mattis lorem. Maecenas finibus non ipsum ullamcorper vehicula.
                </p>
            </div>
            <div class="col-md-6">
                <p>
                    Aliquam pellentesque nisl et maximus egestas. Vivamus accumsan, sem ut viverra ullamcorper, neque ligula laoreet justo,
                    non semper nunc mauris mattis lorem. Quisque maximus vel nibh non tincidunt. Mauris felis felis, porta
                    vitae sem sed, auctor consequat diam. Sed eu magna ultricies, convallis elit vel, lacinia ante. Vestibulum tempor velit
                    nibh, nec finibus lectus ultrices sodales
                </p>
                <br>
                <img class="pull-right" src="/img/signature.jpg" alt="signature">
            </div>
        </div>
    </div>
</section>




<!-- Gallery -->
<section id="portfolio">
    <div class="container">
        <div class="row">


            <div class="col-md-6 thumbnail">
                <div class="hovereffect">
                    <div class="col-md-12 photo-1"></div>
                    <a href="#mybox" data-toggle="modal" data-slide-to="0">
                        <div class="overlay">
                            <h2>Vivamus accumsan</h2>
                            <p>Lacinia ipsum</p>
                        </div>
                    </a>
                </div>
            </div>


            <div class="col-md-6 thumbnail">
                <div class="hovereffect">
                    <div class="col-md-12 photo-2"></div>
                    <a href="#mybox" data-toggle="modal" data-slide-to="1">
                        <div class="overlay">
                            <h2>Lacinia ante</h2>
                            <p>Aliquam pellentesque</p>
                        </div>
                    </a>
                </div>
            </div>


        </div>
    </div>

    <div class="container">
        <div class="row">


            <div class="col-md-6 thumbnail">
                <div class="hovereffect">
                    <div class="col-md-12 photo-3"></div>
                    <a href="#mybox" data-toggle="modal" data-slide-to="2">
                        <div class="overlay">
                            <h2>Ultris sodales</h2>
                            <p>Quisque maximu</p>
                        </div>
                    </a>
                </div>
            </div>


            <div class="col-md-6 thumbnail">
                <div class="hovereffect">
                    <div class="col-md-12 photo-4"></div>
                    <a href="#mybox" data-toggle="modal" data-slide-to="3">
                        <div class="overlay">
                            <h2>Quisque maximu</h2>
                            <p>Sed eu magna</p>
                        </div>
                    </a>
                </div>
            </div>


        </div>
    </div>
</section>


<!-- End Gallery -->


<div class="container">
    <div class="modal fade and carousel slide" id="mybox">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">

                    <button class="close" data-dismiss="modal" type="button">×</button>


                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="/img/1.jpg" alt="slide">
                        </div>
                        <div class="item">
                            <img src="/img/2.jpg" alt="slide">
                        </div>
                        <div class="item">
                            <img src="/img/3.jpg" alt="slide">
                        </div>
                        <div class="item">
                            <img src="/img/4.jpg" alt="slide">
                        </div>
                    </div><!-- /.carousel-inner -->


                    <a class="left carousel-control" href="#mybox" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#mybox" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>

                </div><!-- /.modal-body -->
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
</div><!-- /.container -->





<!-- Press -->
<section class="press" id="press">
    <div class="container about">
        <div class="row">
            <div class="col-md-4">
                <h4>Presentations </h4>
                <p><a href="#" target="_blank">Ducimus qui blanditiis </a></p>
                <p>New York, April 2015</p>
                <p>“Temporibus uit autem”</p>
                <p><em>with Mark Riders</em></p>

                <br>

                <p><a href="#" target="_blank">Righteous and indignation</a></p>
                <p>Madrid, November 2015</p>
                <p>“Anyone who loves”</p>
                <br>

                <h4>Publications</h4>
                <p><a href="#" target="_blank">Deserunt mollitia animi 2016</a></p>
                <p><a href="#" target="_blank">Vitae dicta : sunt explicabo</a></p>
                <p>Voluptatem sequi nesciunt, Fall 2015</p>
                <p>Sunt in culpa qui deserunt, Spring 2015</p>
                <p><a href="#" target="_blank">Who avoids and pain 4</a></p>
                <p><a href="#" target="_blank">Desires to obtain 1</a></p>
            </div>


            <div class="col-md-4">
                <h4>Premiations </h4>
                <p><a href="#" target="_blank">Magnam, 2015</a>: Best User</p>
                <p><a href="#" target="_blank">Information Awards, 2014</a>: Gold </p>
                <p><a href="#" target="_blank">One Man Show, 2015</a>: Platinum Arch</p>
                <p><a href="#" target="_blank"><em>Mximus vel nibh</em>Innovation Awards, 2015</a></p>
                <p><a href="#" target="_blank">Tincidunt idea 2016</a>: Gold Place</p>
                <br><br>


                <h4>More about me</h4>
                <p><a href="#" target="_blank">Cupiditate non provident 2015</a></p>
                <p><a href="#" target="_blank">Quis nostrum : exercitationem</a></p>
                <p>Neque porro quisquam est, Fall 2015</p>
                <p>Pellentesque nisl et maximus 2015</p>
                <p><a href="#" target="_blank">Dolore magnam 30</a></p>
                <p><a href="#" target="_blank">Architecto beatae 26</a></p>
                <p><a href="#" target="_blank">Sit cras amet bibendum</a></p>
                <p><a href="#" target="_blank">Emper nunc mauris</a></p>
            </div>


            <div class="col-md-4">
                <h4>Recognition </h4>
                <p>
                    Aliquam pellentesque nisl et maximus egestas.  <a href="#" target="_blank">nunc mauris</a> maximus vel <a href="#">maximus ipsum egestas lorem</a>.
                    Cras scelerisque rhoncus nulla sit amet bibendum <em>because</em> Quisque maximus vel nibh non <em>tincidunt</em> non semper nunc mauris mattis lorem <em>pellentesque</em> nisl et maximus egestas. Vivamus accumsan, sem ut viverra ullamcorper, neque ligula laoreet justo.
                </p>
                <br>

                <h4>Contact </h4>
                <p>Nicola Tolin Web Design</p>
                <p>Allaroud Road 2903</p>
                <p>Madison Square, New York</p>
                <p><a href="mailto:info@nicolatolin.com">info@nicolatolin.com</a></p>
                <br><br>
            </div>
        </div>
    </div>
</section>


<!-- Brand -->
<section id="brand">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul class="logo-list list-inline text-center">
                    <li><a href="#" target="_blank"><img src="/img/logos/logo1.jpg" alt="client logo" class="img-responsive"/></a></li>
                    <li><a href="#" target="_blank"><img src="/img/logos/logo2.jpg" alt="client logo" class="img-responsive"/></a></li>
                    <li><a href="#" target="_blank"><img src="/img/logos/logo3.jpg" alt="client logo" class="img-responsive"/></a></li>
                    <li><a href="#" target="_blank"><img src="/img/logos/logo4.jpg" alt="client logo" class="img-responsive"/></a></li>
                    <li><a href="#" target="_blank"><img src="/img/logos/logo5.jpg" alt="client logo" class="img-responsive"/></a></li>
                    <li><a href="#" target="_blank"><img src="/img/logos/logo6.jpg" alt="client logo" class="img-responsive"/></a></li>
                    <li><a href="#" target="_blank"><img src="/img/logos/logo7.jpg" alt="client logo" class="img-responsive"/></a></li>
                    <li><a href="#" target="_blank"><img src="/img/logos/logo8.jpg" alt="client logo" class="img-responsive"/></a></li>
                </ul>
            </div>
        </div>
    </div>
</section>


<!-- Copyright -->
<footer>
    <div class="container">
        <p class="text-center">© 2016 - Designed by <a href="http://www.nicolatolin.com">Nicola Tolin</a></p>
    </div>
</footer>

<a href="#page-top" class="cd-top">Top</a>


<!-- script -->
<script src="/js/jquery.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/modernizr.js"></script>
<script src="/js/script.js"></script>



</body>
</html>