package com.example.bazyy;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.stage.Stage;
import kod.Utils;

import java.net.URL;
import java.util.ResourceBundle;

public class PielegniarkaController implements Initializable {
    @FXML
    private ComboBox opcjeSzukaniaComboBox;
    @FXML
    private TextField daneDoSzukaniaTextField;
    @FXML
    private Label zalogowanoLabel;
    @FXML
    private TableView pielegniarkaTable;

    String szukanie[] = {"Imię", "Nazwisko", "PESEL"};

    public void zaloguj(String imie, String nazwisko)
    {
        zalogowanoLabel.setText(imie+" "+nazwisko);
    }

    @FXML
    public void initialize(URL location, ResourceBundle resources) {
        opcjeSzukaniaComboBox.getItems().addAll(szukanie);
    }

    @FXML
    protected void wyloguj(ActionEvent event) throws Exception
    {
        // szablon do zmiany sceny
        FXMLLoader loader = new FXMLLoader(getClass().getResource("loginView.fxml"));
        Parent root = loader.load();
        // miejsce na wywyoływanie funkcji z tej drugiej sceny
        SceneSwitching.sceneSwitch(loader, event, root);
        // koniec szablonu
    }

    @FXML
    protected void szukaj() throws Exception
    {
        String input = "'"+daneDoSzukaniaTextField.getText()+"'";
        String tableColumn;
        switch ((String) opcjeSzukaniaComboBox.getValue()){
            case "Imię":
                tableColumn = "imie";
                break;
            case "Nazwisko":
                tableColumn = "nazwisko";
                break;
            case "PESEL":
                tableColumn = "pesel";
                break;
            // case "Nr telefonu":
            //    tableColumn = "imie";
            //    break;
            default:
                return;


        }
        String statement = "SELECT * FROM obecny_pacjent_dane where "+tableColumn+" = "+input;
        Utils.populateTable(statement,pielegniarkaTable);
    }

    @FXML
    protected void przelaczNaPacjentow() throws Exception
    {
        String statement = "SELECT * FROM obecny_pacjent_dane";
        Utils.populateTable(statement,pielegniarkaTable);
    }

    @FXML
    protected void przelaczNaOddzialy() throws Exception
    {
        String statement = "SELECT * FROM oddzial";
        Utils.populateTable(statement,pielegniarkaTable);
    }

    @FXML
    protected void pokazDanePacjenta(ActionEvent event) throws Exception
    {
        //Create Stage
        Stage newWindow = new Stage();
        newWindow.setTitle("Dane Pacjenta");
        //Create view from FXML
        FXMLLoader loader = new FXMLLoader(getClass().getResource("danePacjentaView.fxml"));
        //Set view in window
        newWindow.setScene(new Scene(loader.load()));
        //Launch
        newWindow.show();
    }


}
