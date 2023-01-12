package kod;

import java.sql.ResultSet;

public class PracownikSzpitala{


    static ResultSet pracownikSet;

    public PracownikSzpitala(int IDPracownika) {

    }

    public static String danePracownika(int IDPracownika)
    {
        try
        {
            int IDOsoby = 0;
            String imie = "", nazwisko = "";

            pracownikSet = DBConnector.daneStatement.executeQuery("SELECT id_osoby FROM pracownik_szpitala where id_pracownika = " + IDPracownika);

            if(pracownikSet.next())
                IDOsoby = pracownikSet.getInt("id_osoby");

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



}
