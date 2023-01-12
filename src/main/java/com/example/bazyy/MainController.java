package com.example.bazyy;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import kod.PracownikSzpitala;

import java.io.IOException;

public class MainController {
    public Button test;
    @FXML
    private Button wylogujButton;
    @FXML
    private Label imieLabel;

    public MainController() {

    }

    public void wyloguj(ActionEvent actionEvent) throws IOException {
        Main m = new Main();
        m.changeSceneLoggedOut("loginView.fxml");
    }

    public void test(ActionEvent actionEvent) {
        imieLabel.setText(PracownikSzpitala.danePracownika(LoginController.loggedId));
    }
}
