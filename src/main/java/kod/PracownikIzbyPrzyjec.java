package kod;

import java.sql.ResultSet;

public class PracownikIzbyPrzyjec extends PracownikSzpitala{

    static ResultSet pracownikizbyprzyjecSet;

    PracownikIzbyPrzyjec(int IDPracownika)
    {
        super(IDPracownika);
    }

    void zarejestrowaniePacjenta()
    {
        System.out.println("zarejestrowano");
    }

    void sprawdzanieWolnychlozek()
    {
        System.out.println("wolne lozka");;
    }

    void edytowaniePacjenta()
    {
        System.out.println("edytowano");
    }

    void wgladWKadre()
    {
        String imie , nazwisko , oddzial;
        try {
            pracownikizbyprzyjecSet = DBConnector.daneStatement.executeQuery("SELECT * FROM pracownik_oddzial;");
            while (pracownikizbyprzyjecSet.next()) {
                imie = pracownikizbyprzyjecSet.getString("imie");
                nazwisko = pracownikizbyprzyjecSet.getString("nazwisko");
                oddzial = pracownikizbyprzyjecSet.getString("oddzial");
                System.out.println(imie + " " + nazwisko + " " + oddzial);
            }
        }catch (Exception e)
        {
            e.printStackTrace();
        }
    }

    void przypisaniePacjentaDoOddzialu()
    {
        System.out.println("przypisano");
    }


}
