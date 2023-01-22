package com.example.bazyy;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.stage.Stage;
import kod.DBConnector;
import kod.PracownikSzpitala;

import java.io.IOException;
import java.sql.SQLException;

public class Main extends Application {

    private static Stage secondStage;
    @Override
    public void start(Stage stage) throws IOException, SQLException {
        DBConnector.dane = DBConnector.connect();
        assert DBConnector.dane != null;
        DBConnector.daneStatement = DBConnector.dane.createStatement();

        secondStage = stage;
        stage.setResizable(false);
        FXMLLoader fxmlLoader = new FXMLLoader(Main.class.getResource("loginView.fxml"));
        Scene scene = new Scene(fxmlLoader.load());


        stage.getIcons().add(new Image("https://cdn2.iconfinder.com/data/icons/military-31/200/aid_first_game_heal_health_kit_life-512.png"));
        stage.setTitle("Szpital im. Jana Pawła II");
        stage.setScene(scene);
        stage.show();
        PracownikSzpitala pracownikSzpitala = new PracownikSzpitala(1);
        pracownikSzpitala.wyswietlenieDokumentacjiPacjenta("Tedi", "Keyes");
    }

//    public void changeSceneLogged(String fxml) throws IOException {
//        FXMLLoader loader = new FXMLLoader();
//        loader.setLocation(getClass().getResource(fxml));
//        Parent pane = loader.load();
//
//        secondStage.getScene().setRoot(pane);
//        secondStage.setMaximized(true);
//        secondStage.setResizable(true);
//
//        LoginController controller = loader.getController();
//    }

    public void changeSceneLoggedOut(String fxml) throws IOException {
        Parent pane = FXMLLoader.load(getClass().getResource(fxml));
        secondStage.getScene().setRoot(pane);
        secondStage.setMaximized(false);
        secondStage.setResizable(false);
    }

    public Stage getSecondStage(){
        return secondStage;
    }

    public static void main(String[] args) {
        launch();
    }
}