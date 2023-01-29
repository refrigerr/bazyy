package kod;

import javafx.animation.PauseTransition;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.util.Callback;
import javafx.util.Duration;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Utils {

    public static void populateTable(String zapytanie, TableView<ObservableList<String>> tabela) throws SQLException {
        ResultSet pacjentTabelaSet;
        pacjentTabelaSet = DBConnector.daneStatement.executeQuery(zapytanie);
        tabela.getColumns().clear();
        for(int i=0 ; i<pacjentTabelaSet.getMetaData().getColumnCount(); i++){
            final int j = i;
            TableColumn col = new TableColumn(pacjentTabelaSet.getMetaData().getColumnName(i+1));
            col.setCellValueFactory(new Callback<TableColumn.CellDataFeatures<ObservableList,String>, ObservableValue<String>>(){
                public ObservableValue<String> call(TableColumn.CellDataFeatures<ObservableList, String> param) {
                    return new SimpleStringProperty(param.getValue().get(j).toString());
                }
            });

            tabela.getColumns().addAll(col);
        }

        ObservableList<ObservableList<String>> data= FXCollections.observableArrayList();

        while(pacjentTabelaSet.next()){
            ObservableList<String> row = FXCollections.observableArrayList();
            for(int i=1 ; i<=pacjentTabelaSet.getMetaData().getColumnCount(); i++){
                row.add(pacjentTabelaSet.getString(i));
            }
            data.add(row);
        }
        tabela.setItems(data);
    }

    public static void showErrorMessage(Label bladLabel,String errorMsg){
        bladLabel.setVisible(true);
        bladLabel.setText(errorMsg);

        PauseTransition hideBladLabel = new PauseTransition(Duration.seconds(3));
        hideBladLabel.setOnFinished(e -> bladLabel.setVisible(false));
        hideBladLabel.play();
    }
}
