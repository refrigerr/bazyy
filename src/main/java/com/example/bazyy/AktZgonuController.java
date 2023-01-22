package com.example.bazyy;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.stage.Stage;

public class AktZgonuController {

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
    protected void zatwierdz(ActionEvent event) throws Exception
    {
        Stage stage = (Stage) zatwierdzButton.getScene().getWindow();
        stage.close();
    }
}
