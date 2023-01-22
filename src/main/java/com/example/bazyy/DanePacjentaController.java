package com.example.bazyy;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.stage.Stage;

public class DanePacjentaController {

    @FXML
    private Button anulujButton;

    @FXML
    private ComboBox<?> grupaKrwiComboBox;

    @FXML
    private TextField imieTextField;

    @FXML
    private TextField kodPocztowyTextField;

    @FXML
    private TextField miastoTextField;

    @FXML
    private TextField nazwiskoTextField;

    @FXML
    private TextField nrBudynkuTextField;

    @FXML
    private TextField nrLokaluTextField;

    @FXML
    private TableView<?> numerTelefonuTableView;

    @FXML
    private TextField numerTelefonuTextField;

    @FXML
    private TextField peselTextField;

    @FXML
    private ComboBox<?> plecComboBox;

    @FXML
    private TextField ulicaTextField;

    @FXML
    protected void anuluj(ActionEvent event) throws Exception
    {
        Stage stage = (Stage) anulujButton.getScene().getWindow();
        stage.close();
    }

    @FXML
    protected void dodaj(ActionEvent event) throws Exception
    {

    }

    @FXML
    protected void usun(ActionEvent event) throws Exception
    {

    }

    @FXML
    protected void zapisz(ActionEvent event) throws Exception
    {

    }
}
