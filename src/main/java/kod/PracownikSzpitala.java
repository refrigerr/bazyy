package kod;

import com.example.bazyy.LoginController;

import java.sql.ResultSet;
import java.sql.SQLException;

public class PracownikSzpitala extends Osoba{

    private int idPracownika;

    static ResultSet pracownikSet;

    public PracownikSzpitala(int idPracownika) {
        super();
        this.idPracownika = idPracownika;
    }

    public String danePracownika(int IDPracownika)
    {
        try
        {
            int IDOsoby = 0;
            String imie = "", nazwisko = "";

            pracownikSet = DBConnector.daneStatement.executeQuery("SELECT id_osoby FROM pracownik_szpitala where id_pracownika = " + IDPracownika);

            if(pracownikSet.next())
                IDOsoby = getIdOsoby();

            pracownikSet = DBConnector.daneStatement.executeQuery("SELECT imie, nazwisko FROM osoba where id_osoby = " + IDOsoby);
            if (pracownikSet.next())
            {
                imie = pracownikSet.getString("imie");
                nazwisko = pracownikSet.getString("nazwisko");
            }
            return imie + " " + nazwisko;

        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return null;
    }

    void danePacjenta()
    {

    }

     public void iluPacjentow()
    {
        int iloscPacjentow = 0;
        try {
            pracownikSet = DBConnector.daneStatement.executeQuery("SELECT COUNT(*) FROM pacjenci_lezacy");
            if(pracownikSet.next())
                iloscPacjentow = pracownikSet.getInt(1);

            System.out.println("Obecnie w szpitalu jest " + iloscPacjentow + " pacjentow");
        }catch (Exception e)
        {
            e.printStackTrace();
        }

    }

    void iluPacjentowOddzial()
    {

    }

    public int getIdPracownika() {
        return idPracownika;
    }

    public int getIdOsoby() throws SQLException {
        return pracownikSet.getInt("id_osoby");
    }


}
