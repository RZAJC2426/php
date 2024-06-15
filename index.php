<!DOCTYPE html>
<html>
<meta lang="pl_PL">
<meta charset="UTF-8">
<meta http-equiv="Content-type" content="text/html;charset=ISO-8859-2">
<head>
<title>Pracownicy</title>
<?php

	if(isset($_POST["kraj"]))
	{
		
		if(empty($_POST["kraj"]))
		{
			echo '<span style="color:yellow;">Nie podano nazwy kraju!</span>';
		}
		else
		{
			require_once "verbindung.php";
			
			$conn = mysqli_connect($host, $user, $pass, $db) or die("Błąd połączenia!");
			
			mysqli_set_charset($conn, "utf8");
			
			$kraj = $_POST["kraj"];		
			
			$q = "SELECT  `id`,CONCAT_WS('   ','   ',`imie`,`drugie_imie`),upper(`nazwisko`),`kraj`,`dlugosc_skoku`,`miejsce_ustanowienia` FROM `personalbest` WHERE `kraj`='$kraj'";
			
			$result = mysqli_query($conn, $q) or die("Problemy z odczytem danych!");
			
			$ile = mysqli_num_rows($result);
			
			if($ile == 0)
			{
				echo '<span style="color:red;">Nie ma takiego kraju!</span>';
			}
			else
			{
				
echo<<<END

	<table>
		<thead>
			<tr>
				<th>id</th>
				<th>imie</th>
				<th>drugie_Imie</th>
				<th>nazwisko</th>
				<th>kraj</th>
				<th>dlugosc skoku</th>
				<th>miejsce_ustanowienia</th>
				
			</tr>
		</thead>
		<tbody>
		
END;
				$suma = 0;
				
				while($row = mysqli_fetch_assoc($result))
				{
					echo "\r\n\t\t\t<tr>";
					foreach($row as $col)
					{
						echo "<td colspan>$col</td>";
						
						

					}
					echo "</tr>";
					
					$suma += $row['dlugosc_skoku'];
					
					//echo "\r\n\t\t\t<tr><td>".$row['id_skoczka']."</td><td>".$row['imie']."</td><td>".$row['drugie_imie']."</td></tr>".$row['nazwisko']"</td></tr>".$row['kraj']"</td></tr>".$row['dlugosc_skoku']"</td></tr>".$row['miejsce_ustanowienia']"</td></tr>".;
				}
echo<<<END
\r\n
		</tbody>
	</table>
END;
			
				echo "<p>Średnia skoku: ".round($suma/$ile, 2)."</p>";
			
			}
			
			mysqli_close($conn);			
			
		}
		
		
	}
	

	
?>
</head>
<style>
@font-face
{
font-family: 'URW DIN medium';

src:url(URWDIN-Medium.ttf);
}
BODY {background-COLOR:#063970;
COLOR:white;
font-family:'URW DIN medium';
font-size:20px;}
th,td{border:5px solid;
border-image-slice:1;
border-left: 9px;
border-top:0px;
border-bottom:0px;
border-image-source: linear-gradient(0deg, rgba(238,238,238,1) 31%, rgba(255,255,255,1) 49%, rgba(238,238,238,1) 65%);

background-image:linear-gradient(0deg, rgba(4,19,82,1) 25%, rgba(10,23,61,1) 63%, rgba(106,113,144,1) 100%);}

</style>
<body>
<form action="index.php" method="POST">
<label>
Wywietl wszystkie kraje <input type="text" NAME="kraj"></INPUT>
</label>
<input type="submit" value="Wyswietl wszystkie kraje"></INPUT>
</form>
</body>
</html>