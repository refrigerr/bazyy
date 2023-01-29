package controllers;

import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.stage.Stage;
import kod.Utils;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

public class PracownikIzbyPrzyjecController implements Initializable {

    @FXML
    private ComboBox oddzialyComboBox;

    @FXML
    private Button zatwierdzButton;
    @FXML
    private ComboBox opcjeSzukaniaComboBox;
    @FXML
    private TextField daneDoSzukaniaTextField;
    @FXML
    private Label zalogowanoLabel;
    @FXML
    private Label bladLabel;
    @FXML
    private TableView<ObservableList<String>> pracownikIzbyPrzyjecTable;

    @FXML
    private TableColumn imieTableColumn;

    @FXML
    private TableColumn nazwiskoTableColumn;

    @FXML
    private TableColumn nrLozkaTableColumn;

    @FXML
    private TableColumn nrPokojuTableColumn;

    @FXML
    private TableColumn oddzialTableColumn;

    @FXML
    private TableColumn peselTableColumn;




    String oddzialy[] = {"oddzial", "kardiologia", "onkologia", "ratunkowy", "chirurgia", "neurologiczny"};
    String szukanie[] = {"Imię", "Nazwisko", "PESEL"};

    public void zaloguj(String imie, String nazwisko)
    {
        zalogowanoLabel.setText(imie+" "+nazwisko);
    }

    @FXML
    public void initialize(URL location, ResourceBundle resources) {

        oddzialyComboBox.getItems().addAll(oddzialy);
        opcjeSzukaniaComboBox.getItems().addAll(szukanie);
        try {
            przelaczNaPacjentow();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
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
        Utils.populateTable(statement,pracownikIzbyPrzyjecTable);

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
        String statement = "SELECT * FROM obecny_pacjent_dane";
        Utils.populateTable(statement,pracownikIzbyPrzyjecTable);
    }

    @FXML
    protected void przelaczNaOddzialy() throws Exception
    {
        String statement = "SELECT * FROM oddzial";
        Utils.populateTable(statement,pracownikIzbyPrzyjecTable);

    }

    @FXML
    protected void przelaczNaKadre() throws Exception
    {

        String statement = "SELECT * FROM pracownik_oddzial";
        Utils.populateTable(statement,pracownikIzbyPrzyjecTable);

    }
    @FXML
    protected void przelaczNaWszystkichPacjentow() throws Exception{

        String statement = "Select pacjent.id_pacjenta as id, osoba.imie, osoba.nazwisko, osoba.pesel from osoba join pacjent on osoba.id_osoby = pacjent.id_osoby;";
        Utils.populateTable(statement,pracownikIzbyPrzyjecTable);
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
        oddzialyComboBox.setVisible(true);
        zatwierdzButton.setVisible(true);
    }

    @FXML
    protected void zatwierdz()throws Exception
    {
        oddzialyComboBox.setVisible(false);
        zatwierdzButton.setVisible(false);
    }

    @FXML
    protected void wypiszPacjenta() throws Exception
    {

    }

    @FXML
    protected void pokazDanePacjenta(ActionEvent event) throws Exception
    {
        PracownikSzpitalaController.danePacjenta(pracownikIzbyPrzyjecTable, bladLabel);
        //Create Stage
//        Stage newWindow = new Stage();
//        newWindow.setTitle("Dane Pacjenta");
//        //Create view from FXML
//        FXMLLoader loader = new FXMLLoader(getClass().getResource("danePacjentaView.fxml"));
//        //Set view in window
//        newWindow.setScene(new Scene(loader.load()));
//        //Launch
//        newWindow.show();
    }

    @FXML
    protected void zarejestruj(ActionEvent event) throws IOException {
        //Create Stage
        Stage newWindow = new Stage();
        newWindow.setTitle("Zarejestruj Pacjenta");
        //Create view from FXML
        FXMLLoader loader = new FXMLLoader(getClass().getResource("danePacjentaView.fxml"));
        //Set view in window
        newWindow.setScene(new Scene(loader.load()));
        DanePacjentaController daneController = loader.getController();
        daneController.setCzyJuzJest(false);
        //Launch
        newWindow.show();
    }


}
