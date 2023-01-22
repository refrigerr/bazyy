package com.example.bazyy;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.stage.Stage;

public class PracownikIzbyPrzyjecController{

    @FXML
    private ComboBox<?> oddzialyComboBox;

    @FXML
    private Button zatwierdzButton;
    @FXML
    private ComboBox opcjeSzukaniaComboBox;
    @FXML
    private TextField daneDoSzukaniaTextField;
    @FXML
    private TableView<?> pracownikIzbyPrzyjecTable;
    @FXML
    private Label zalogowanoLabel;
    @FXML
    protected void szukaj() throws Exception
    {

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
    protected void przelaczNaPacjentow() throws Exception
    {

    }

    @FXML
    protected void przelaczNaOddzialy() throws Exception
    {

    }

    @FXML
    protected void przelaczNaKadre() throws Exception
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
    protected void wpiszPacjenta() throws Exception
    {

    }

    @FXML
    protected void wypiszPacjenta() throws Exception
    {

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

    @FXML
    public void zatwierdz(ActionEvent event) {
    }
}
