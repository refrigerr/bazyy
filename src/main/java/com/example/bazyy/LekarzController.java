package com.example.bazyy;

import javafx.animation.PauseTransition;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;
import javafx.util.Duration;
import kod.Utils;

import java.net.URL;
import java.util.*;

public class LekarzController implements Initializable {


    @FXML
    private ComboBox opcjeSzukaniaComboBox;
    @FXML
    private TextField daneDoSzukaniaTextField;

    @FXML
    private Label zalogowanoLabel;
    @FXML
    private Label bladLabel;
    @FXML
    private TableView lekarzTable;

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
        Utils.populateTable(statement,lekarzTable);
    }

    @FXML
    protected void przelaczNaPacjentow() throws Exception
    {
        String statement = "SELECT * FROM obecny_pacjent_dane";
        Utils.populateTable(statement,lekarzTable);
    }

    @FXML
    protected void przelaczNaOddzialy() throws Exception
    {
        String statement = "SELECT * FROM oddzial";
        Utils.populateTable(statement,lekarzTable);
    }

    @FXML
    protected void pokazDokumentacje(ActionEvent event) throws Exception
    {
        Object daneObject = lekarzTable.getSelectionModel().getSelectedItem();
        if(!(daneObject == null))
        {
            String daneCzystyString = daneObject.toString();
            System.out.println(daneCzystyString);
            daneCzystyString = daneCzystyString.substring(1,daneCzystyString.length()-2);
            String[] data = daneCzystyString.split(", ");
            int id=Integer.parseInt(data[0]);
            String imie= data[1], nazwisko=data[2], pesel=data[3];
            //Create view from FXML
            FXMLLoader loader = new FXMLLoader(getClass().getResource("dokumentacjaMedycznaView.fxml"));
            Stage newWindow = new Stage();
            newWindow.setScene(new Scene(loader.load()));
            DokumentacjaMedycznaController dokumentacja = loader.getController();

            dokumentacja.ustawPola(id,imie, nazwisko, pesel);
            newWindow.setTitle("Dokumentacja medyczna");
            newWindow.show();
        }
        else
        {
            Utils.showErrorMessage(bladLabel, "Wybierz pacjenta z listy!");
        }
    }

    @FXML
    protected void wypiszPacjenta() throws Exception
    {

    }

    @FXML
    protected void wystawAktZgonu(ActionEvent event) throws Exception
    {
        Object daneObject = lekarzTable.getSelectionModel().getSelectedItem();
        if(!(daneObject == null))
        {
            String daneCzystyString = daneObject.toString();
            System.out.println(daneCzystyString);
            daneCzystyString = daneCzystyString.substring(1,daneCzystyString.length()-2);
            String[] data = daneCzystyString.split(", ");
            int id=Integer.parseInt(data[0]);
            String imie= data[1], nazwisko=data[2], pesel=data[3];
            //Create view from FXML
            FXMLLoader loader = new FXMLLoader(getClass().getResource("AktZgonuView.fxml"));
            Stage newWindow = new Stage();
            newWindow.setScene(new Scene(loader.load()));
            AktZgonuController nowyZgon = loader.getController();

            nowyZgon.ustawPola(id, imie, nazwisko, pesel);
            newWindow.setTitle("Wystawianie Aktu Zgonu");
            newWindow.show();
        }
        else
        {
            Utils.showErrorMessage(bladLabel, "Wybierz pacjenta z listy!");
        }

    }

    @FXML
    protected void pokazDanePacjenta(ActionEvent event) throws Exception
    {
        PracownikSzpitalaController.danePacjenta(lekarzTable,bladLabel);
//        Object daneObject = lekarzTable.getSelectionModel().getSelectedItem();
//        if(!(daneObject == null)) {
//
//            String daneCzystyString = daneObject.toString();
//            System.out.println(daneCzystyString);
//            daneCzystyString = daneCzystyString.substring(1,daneCzystyString.length()-2);
//            String[] data = daneCzystyString.split(", ");
//            //int id=Integer.parseInt(data[0]);
//            String imie= data[0], nazwisko=data[1], pesel=data[2];
//            //Create Stage
//            Stage newWindow = new Stage();
//            newWindow.setTitle("Dane Pacjenta");
//            //Create view from FXML
//            FXMLLoader loader = new FXMLLoader(getClass().getResource("danePacjentaView.fxml"));
//            //Set view in window
//            newWindow.setScene(new Scene(loader.load()));
//
//            DanePacjentaController danePacjenta = loader.getController();
//            danePacjenta.ustawPola(imie, nazwisko, pesel);
//
//            //Launch
//            newWindow.show();
//        }
//        else
//        {
//            Utils.showErrorMessage(bladLabel, "Wybierz pacjenta z listy!");
//        }
    }
}
