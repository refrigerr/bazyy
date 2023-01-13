package com.example.bazyy;

import com.example.bazyy.Main;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyEvent;
import javafx.stage.Stage;
import kod.DBConnector;
import kod.PracownikSzpitala;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginController {

    private PracownikSzpitala zalogowanyPracownik;
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
        String haslozBazy;
        logindb = loginInput.getText();
        haslozBazy = hasloField.getText();


        if (!(logindb.isEmpty() || haslozBazy.isEmpty())){
            haslaSet = DBConnector.daneStatement.executeQuery("select haslo from pracownik_szpitala where id_pracownika = "+ logindb);

            haslaSet.next();
            haslozBazy = haslaSet.getString("haslo");

            loginSet = DBConnector.daneStatement.executeQuery("select id_pracownika from pracownik_szpitala where id_pracownika = " + logindb);
            String loginzBazy = "";
            if(loginSet.next())
                loginzBazy = loginSet.getString("id_pracownika");

            if((hasloField.getText().equals(haslozBazy))&& logindb.equals(loginzBazy)){
                zalogowanyPracownik = new PracownikSzpitala(Integer.parseInt(loginInput.getText()));
                FXMLLoader loader = new FXMLLoader();
                loader.setLocation(getClass().getResource("mainView.fxml"));
                Parent pane = loader.load();

                Scene zalogowanoScene = new Scene(pane);


                MainController controller = loader.getController();
                controller.wyswietlZalogowanegoPracownika(zalogowanyPracownik);

                Stage zalogowanoStage = m.getSecondStage();
                zalogowanoStage.setScene(zalogowanoScene);
                zalogowanoStage.setMaximized(true);
                zalogowanoStage.setResizable(true);


            }
            else {
                zlyLoginLabel.setText("Zły login lub hasło!");
            }
        }

        else
            zlyLoginLabel.setText("Pole nie może być puste");

    }


    public void changeSceneLogged() throws IOException, SQLException {

        login();

    }


    public void loginWithEnter(KeyEvent keyEvent) {
    }
}