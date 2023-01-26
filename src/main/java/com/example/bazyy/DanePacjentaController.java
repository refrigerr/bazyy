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
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class DanePacjentaController implements Initializable {

    public boolean czyJuzJest;
    public String idPacjenta;
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

    public void setCzyJuzJest(boolean czyJuzJest) {
        this.czyJuzJest = czyJuzJest;
    }

    @FXML
    public void initialize(URL location, ResourceBundle resources) {
        grupaKrwiComboBox.getItems().addAll(grupyKrwi);
        plecComboBox.getItems().addAll("Kobieta", "Mężczyzna");
    }

    public void ustawPola(String id) throws SQLException {

        idPacjenta = id;
        ResultSet danePacjentaSet = DBConnector.daneStatement.executeQuery("Select * from pacjent_wszystkie_dane where id_pacjenta =" + id + ";");
        String telefonySQLQuery = "Select telefon.nr_telefonu from osoba join kontakt on osoba.id_osoby = kontakt.id_osoby" +
                " join telefon on kontakt.id_numeru_telefonu = telefon.id_numeru_telefonu " +
                "join pacjent on osoba.id_osoby = pacjent.id_osoby  where pacjent.id_pacjenta =  " + id + ";";
        if(danePacjentaSet.next()) {
            imieTextField.setText(danePacjentaSet.getString("imie"));
            nazwiskoTextField.setText(danePacjentaSet.getString("nazwisko"));
            peselTextField.setText(danePacjentaSet.getString("pesel"));
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
        if(!czyJuzJest)
        {
            String imie = imieTextField.getText();
            String nazwisko = nazwiskoTextField.getText();
            int plec = plecComboBox.getSelectionModel().getSelectedIndex();
            System.out.printf(String.valueOf(plec));
            String pesel = peselTextField.getText();
            String kodPocztowy = kodPocztowyTextField.getText();
            String miasto = miastoTextField.getText();
            String ulica = ulicaTextField.getText();
            String nrBudynku = nrBudynkuTextField.getText();
            String nrLokalu = nrLokaluTextField.getText();
            String grupaKrwi = (String) grupaKrwiComboBox.getValue();
            int grupaKrwi_id = switch (grupaKrwi) {
                case "A Rh+" -> 2;
                case "B Rh+" -> 4;
                case "B Rh-" -> 3;
                case "AB Rh+" -> 8;
                case "AB Rh-" -> 7;
                case "0 Rh+" -> 6;
                case "0 Rh-" -> 5;
                default -> 1;
            };
            String query = "{call dodajPacjenta(?,?,?,?,?,?,?,?,?,?)}";
            CallableStatement statement = DBConnector.dane.prepareCall(query);
            statement.setString(1, imie);
            statement.setString(2, nazwisko);
            statement.setInt(3, plec);
            statement.setString(4, pesel);
            statement.setInt(5, grupaKrwi_id);
            statement.setString(6, kodPocztowy);
            statement.setString(7, miasto);
            statement.setString(8, ulica);
            statement.setString(9, nrBudynku);
            statement.setString(10, nrLokalu);
            statement.execute();

            query = "";
        }
        else
        {   //tu dajemy apdate, where id_pacjenta = <to id co mamy>

        }
    }
}
