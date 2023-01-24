package com.example.bazyy;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.stage.Stage;

import java.net.URL;
import java.util.ResourceBundle;

public class AktZgonuController implements Initializable {
    private int id;

    @FXML
    private Label imieLabel;

    @FXML
    private Label nazwiskoLabel;
    @FXML
    private Label peselLabel;
    @FXML
    private TextField przyczynaTextField;
    @FXML
    private Button anulujButton;
    @FXML
    private Button zatwierdzButton;

    @FXML
    protected void anuluj(ActionEvent event) throws Exception
    {
        Stage stage = (Stage) anulujButton.getScene().getWindow();
        stage.close();
    }
    @FXML
    public void initialize(URL location, ResourceBundle resources) {
    }

    @FXML
    protected void zatwierdz(ActionEvent event) throws Exception
    {
        Stage stage = (Stage) zatwierdzButton.getScene().getWindow();
        stage.close();
    }

    public void ustawPola(String imie, String nazwisko, String pesel, int id)
    {

        imieLabel.setText(imie);

        nazwiskoLabel.setText(nazwisko);

        peselLabel.setText(pesel);
        this.id = id;
    }
}
