<?php
    $login = $_GET['login'];

    $url = "https://webapplis.utc.fr/Edt_ent_rest/myedt/result?login=".$login;    

    $json = file_get_contents($url);

    $result = json_decode($json);
    for($i = 0; $i < count($result); $i++) {
        echo "<div>UV: " . $result[$i]->{'uv'} . "</div>";
	echo "<div>Type: " . $result[$i]->{'type'} . "</div>";
	echo "<div>Jour: " . $result[$i]->{'day'} . "</div>";
	echo "<div>Debut: " . $result[$i]->{'begin'} . "</div>";
	echo "<div>Final: " . $result[$i]->{'end'} . "</div>";
	echo "<div>Groupe: " . $result[$i]->{'group'} . "</div>";
        echo "<br />";
    }
?>
