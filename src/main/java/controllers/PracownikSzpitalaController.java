package controllers;

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
            String id = data[0];
            //String imie= data[1], nazwisko=data[2], pesel=data[3];
            //Create Stage
            Stage newWindow = new Stage();
            newWindow.setTitle("Dane Pacjenta");
            //Create view from FXML
            FXMLLoader loader = new FXMLLoader(PracownikSzpitalaController.class.getResource("danePacjentaView.fxml"));
            //Set view in window
            newWindow.setScene(new Scene(loader.load()));

            DanePacjentaController danePacjenta = loader.getController();
            danePacjenta.ustawPola(id);
            danePacjenta.setCzyJuzJest(true);

            //Launch
            newWindow.show();
        }
        else
        {
            Utils.showErrorMessage(bladLabel, "Wybierz pacjenta z listy!");
        }
    }
}
