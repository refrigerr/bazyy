package com.example.bazyy;

import com.example.bazyy.Main;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyEvent;
import kod.DBConnector;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginController {

    public static int loggedId;
    @FXML
    private Button loginButton;
    @FXML
    private Label zlyLoginLabel;
    @FXML
    private TextField loginInput;
    @FXML
    private PasswordField hasloField;
    static ResultSet haslaSet, loginSet;



    public void login() throws IOException, SQLException {

        Main m = new Main();
        String logindb;
        logindb = loginInput.getText();


        if (!logindb.isEmpty()){
            haslaSet = DBConnector.daneStatement.executeQuery("select haslo from pracownik_szpitala where id_pracownika = "+ logindb);

            String haslozBazy = "";
            haslaSet.next();
            haslozBazy = haslaSet.getString("haslo");

            loginSet = DBConnector.daneStatement.executeQuery("select id_pracownika from pracownik_szpitala where id_pracownika = " + logindb);
            String loginzBazy = "";
            if(loginSet.next())
                loginzBazy = loginSet.getString("id_pracownika");

            if((hasloField.getText().equals(haslozBazy))&& logindb.equals(loginzBazy)){
                loggedId = Integer.parseInt(loginInput.getText());
                m.changeSceneLogged("mainView.fxml");
            }
        }

        else
            zlyLoginLabel.setText("Zły login lub hasło!");

    }

    public void loginWithEnter(KeyEvent keyEvent) {
    }
}