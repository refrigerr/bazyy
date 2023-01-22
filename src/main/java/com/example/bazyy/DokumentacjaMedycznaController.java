package com.example.bazyy;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TableView;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;

public class DokumentacjaMedycznaController {

    @FXML
    private TextField badanieTextField;

    @FXML
    private TextArea diagnozaTextArea;

    @FXML
    private TableView<?> dokumentacjaTableView;

    @FXML
    private Label imieLabel;

    @FXML
    private Label nazwiskoLabel;

    @FXML
    private Label peselLabel;

    @FXML
    void dodajWpis(ActionEvent event) {

    }

}