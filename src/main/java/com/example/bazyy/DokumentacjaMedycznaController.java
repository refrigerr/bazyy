package com.example.bazyy;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TableView;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import kod.DBConnector;
import kod.Utils;

import java.sql.SQLException;

public class DokumentacjaMedycznaController {

    int id;
    @FXML
    private TextField badanieTextField;

    @FXML
    private TextArea diagnozaTextArea;

    @FXML
    private TableView dokumentacjaTableView;

    @FXML
    private Label imieLabel;

    @FXML
    private Label nazwiskoLabel;

    @FXML
    private Label peselLabel;

    @FXML
    void dodajWpis(ActionEvent event)throws SQLException {
        String badanie = badanieTextField.getText();
        String diagnoza = diagnozaTextArea.getText();
        String zapytanie = " insert into dokumentacja_medyczna(id_pacjenta,przeprowadzone_badanie,data_badania,diagnoza,id_lekarza)" +
                "    values("+id+", '"+badanie+"' ,current_date(), '"+diagnoza+"' ,null);";
        DBConnector.daneStatement.executeUpdate(zapytanie);
        String zapytanie2 = "Select imie_pacjenta, nazwisko_pacjenta, badanie, data_badania, diagnoza from szpital.pacjent_dokumentacja where id = '"+id+"'";
        Utils.populateTable(zapytanie2,dokumentacjaTableView);
    }
    public void ustawPola(int id,String imie, String nazwisko, String pesel) throws SQLException {
        this.id = id;
        imieLabel.setText(imie);

        nazwiskoLabel.setText(nazwisko);

        peselLabel.setText(pesel);
        String zapytanie = "Select imie_pacjenta, nazwisko_pacjenta, badanie, data_badania, diagnoza from szpital.pacjent_dokumentacja where id = '"+id+"'";

        Utils.populateTable(zapytanie,dokumentacjaTableView);

    }

}