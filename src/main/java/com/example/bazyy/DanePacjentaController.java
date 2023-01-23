package com.example.bazyy;

import com.almasb.fxgl.app.FXGLApplication;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.stage.Stage;

import java.net.URL;
import java.util.ResourceBundle;

public class DanePacjentaController implements Initializable {

    @FXML
    private Button anulujButton;

    @FXML
    private ComboBox grupaKrwiComboBox;

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
    private TableView numerTelefonuTableView;

    @FXML
    private TextField numerTelefonuTextField;

    @FXML
    private TextField peselTextField;

    @FXML
    private ComboBox plecComboBox;

    @FXML
    private TextField ulicaTextField;

    String grupyKrwi[] = {"A Rh+", "A Rh-", "B Rh+", "B Rh-", "AB Rh+", "AB Rh-", "0 Rh+", "0 Rh-"};

    @FXML
    public void initialize(URL location, ResourceBundle resources) {
        grupaKrwiComboBox.getItems().addAll(grupyKrwi);
        plecComboBox.getItems().addAll("Kobieta", "Mężczyzna");
    }

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
