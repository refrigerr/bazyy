-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: szpital
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `pacjent_dokumentacja`
--

DROP TABLE IF EXISTS `pacjent_dokumentacja`;
/*!50001 DROP VIEW IF EXISTS `pacjent_dokumentacja`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pacjent_dokumentacja` AS SELECT 
 1 AS `id`,
 1 AS `imie_pacjenta`,
 1 AS `nazwisko_pacjenta`,
 1 AS `badanie`,
 1 AS `data_badania`,
 1 AS `diagnoza`,
 1 AS `imie_lekarza`,
 1 AS `nazwisko_lekarza`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pielegniarki`
--

DROP TABLE IF EXISTS `pielegniarki`;
/*!50001 DROP VIEW IF EXISTS `pielegniarki`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pielegniarki` AS SELECT 
 1 AS `imie`,
 1 AS `nazwisko`,
 1 AS `oddzial`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `new_view`
--

DROP TABLE IF EXISTS `new_view`;
/*!50001 DROP VIEW IF EXISTS `new_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `new_view` AS SELECT 
 1 AS `imie`,
 1 AS `nazwisko`,
 1 AS `oddzial`,
 1 AS `dzien`,
 1 AS `od`,
 1 AS `do`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pacjent_wszystkie_dane`
--

DROP TABLE IF EXISTS `pacjent_wszystkie_dane`;
/*!50001 DROP VIEW IF EXISTS `pacjent_wszystkie_dane`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pacjent_wszystkie_dane` AS SELECT 
 1 AS `id_pacjenta`,
 1 AS `imie`,
 1 AS `nazwisko`,
 1 AS `plec`,
 1 AS `pesel`,
 1 AS `kod_pocztowy`,
 1 AS `miasto`,
 1 AS `ulica`,
 1 AS `nr_budynku`,
 1 AS `nr_lokalu`,
 1 AS `grupa_krwi`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pracownik_oddzial`
--

DROP TABLE IF EXISTS `pracownik_oddzial`;
/*!50001 DROP VIEW IF EXISTS `pracownik_oddzial`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pracownik_oddzial` AS SELECT 
 1 AS `imie`,
 1 AS `nazwisko`,
 1 AS `oddzial`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pracownik_dyzur`
--

DROP TABLE IF EXISTS `pracownik_dyzur`;
/*!50001 DROP VIEW IF EXISTS `pracownik_dyzur`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pracownik_dyzur` AS SELECT 
 1 AS `imie`,
 1 AS `nazwisko`,
 1 AS `oddzial`,
 1 AS `dzien`,
 1 AS `od`,
 1 AS `do`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pacjenci_lezacy`
--

DROP TABLE IF EXISTS `pacjenci_lezacy`;
/*!50001 DROP VIEW IF EXISTS `pacjenci_lezacy`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pacjenci_lezacy` AS SELECT 
 1 AS `imie`,
 1 AS `nazwisko`,
 1 AS `plec`,
 1 AS `pesel`,
 1 AS `oddzial`,
 1 AS `pokoj`,
 1 AS `lozko`,
 1 AS `poczatek`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `obecny_pacjent_dane`
--

DROP TABLE IF EXISTS `obecny_pacjent_dane`;
/*!50001 DROP VIEW IF EXISTS `obecny_pacjent_dane`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `obecny_pacjent_dane` AS SELECT 
 1 AS `id`,
 1 AS `imie`,
 1 AS `nazwisko`,
 1 AS `pesel`,
 1 AS `nazwa_oddzialu`,
 1 AS `nr_pokoju`,
 1 AS `nr_lozka`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `pacjent_dokumentacja`
--

/*!50001 DROP VIEW IF EXISTS `pacjent_dokumentacja`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pacjent_dokumentacja` AS select `p`.`id_pacjenta` AS `id`,`o`.`imie` AS `imie_pacjenta`,`o`.`nazwisko` AS `nazwisko_pacjenta`,`d`.`przeprowadzone_badanie` AS `badanie`,`d`.`data_badania` AS `data_badania`,`d`.`diagnoza` AS `diagnoza`,`oo`.`imie` AS `imie_lekarza`,`oo`.`nazwisko` AS `nazwisko_lekarza` from (((((`dokumentacja_medyczna` `d` left join `pacjent` `p` on((`d`.`id_pacjenta` = `p`.`id_pacjenta`))) left join `osoba` `o` on((`o`.`id_osoby` = `p`.`id_osoby`))) left join `lekarz` `l` on((`d`.`id_lekarza` = `l`.`id_lekarza`))) left join `pracownik_szpitala` `pr` on((`l`.`id_pracownika` = `pr`.`id_pracownika`))) left join `osoba` `oo` on((`pr`.`id_osoby` = `oo`.`id_osoby`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pielegniarki`
--

/*!50001 DROP VIEW IF EXISTS `pielegniarki`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pielegniarki` AS select `o`.`imie` AS `imie`,`o`.`nazwisko` AS `nazwisko`,`od`.`nazwa_oddzialu` AS `oddzial` from (((`pielegniarka` `p` left join `pracownik_szpitala` `pr` on((`p`.`id_pracownika` = `pr`.`id_pracownika`))) left join `osoba` `o` on((`pr`.`id_osoby` = `o`.`id_osoby`))) left join `oddzial` `od` on((`pr`.`id_oddzialu` = `od`.`id_oddzialu`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view`
--

/*!50001 DROP VIEW IF EXISTS `new_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view` AS select `os`.`imie` AS `imie`,`os`.`nazwisko` AS `nazwisko`,`od`.`nazwa_oddzialu` AS `oddzial`,`dr`.`dzien_dyzuru` AS `dzien`,`dr`.`godzina_rozpoczecia` AS `od`,`dr`.`godzina_zakonczenia` AS `do` from ((((`dyzur` `dr` left join `grafik` `g` on((`dr`.`id_dyzuru` = `g`.`id_dyzuru`))) left join `pracownik_szpitala` `p` on((`g`.`id_pracownika` = `p`.`id_pracownika`))) left join `oddzial` `od` on((`p`.`id_oddzialu` = `od`.`id_oddzialu`))) left join `osoba` `os` on((`p`.`id_osoby` = `os`.`id_osoby`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pacjent_wszystkie_dane`
--

/*!50001 DROP VIEW IF EXISTS `pacjent_wszystkie_dane`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pacjent_wszystkie_dane` AS select `pacjent`.`id_pacjenta` AS `id_pacjenta`,`osoba`.`imie` AS `imie`,`osoba`.`nazwisko` AS `nazwisko`,`osoba`.`plec` AS `plec`,`osoba`.`pesel` AS `pesel`,`adres`.`kod_pocztowy` AS `kod_pocztowy`,`adres`.`miasto` AS `miasto`,`adres`.`ulica` AS `ulica`,`adres`.`nr_budynku` AS `nr_budynku`,`adres`.`nr_lokalu` AS `nr_lokalu`,`grupa_krwi`.`grupa_krwi` AS `grupa_krwi` from (((`osoba` join `pacjent` on((`osoba`.`id_osoby` = `pacjent`.`id_osoby`))) join `adres` on((`pacjent`.`id_pacjenta` = `adres`.`id_pacjenta`))) join `grupa_krwi` on((`pacjent`.`id_grupa_krwi` = `grupa_krwi`.`id_grupa_krwi`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pracownik_oddzial`
--

/*!50001 DROP VIEW IF EXISTS `pracownik_oddzial`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pracownik_oddzial` AS select `oso`.`imie` AS `imie`,`oso`.`nazwisko` AS `nazwisko`,`odd`.`nazwa_oddzialu` AS `oddzial` from ((`pracownik_szpitala` `pr` join `osoba` `oso` on((`pr`.`id_osoby` = `oso`.`id_osoby`))) join `oddzial` `odd` on((`pr`.`id_oddzialu` = `odd`.`id_oddzialu`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pracownik_dyzur`
--

/*!50001 DROP VIEW IF EXISTS `pracownik_dyzur`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pracownik_dyzur` AS select `os`.`imie` AS `imie`,`os`.`nazwisko` AS `nazwisko`,`od`.`nazwa_oddzialu` AS `oddzial`,`dr`.`dzien_dyzuru` AS `dzien`,`dr`.`godzina_rozpoczecia` AS `od`,`dr`.`godzina_zakonczenia` AS `do` from ((((`pracownik_szpitala` `pr` join `osoba` `os` on((`os`.`id_osoby` = `pr`.`id_osoby`))) join `oddzial` `od` on((`pr`.`id_oddzialu` = `od`.`id_oddzialu`))) join `grafik` `gr` on((`gr`.`id_pracownika` = `pr`.`id_pracownika`))) join `dyzur` `dr` on((`gr`.`id_dyzuru` = `dr`.`id_dyzuru`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pacjenci_lezacy`
--

/*!50001 DROP VIEW IF EXISTS `pacjenci_lezacy`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pacjenci_lezacy` AS select `o`.`imie` AS `imie`,`o`.`nazwisko` AS `nazwisko`,`o`.`plec` AS `plec`,`o`.`pesel` AS `pesel`,`od`.`nazwa_oddzialu` AS `oddzial`,`gd`.`nr_pokoju` AS `pokoj`,`gd`.`nr_lozka` AS `lozko`,`gd`.`poczatek` AS `poczatek` from (((`pacjent` `p` left join `osoba` `o` on((`p`.`id_osoby` = `o`.`id_osoby`))) left join `gdzie_kto_lezal` `gd` on((`p`.`id_pacjenta` = `gd`.`id_pacjenta`))) left join `oddzial` `od` on((`gd`.`id_oddzialu` = `od`.`id_oddzialu`))) where (`gd`.`koniec` is null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `obecny_pacjent_dane`
--

/*!50001 DROP VIEW IF EXISTS `obecny_pacjent_dane`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `obecny_pacjent_dane` AS select `pacjent`.`id_pacjenta` AS `id`,`osoba`.`imie` AS `imie`,`osoba`.`nazwisko` AS `nazwisko`,`osoba`.`pesel` AS `pesel`,`oddzial`.`nazwa_oddzialu` AS `nazwa_oddzialu`,`gdzie_kto_lezal`.`nr_pokoju` AS `nr_pokoju`,`gdzie_kto_lezal`.`nr_lozka` AS `nr_lozka` from (((`osoba` join `pacjent` on((`osoba`.`id_osoby` = `pacjent`.`id_osoby`))) join `gdzie_kto_lezal` on((`pacjent`.`id_pacjenta` = `gdzie_kto_lezal`.`id_pacjenta`))) join `oddzial` on((`gdzie_kto_lezal`.`id_oddzialu` = `oddzial`.`id_oddzialu`))) where (`gdzie_kto_lezal`.`koniec` is null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-29 20:05:49
