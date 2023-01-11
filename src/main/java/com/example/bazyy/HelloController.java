package com.example.bazyy;

import javafx.fxml.FXML;
import javafx.scene.control.Label;
import kod.DBConnector;
import kod.Logowanie;
import kod.PracownikIzbyPrzyjec;
import kod.PracownikSzpitala;

import java.io.BufferedReader;
import java.sql.SQLException;

public class HelloController {

    @FXML
    protected void onButtonClick2() throws SQLException {
        DBConnector.dane = DBConnector.connect();
        DBConnector.daneStatement = DBConnector.dane.createStatement();
        PracownikSzpitala pracownikSzpitala = new PracownikSzpitala(1);
        pracownikSzpitala.iluPacjentow();
    }
}