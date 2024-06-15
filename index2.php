<!DOCTYPE html>
<html>
<meta lang="pl_PL">
<meta charset="UTF-8">
<head>
<title>Pracownicy</title>
<?php

if(isset($_POST['personalbest']))
{
	if(empty($_POST['personalbest']))
	{
		echo "Nie podano nazwy klasy!";
	} 
	else 
	{
		try {
			
			require_once "dbconnect.php";
			
			$conn = new mysqli($host, $user, $pass, $db);
			
			if ($conn->connect_errno) 
			{
				throw new Exception($conn->error);
			}
			else 
			{
				
				$conn->set_charset("utf8");
				
				$personalbest = $_POST['personalbest'];
				
				$q = "SELECT id_skoczka, imie, drugie_imie, nazwisko, kraj, dlugosc_skoku, miejsce_ustanowienia from personalbest WHERE nazwa='$personalbest'";
				
				$result = $conn->query($q);

				if (!$result) 
				{
					throw new Exception($conn->error);
				} else {
				
					$ile = $result->num_rows;
					
					if($ile == 0)
					{
						echo "Nie ma takiej klasy w bazie!";
					} 
					else 
					{	
						
echo<<<END

	<table>
		<thead>
			<tr><th>Imię</th>
			<th>Nazwisko</th>
			<th>Średnia ocen</th></tr>
		</thead>
		<tbody>
		
END;
						$suma = 0;
				
						while($obj = $result->fetch_object())
						{
							
							echo "\r\n\t\t\t<tr><td>".$obj->Imie."</td><td>".$obj->Nazwisko."</td><td>".$obj->Srednia_ocen."</td></tr>";
							
							$suma += $obj->Srednia_ocen;
						
						}
						
						$result->free();

echo<<<END
\r\n
		</tbody>
	</table>

END;
							
						echo "\t<p>Średnia klasy: ".round($suma/$ile,2)."</p>";
						
						$conn->close();	
						
					}
	
				}
				
			}

		}
		catch(Exception $error) 
		{
			echo "Problemy z odczytem danych!";
		}
	}
}

?>

</body>
</html>