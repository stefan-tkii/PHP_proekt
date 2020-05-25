<?php
    include("./Models/Game.php");
    if(isset($_GET['searchButton']))
    {
        session_start();
        $result_array = array();
        $db = mysqli_connect('localhost', 'root', '', 'php_repository') or die('Could not connect to the database!');
        $name_query = mb_convert_encoding($_GET['search'], 'UTF-8', 'UTF-8');
        $name_query = htmlentities($name_query, ENT_QUOTES, 'UTF-8');
        $name_query_escaped = mysqli_real_escape_string($db, $name_query);
        $query = "SELECT * FROM `game` WHERE `name` LIKE '%$name_query_escaped%'";
        $result = mysqli_query($db, $query);
        if(mysqli_num_rows($result)>0)
        {
            while($row = mysqli_fetch_assoc($result))
            {
                $game = new game();
                $game->name = $row['name'];
                $game->compNames = $row['compNames'];
                $game->platforms = $row['platforms'];
                $game->releaseDate = $row['releaseDate'];
                array_push($result_array, $game);
            } 
        }
    }
?>

<?php if(count($result_array)>0) : ?>
        <div>
    <?php foreach($result_array as $res) : ?>
        <P><b> <?php echo $res->name ?> </b> </P>
        <P><b> <?php echo $res->compNames ?> </b> </P>
        <?php endforeach ?>
    </div>
    <?php endif ?>

<?php if(mysqli_num_rows($result) == 0): ?>
    <div>
        <h1 style="text-align: center"><b>No search results found.<b><h1>
    </div>
<?php endif ?>
    


