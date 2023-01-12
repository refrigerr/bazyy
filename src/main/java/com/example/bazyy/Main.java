package com.example.bazyy;

import javafx.application.Application;
import javafx.event.EventHandler;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.input.KeyEvent;
import javafx.stage.Stage;
import kod.DBConnector;

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


        stage.setTitle("Hello!");
        stage.setScene(scene);
        stage.show();
    }

    public void changeSceneLogged(String fxml) throws IOException {
        Parent pane = FXMLLoader.load(getClass().getResource(fxml));
        secondStage.getScene().setRoot(pane);
        secondStage.setMaximized(true);
        secondStage.setResizable(true);
    }

    public void changeSceneLoggedOut(String fxml) throws IOException {
        Parent pane = FXMLLoader.load(getClass().getResource(fxml));
        secondStage.getScene().setRoot(pane);
        secondStage.setMaximized(false);
        secondStage.setResizable(true);
    }

    public static void main(String[] args) {
        launch();
    }
}