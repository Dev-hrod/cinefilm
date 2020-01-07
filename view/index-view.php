<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="public/css/style.css">
   
</head>

<body>
    <header class="container-fluid imheader">
        <div class="container ">
        <div class="row centelog d-flex flex-column justify-content-center">
            <p class="text-center"><img src="../public/images/logo-cine.png" alt="logo" height="403px" width="635px"></p>
        </div>
        </div>
    </header>
    <h1>hello world ciné</h1>
    <form action="index.php" method="get">
        <button type="submit" name='page' value='1'>Bad Boys</button>
        <button type="submit" name='page' value='9'>Las Vegas Paranos</button>
        <button type="submit" name='page' value='15'>Retour Vers le Futur</button>
        <button type="submit" name='page' value='2'>300</button>
        <button type="submit" name='page' value='5'>Matrix</button>
    </form>

    <div class="container d-flex mt-20px">
        <a href="index.php?page=4">
            <div class="container-affiches mr-20px">
                <div><img src="public/images/affiche-colorful.jpg" alt="affiche film" width="600" height="800"
                        class="affiches"></div>
                <h3 class="text-align-center">Colorful</h3>
            </div>
        </a>

        <a href="index.php?page=7">
            <div class="container-affiches">
                <div><img src="public/images/affiche-once-upon-a-time-hollywood.jpg" alt="affiche film" width="405"
                        height="600" class="affiches"></div>
                <h3 class="text-align-center">Once Upon a Time… in Hollywood</h3>
            </div>
        </a>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
    integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
    crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
    crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
    integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
    crossorigin="anonymous"></script>

</html>