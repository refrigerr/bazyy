package com.example.bazyy;

import javafx.beans.property.SimpleStringProperty;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.stage.Stage;
import javafx.util.Callback;
import kod.DBConnector;

import java.net.URL;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
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
    String szukanie[] = {"Imię", "Nazwisko", "PESEL", "Nr telefonu"};


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
        ResultSet pacjentTabelaSet;
        String statement = "SELECT * FROM obecny_pacjent_dane";
        pacjentTabelaSet = DBConnector.daneStatement.executeQuery(statement);

        for(int i=0 ; i<pacjentTabelaSet.getMetaData().getColumnCount(); i++){
            //We are using non property style for making dynamic table
            final int j = i;
            TableColumn col = new TableColumn(pacjentTabelaSet.getMetaData().getColumnName(i+1));
            col.setCellValueFactory(new Callback<TableColumn.CellDataFeatures<ObservableList,String>, ObservableValue<String>>(){
                public ObservableValue<String> call(TableColumn.CellDataFeatures<ObservableList, String> param) {
                    return new SimpleStringProperty(param.getValue().get(j).toString());
                }
            });

            pracownikIzbyPrzyjecTable.getColumns().addAll(col);
        }

        ObservableList<ObservableList<String>> data= FXCollections.observableArrayList();

        while(pacjentTabelaSet.next()){
            //Iterate Row
            ObservableList<String> row = FXCollections.observableArrayList();
            for(int i=1 ; i<=pacjentTabelaSet.getMetaData().getColumnCount(); i++){
                //Iterate Column
                row.add(pacjentTabelaSet.getString(i));
            }
            data.add(row);



        }
        pracownikIzbyPrzyjecTable.setItems(data);
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
