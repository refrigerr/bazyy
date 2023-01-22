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



    public void login(ActionEvent event) throws IOException, SQLException, Exception {
        //dziala
        //Main m = new Main();
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
            Parent pane = null;

            loginSet = DBConnector.daneStatement.executeQuery("select count(*) from pracownik_izby_przyjec where id_pracownika = " + logindb);
            if(loginSet.next())
                loginzBazy = loginSet.getString("count(*)");

            System.out.println(loginzBazy);
            if(loginzBazy.equals("1")){
                System.out.println("siema");
                loader = new FXMLLoader(getClass().getResource("pracownikIzbyPrzyjecView.fxml"));
                pane = loader.load();
                //PracownikIzbyPrzyjecController pracownikController = loader.getController();
                //pracownikController.jakaś metoda z drugieko controllera

            }

            loginSet = DBConnector.daneStatement.executeQuery("select count(*) from pielegniarka where id_pracownika = " + logindb);
            if(loginSet.next())
                loginzBazy = loginSet.getString("count(*)");

            if(loginzBazy.equals("1")){
                loader = new FXMLLoader(getClass().getResource("pielegniarkaView.fxml"));
                pane = loader.load();
            }

            loginSet = DBConnector.daneStatement.executeQuery("select count(*) from lekarz where id_pracownika = " + logindb);
            if(loginSet.next())
                loginzBazy = loginSet.getString("count(*)");

            if(loginzBazy.equals("1")){
                loader = new FXMLLoader(getClass().getResource("lekarzView.fxml"));
                pane = loader.load();
            }


                Scene scene = new Scene(pane);
                Stage stage = (Stage) ((Node) event.getSource()).getScene().getWindow();
                stage.setScene(scene);
                stage.setMaximized(true);
                stage.show();


            //Scene zalogowanoScene = new Scene(pane);


//            MainController controller = loader.getController();
//            controller.wyswietlZalogowanegoPracownika(zalogowanyPracownik);

//            Stage zalogowanoStage = m.getSecondStage();
//            zalogowanoStage.setScene(zalogowanoScene);
//            zalogowanoStage.setMaximized(true);
//            zalogowanoStage.setResizable(true);


            }
            else {
                zlyLoginLabel.setText("Zły login lub hasło!");
            }
        }

        else
            zlyLoginLabel.setText("Pole nie może być puste");

    }
}