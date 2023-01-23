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

import java.net.URL;
import java.util.ResourceBundle;

public class LekarzController implements Initializable {

    @FXML
    private ComboBox opcjeSzukaniaComboBox;
    @FXML
    private TextField daneDoSzukaniaTextField;

    @FXML
    private Label zalogowanoLabel;

    @FXML
    private TableView lekarzTable;

    String szukanie[] = {"Imię", "Nazwisko", "PESEL", "Nr telefonu"};

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

    }

    @FXML
    protected void przelaczNaPacjentow() throws Exception
    {

    }

    @FXML
    protected void przelaczNaOddzialy() throws Exception
    {

    }

    @FXML
    protected void pokazDokumentacje(ActionEvent event) throws Exception
    {
        //Create Stage
        Stage newWindow = new Stage();
        newWindow.setTitle("Dokumentacja Medyczna Pacjenta");
        //Create view from FXML
        FXMLLoader loader = new FXMLLoader(getClass().getResource("dokumentacjaMedycznaView.fxml"));
        //Set view in window
        newWindow.setScene(new Scene(loader.load()));
        //Launch
        newWindow.show();
    }

    @FXML
    protected void wypiszPacjenta() throws Exception
    {

    }

    @FXML
    protected void wystawAktZgonu() throws Exception
    {
        //Create Stage
        Stage newWindow = new Stage();
        newWindow.setTitle("Wystawianie aktu zgonu");
        //Create view from FXML
        FXMLLoader loader = new FXMLLoader(getClass().getResource("aktZgonuView.fxml"));
        //Set view in window
        newWindow.setScene(new Scene(loader.load()));
        //Launch
        newWindow.show();
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
