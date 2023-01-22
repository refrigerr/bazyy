package com.example.bazyy;

import javafx.event.Event;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.io.IOException;

public class SceneSwitching {

    public static void sceneSwitch(FXMLLoader loader, Event sEvent, Parent root) throws Exception {

        Scene scene = new Scene(root);
        Stage stage = (Stage) ((Node) sEvent.getSource()).getScene().getWindow();
        stage.setScene(scene);
        stage.show();
    }
}
