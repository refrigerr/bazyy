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
//        PracownikSzpitala pracownikSzpitala = new PracownikSzpitala(1);
//        pracownikSzpitala.wyswietlenieDokumentacjiPacjenta("Jan", "Nowak");
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

//TODO: nowy przycisk ze wszystkimi pacjentami a nie tylko z tymi obecnymi w szpitalu bo mamy przycisk wpisz pacjenta
// na oddzial a nie ma jak wyswietlic pacjentow ktorzy nie leżą obecnie w szpitalu

//TODO: Przenieść funkcjonalności które dotyczą każdego pracownika jak np. szukaj do PracownikSzpitalaController zeby
// nie pisac tych samych metod 3 razy

//TODO: Wyswietlać gdzieś ilość wszystkich pacjentów i tabelę z ilością pacjentów na oddziałach / dodać do tabeli
// oddziały ilość wolnych łóżek

//TODO: Ogarnąć zapisywanie nowych pacjentów i edytowanie danych bo to mogą być bardzo nieprzyjemne zapytania do bazy

//TODO: Są śmiszne bugi w stylu można wybrać oddział z tabeli i wystawić mu akt zgonu XDD

//TODO: Zmienić łączenie z DBConnectora bo każdy ma dostęp do roota zamiast tylko swoich uprawnień
// (ale to chyba dużo roboty a i tak jest w chuj tych wyżej)

//TODO: pozdrawiam mamy jeden dzien :D