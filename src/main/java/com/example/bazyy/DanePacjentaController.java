package com.example.bazyy;

import com.almasb.fxgl.app.FXGLApplication;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.stage.Stage;
import kod.DBConnector;
import kod.Utils;

import java.net.URL;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class DanePacjentaController implements Initializable {

    @FXML
    private Button anulujButton;

    @FXML
    private ComboBox grupaKrwiComboBox;

    @FXML
    private TextField imieTextField;

    @FXML
    private TextField kodPocztowyTextField;

    @FXML
    private TextField miastoTextField;

    @FXML
    private TextField nazwiskoTextField;

    @FXML
    private TextField nrBudynkuTextField;

    @FXML
    private TextField nrLokaluTextField;

    @FXML
    private TableView numerTelefonuTableView;

    @FXML
    private TextField numerTelefonuTextField;

    @FXML
    private TextField peselTextField;

    @FXML
    private ComboBox plecComboBox;

    @FXML
    private TextField ulicaTextField;

    String grupyKrwi[] = {"A Rh+", "A Rh-", "B Rh+", "B Rh-", "AB Rh+", "AB Rh-", "0 Rh+", "0 Rh-"};

    @FXML
    public void initialize(URL location, ResourceBundle resources) {
        grupaKrwiComboBox.getItems().addAll(grupyKrwi);
        plecComboBox.getItems().addAll("Kobieta", "Mężczyzna");
    }

    public void ustawPola(String imie, String nazwisko, String pesel) throws SQLException {
        imieTextField.setText(imie);
        nazwiskoTextField.setText(nazwisko);
        peselTextField.setText(pesel);
        ResultSet danePacjentaSet = DBConnector.daneStatement.executeQuery("Select * from pacjent_wszystkie_dane where pesel =" + pesel + ";");
        String telefonySQLQuery = "Select nr_telefonu from osoba join kontakt on osoba.id_osoby = kontakt.id_osoby " +
                "join telefon on kontakt.id_numeru_telefonu = telefon.id_numeru_telefonu where osoba.pesel = " + pesel +";";
        if(danePacjentaSet.next()) {
            plecComboBox.setPromptText(danePacjentaSet.getString("plec"));
            kodPocztowyTextField.setText(danePacjentaSet.getString("kod_pocztowy"));
            miastoTextField.setText(danePacjentaSet.getString("miasto"));
            ulicaTextField.setText(danePacjentaSet.getString("ulica"));
            nrBudynkuTextField.setText(danePacjentaSet.getString("nr_budynku"));
            nrLokaluTextField.setText(danePacjentaSet.getString("nr_lokalu"));
            grupaKrwiComboBox.setPromptText(danePacjentaSet.getString("grupa_krwi"));
        }
        Utils.populateTable(telefonySQLQuery,numerTelefonuTableView);
    }

    @FXML
    protected void anuluj(ActionEvent event) throws Exception
    {
        Stage stage = (Stage) anulujButton.getScene().getWindow();
        stage.close();
    }

    @FXML
    protected void dodaj(ActionEvent event) throws Exception
    {

    }

    @FXML
    protected void usun(ActionEvent event) throws Exception
    {

    }

    @FXML
    protected void zapisz(ActionEvent event) throws Exception
    {

    }
}

/*
    CREATE
            ALGORITHM = UNDEFINED
    DEFINER = `root`@`localhost`
        SQL SECURITY DEFINER
        VIEW `pacjent_wszystkie_dane` AS
        SELECT
        `osoba`.`imie` AS `imie`,
        `osoba`.`nazwisko` AS `nazwisko`,
        `osoba`.`plec` AS `plec`,
        `osoba`.`pesel` AS `pesel`,
        `adres`.`kod_pocztowy` AS `kod_pocztowy`,
        `adres`.`miasto` AS `miasto`,
        `adres`.`ulica` AS `ulica`,
        `adres`.`nr_budynku` AS `nr_budynku`,
        `adres`.`nr_lokalu` AS `nr_lokalu`,
        `grupa_krwi`.`grupa_krwi` AS `grupa_krwi`
        FROM
        (((`osoba`
        JOIN `pacjent` ON ((`osoba`.`id_osoby` = `pacjent`.`id_osoby`)))
        JOIN `adres` ON ((`pacjent`.`id_pacjenta` = `adres`.`id_pacjenta`)))
        JOIN `grupa_krwi` ON ((`pacjent`.`id_grupa_krwi` = `grupa_krwi`.`id_grupa_krwi`)))

 */