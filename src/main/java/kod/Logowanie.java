package kod;

import java.lang.reflect.Method;
import java.sql.ResultSet;
import java.util.Scanner;

public class Logowanie {

    static ResultSet haslaSet, loginSet;
    public static void lekarz(int IDPracownika)
    {
        try {
            Lekarz lekarz = new Lekarz(IDPracownika);
            Scanner scanner = new Scanner(System.in);
            int wybor = 0;
            boolean loop = true;

            System.out.println("Zalogowano jako lekarz");
            lekarz.danePracownika(IDPracownika);

            while (loop) {
                System.out.println("1 - wypisz pacjenta\n" +
                        "2 - wystaw akt zgonu\n" +
                        "3 - edytuj dokumentacje medyczna pacjenta\n" +
                        "4 - Sprawdz ilu jest pacjentow w szpitalu\n" +
                        "5 - wyloguj\n\n");

                wybor = Integer.parseInt(scanner.nextLine());
                switch (wybor) {
                    case 1:
                        lekarz.wypisaniePacjenta();
                        break;
                    case 2:
                        lekarz.wystawienieAktuZgonu();
                        break;
                    case 3:
                        lekarz.edytowanieDokumentacji();
                        break;
                    case 4:
                        lekarz.iluPacjentow();
                        break;
                    case 5:
                        loop = false;
                        logowanie();
                        break;
                    default:
                        System.out.println("podaj poprawna liczbe");
                        break;
                }
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }

    }

    public static void pielegniarka(int IDpracownika)
    {
        int wybor=0;
        boolean loop = true;
        Scanner scanner = new Scanner(System.in);
        Pielegniarka pielegniarka = new Pielegniarka(IDpracownika);
        System.out.println("Zalogowano jako pielegniarka");
        pielegniarka.danePracownika(IDpracownika);
        while(loop) {

            System.out.println("1 - Edytuj dokumentacje medyczna pacjenta\n" +
                    "2 - Sprawdz ilu jest pacjentow w szpitalu\n" +
                    "3 - wyloguj\n");
            wybor = Integer.parseInt(scanner.nextLine());

            switch (wybor) {
                case 1:
                    pielegniarka.edytowanieDokumentacji();
                    break;
                case 2:
                    pielegniarka.iluPacjentow();
                    break;
                case 3:
                    loop = false;
                    logowanie();
                    break;
                case 4:
                    break;
                default:
                    System.out.println("podaj poprawna liczbe");
                    break;
            }
        }
    }

    public static void pracownik_izby_przyjec(int IDPracownika)
    {
        int wybor=0;
        boolean loop= true;
        Scanner scanner = new Scanner(System.in);
        PracownikIzbyPrzyjec pracownikIzbyPrzyjec = new PracownikIzbyPrzyjec(IDPracownika);
        System.out.println("Zalogowano jako pracownik izby przyjec ");
        pracownikIzbyPrzyjec.danePracownika(IDPracownika);


        while (loop) {
            System.out.println("1 - zarejestruj pacjenta\n" +
                    "2 - sprawdz wolne lozka\n" +
                    "3 - edytuj dane pacjenta\n" +
                    "4 - przypisz pacjenta do oddzialu\n" +
                    "5 - zobacz kadre szpitala\n" +
                    "6 - sprawdz ilu jest pacjentow w szpitalu\n" +
                    "7 - wyloguj\n\n");

            wybor = Integer.parseInt(scanner.nextLine());
            switch (wybor) {
                case 1:
                    pracownikIzbyPrzyjec.zarejestrowaniePacjenta();
                    break;
                case 2:
                    pracownikIzbyPrzyjec.sprawdzanieWolnychlozek();
                    break;
                case 3:
                    pracownikIzbyPrzyjec.edytowaniePacjenta();
                    break;
                case 4:
                    pracownikIzbyPrzyjec.przypisaniePacjentaDoOddzialu();
                    break;
                case 5:
                    pracownikIzbyPrzyjec.wgladWKadre();
                    break;
                case 6:
                    pracownikIzbyPrzyjec.iluPacjentow();
                    break;
                case 7:
                    loop = false;
                    logowanie();
                    break;
                default:
                    System.out.println("podaj poprawna liczbe");
                    break;
            }
        }

    }
    public static void logowanie()
    {
        int wybor=0;
        Scanner scanner = new Scanner(System.in);
        System.out.println("Wybierz opcję: \n 1. kod.Lekarz\n 2. kod.Pielegniarka\n 3. Pracownik izby przyjec\n 4. Wyjście z programu ");
        wybor= Integer.parseInt(scanner.nextLine());
        while(wybor>4 || wybor<1)
        {
            System.out.println("Podano zla lilczbe, wpisz jeszcze raz");
            wybor = scanner.nextInt();
        }
        if(wybor==4)
            return;

        String loginInput, hasloInput;
        String[] pracownik = {"0","lekarz","pielegniarka","pracownik_izby_przyjec"};

        System.out.println("Podaj login: ");
        loginInput = scanner.nextLine();
        System.out.println("Podaj haslo: ");
        hasloInput = scanner.nextLine();

        Logowanie logowanie = new Logowanie();

        try {
            DBConnector.dane = DBConnector.connect();
            DBConnector.daneStatement = DBConnector.dane.createStatement();
            haslaSet = DBConnector.daneStatement.executeQuery("select haslo from pracownik_szpitala where id_pracownika = "+ loginInput);

            String haslozBazy = "";
            haslaSet.next();
            haslozBazy = haslaSet.getString(1);

            loginSet = DBConnector.daneStatement.executeQuery("select id_pracownika from " + pracownik[wybor] + " where id_pracownika = " + loginInput);
            String loginzBazy = "";
            if(loginSet.next())
                loginzBazy = loginSet.getString("id_pracownika");

            if((hasloInput.equals(haslozBazy))&& loginInput.equals(loginzBazy))
            {
                Method method = Logowanie.class.getDeclaredMethod(pracownik[wybor], int.class);
                method.invoke(logowanie,Integer.parseInt(loginInput));
            }
            else{
                System.out.println("Niepoprawne dane logowania");
            }

        }catch (Exception e)
        {
            e.printStackTrace();
        }
    }
}