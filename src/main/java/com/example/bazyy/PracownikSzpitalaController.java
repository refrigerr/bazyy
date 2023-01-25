package com.example.bazyy;

import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.control.TableView;
import javafx.stage.Stage;
import kod.Utils;

import java.io.IOException;
import java.sql.SQLException;

public class PracownikSzpitalaController {

    public static void danePacjenta(TableView table, Label bladLabel) throws IOException, SQLException {
        Object daneObject = table.getSelectionModel().getSelectedItem();
        if(!(daneObject == null)) {

            String daneCzystyString = daneObject.toString();
            System.out.println(daneCzystyString);
            daneCzystyString = daneCzystyString.substring(1,daneCzystyString.length()-2);
            String[] data = daneCzystyString.split(", ");
            //int id=Integer.parseInt(data[0]);
            String imie= data[0], nazwisko=data[1], pesel=data[2];
            //Create Stage
            Stage newWindow = new Stage();
            newWindow.setTitle("Dane Pacjenta");
            //Create view from FXML
            FXMLLoader loader = new FXMLLoader(PracownikSzpitalaController.class.getResource("danePacjentaView.fxml"));
            //Set view in window
            newWindow.setScene(new Scene(loader.load()));

            DanePacjentaController danePacjenta = loader.getController();
            danePacjenta.ustawPola(imie, nazwisko, pesel);

            //Launch
            newWindow.show();
        }
        else
        {
            Utils.showErrorMessage(bladLabel, "Wybierz pacjenta z listy!");
        }
    }
}
