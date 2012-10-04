<?php

/*
	croatian.php

	phpRa�un - vi�ejezi�ni ra�unovodstveni softver.
	Copyright (C) 2012 M. Ayhan POLAT

	2012 M. Ayhan POLAT

	ISO-8859-2

	This program is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*/

// Definicija Jezika - Hrvatski
//

$a = array(
    "welcome" => "Dobro do�li kod",
    "programname" => "phpRa�un 1.6.4",
    "mapCasting" => "phpRa�un 1.6.4 - Copyright &copy; 2012 <a class='nmenulink' title='phpRa�un Home' href='http://www.mapolat.p7.de/mapCasting/' target='_blank'>&nbsp;M. Ayhan POLAT&nbsp;</a>. Sva prava pridr�ana.",

    "admin" => "Administrator",

    "language" => "Jezik",
    "choose_language" => "Odaberi jezik",


    // Linkbar
    //
    "logout" => "Odjavi",
    "startpage" => "Po�etna stranica",
    "addressbook" => "Adresar",
    "position" => "Pozicija",
    "offer" => "Ponuda",
    "invoice" => "Ra�un",
    "credit_note" => "Kreditna bilje�ka",
    "payment" => "Uplata",
    "cashbook" => "Ra�unska knji�ica",
    "reports" => "Izvje�taji",
    "configuration" => "Konfiguracija",
    "message" => "Poruka",
    "method_of_payment" => "Na�in pla�anja",
    "category" => "Kategorija",
    "tax" => "Porez na dodanu vrijednost",
    "tax_short" => "PDV",
    "settings" => "Pode�avanje",
    "user_admin" => "Pode�avanje korisnika",
    "super_user" => "Administrator",
    "syslog" => "Sistemski zapis",
    "license" => "Licencija",

    "list" => "Popis",
    "new" => "Novi",
    "search" => "Tra�i",
    "detail_search" => "Napredno pretra�ivanje",
    "searchresult" => "Rezultati pretra�ivanja",
    "help" => "Pomo�",

    "info" => "Informacije",
    "all_info" => "Sve informacije o",


    // Akcije
    //
    "insert" => "Dodaj",
    "save" => "Spremi",
    "edit" => "Uredi",
    "edit_entry" => "Uredi zapis",
    "change" => "Promijeni",
    "delete" => "Obri�i",
    "delete_entry" => "Obri�i zapis",
    "cancel" => "Poni�ti",
    "cancel_entry" => "Poni�ti zapis",
    "copy" => "Kopiraj",
    "copy_entry" => "Kopiraj zapis",

    "print" => "Ispis",
    "sort" => "Sortiraj po",
    "choose" => "Odaberi",
    "close" => "Zatvori",
    "close_window" => "Zatvori aktivni prozor",
    "choose_message" => "Odaberi poruku",
    "back" => "Nazad",
    "next" => "Naprijed",
    "accept" => "Prihvatiti",


    // Cijelokupno
    //
    "date_text" => "Datum",
    "number_text" => "Broj",

    "page" => "Stranica",
    "firstpage" => "Prva stranica",
    "prevpage" => "Prethodna stranica",
    "nextpage" => "Slijede�a stranica",
    "lastpage" => "Zadnja stranica",

    "canceled_entries" => "Poka�i poni�tene zapise",
    "not_canceled_entries" => "Poka�i zapise koji nisu poni�teni",
    "all_entries" => "Poka�i sve zapise",

    "entry" => "Unos",
    "no_entry" => "Ne mogu prona�i zapise.",
    "entry_no" => "Broj zapisa",
    "entries" => "Unosi",

    "new_entry" => "Zapis je uspje�no dodan.",
    "entry_exist" => "Zapis postoji.",
    "entry_changed" => "Zapis je uspje�no ure�en.",
    "entry_deleted" => "Zapis je uspje�no obrisan.",
    "entry_not_deleted" => "Zapis se ne mo�e obrisati.",
    "entry_canceled" => "Zapis je poni�ten.",
    "entry_not_canceled" => "Zapis se ne mo�e poni�titi.",

    "field_error" => "Polje nije ispunjeno kako treba.",

    "invoice_issued" => "Za ovaj zapis je izdan ra�un / ponuda",
    "payment_issued" => "Za ovaj ra�un postoji uplata.<br />
		Da bi ste ovaj ra�un mogli urediti, morate prvo obrisati uplatu.",
    "position_used" => "Ova pozicija se koristi u ra�unima / ponudama.",
    "offer_used" => "Za ovu ponudu je izdan ra�un.<br />
		Da bi ste mogli ponudu urediti, morate prvo ra�un obrisati.",

    "invalid_date" => "Datum nije ispravan. Provjerite va� datum jo� jednom. n. p. 01.01.1970",


    // Prijava
    //
    "login_title" => "Prijava",
    "login" => "Prijavi",
    "login_to" => "Prijavi se kod",
    "loggedin" => "Prijavljen je korisnik",
    "user_active" => "Aktivan korisnik",
    "fullname" => "Ime i prezime",
    "username" => "Korisni�ko ime",
    "usergroup" => "Grupa",
    "password" => "Lozinka",
    "repeat_password" => "Ponovite lozinku",
    "password_error" => "Prva i druga lozinka maraju biti iste.",
    "login_error" => "Prijava nije uspijela. Poku�ajte ponovo.",
    "login_end" => "Odjava uspijela. Hvala lijepa �to ste koristili",
    "session_end" => "Sjednica zavr�ena.",
    "no_permission" => "Nemate dovoljne ovlasti za pristup ovoj stranici.",


    // Adresar
    //
    "print_name" => "Ime ispisati",
    "prefix" => "Prefiks imena",
    "firstname" => "Ime",
    "lastname" => "Prezime",
    "title" => "Naslov",
    "company" => "Tvrtka",
    "department" => "Odjel",
    "postalcode" => "Broj po�te",
    "city" => "Grad",
    "country" => "Dr�ava",
    "stateprov" => "�upanija",
    "address" => "Ulica",
    "position1" => "Pozicija",
    "initials" => "Inicijali",
    "salutation" => "Uvodni govor",
    "phonehome" => "Tel. (Privatni)",
    "phoneoffi" => "Tel. (Ured)",
    "phoneothe" => "Tel. (Drugi)",
    "phonework" => "Tel. (Poslovni)",
    "mobile" => "Tel. (Mobilni)",
    "pager" => "Pager",
    "fax" => "Fax",
    "email" => "E-Po�ta",
    "url" => "Ineternet stranica",
    "note" => "Napomene",
    "url2" => "Ineternet stranica 2",
    "email2" => "E-Po�ta 2",
    "altfield1" => "Korisnikovo polje 1",
    "altfield2" => "Korisnikovo polje 2",
    "cust_method_of_payment" => "Na�in pla�anja",
    "birthday" => "Ro�endan n. p. 01.01.1970",
    "select_all" => "Svi",
    "envelope" => "Envelope",
    "issue_invoice" => "Izdaj novi ra�un za",
    "issue_offer" => "Izdaj novu ponudu za",
    "issue_credit_note" => "Idaj novu kreditnu bilje�ku za",
    "customer" => "Korisnik",
    "customer_no" => "Broj korisnika",
    "customer_no_initials" => "KO",
    "choose_customer" => "Odaberi korisnika",
    "find_customer" => "Unesite: Ime, Prezime ili Tvrtku koje �elite potra�iti.",
    "basic_info" => "Informacije",
    "extended_info" => "Dodatne informacije",
    "auth_info" => "Prijava",


    // E-Po�ta
    //
    "email_priority" => "Va�nost",
    "email_from" => "Od",
    "email_to" => "Za",
    "email_cc" => "Kopija (CC)",
    "email_bcc" => "Slijepa kopija (BCC)",
    "email_subject" => "Tema",
    "email_text" => "Poruka",
    "email_send" => "E-Po�tu poslati",
    "email_ok" => "E-Po�ta je poslana za",
    "email_error" => "Gre�ka: E-Po�ta nije poslana.",
    "email_html" => "E-Mail HTML",
    "email_text" => "E-Mail Text",
    "email_pdf" => "E-Mail PDF-Privitak",


    // Pozicija
    //
    "pos_active" => "Aktivna pozicija",
    "pos_inactive" => "Inaktivna pozicija",
    "pos_all" => "Prika�i sve pozicije",
    "pos_name" => "Pozicija",
    "pos_text" => "Opis",
    "pos_quantity" => "Koli�ina",
    "pos_price" => "Cijena",
    "pos_amount" => "Iznos",
    "pos_choose" => "Odaberi poziciju",
    "pos_new" => "Dodaj novu poziciju",
    "pos_print" => "Ispi�i poziciju",
    "pos_group" => "Grupa",
    "pos_inventory" => "Stanje zaliha",
    "pos_search" => "Unesite: Poziciju ili opis koje �elite potra�iti.",


    // Porez na dodanu vrijednost
    //
    "tax_divide" => "Podjeljeno sa",
    "tax_multiply" => "Pomno�eno sa",
    "tax_description" => "PDV Opis",


    // Pode�avanje
    //
    "basic_settings" => "Osnovna pode�avanja",
    "company_settings" => "Pode�avanje tvrtke",
    "pdf_settings" => "PDF pode�avanje",
    "print_company_data" => "Ispi�i podatke tvrtke",
    "print_position_name" => "Ispi�i ime pozicija",
    "print_output" => "Ispis",
    "company_logo" => "Grafi�ki znak tvrtke",
    "company_logo_width" => "�irina grafi�kog znaka",
    "company_logo_height" => "Visina grafi�kog znaka",
    "company_name" => "Ime tvrtke",
    "company_address" => "Ulica",
    "company_postal" => "Broj po�te",
    "company_city" => "Grad",
    "company_country" => "Dr�ava",
    "company_phone" => "Telefon",
    "company_fax" => "Telefax",
    "company_email" => "E-Po�ta",
    "company_url" => "Internet stranica",
    "company_wap" => "WAP",
    "company_currency" => "Valuta",
    "company_tax_free" => "Bez poreza",
    "sales_prices" => "Prodajne cijene su",
    "company_taxnr" => "Porezni broj",
    "business_taxnr" => "Porezni broj prometa",
    "bank_name" => "Ime banke",
    "bank_account" => "Broj teku�eg ra�una",
    "bank_number" => "Broj banke",
    "bank_iban" => "IBAN",
    "bank_bic" => "BIC",
    "email_internal" => "E-Po�ta interno",
    "email_use_signature" => "Potpis koristiti",
    "email_signature" => "Potpis",
    "stock_active" => "Stanje le�aja aktivno",
    "reminder" => "Opomena",
    "reminder_price" => "Cijena opomene",
    "reminder_days" => "Opomena nakon dan(a)",
    "entries_per_page" => "Unosa po stranici",
    "session_sec" => "Kori�tenje Sek.",
    "pdf_font" => "Slova",
    "pdf_text1" => "Veli�ina slova 1",
    "pdf_text2" => "Veli�ina slova 2",
    "pdf_text3" => "Veli�ina slova n. p. Ra�un",
    "pdf_dir" => "TMP-Direktorij",
    "pdf_attachment_text" => "PDF-Privitak-Opis",


    // Ponuda
    //
    "save_offer" => "Spremi ponudu",
    "print_offer" => "Ispi�i ponudu",
    "print_order" => "Ispi�i narud�bu",
    "change_offer" => "Uredi ponudu",
    "copy_offer" => "Kopiraj ponudu",
    "status" => "Stanje",
    "order" => "Narud�ba",
    "change_status" => "Promjeni stanje",
    "offer_initials" => "PO",
    "order_initials" => "NA",
    "offer_number" => "Broj ponude",
    "order_number" => "Broj narud�be",
    "offer_subtotal" => "Me�uisnos",
    "offer_tax1" => "PDV. 1",
    "offer_tax2" => "PDV. 2",
    "offer_tax3" => "PDV. 3",
    "offer_amount" => "Ukupna cijena",
    "email_offer" => "Ponuda po E-Po�ti za:",
    "email_order" => "Narud�ba po E-Po�ti za:",
    "was_send" => "je poslana po E-Po�ti za:",


    // Ra�un
    //
    "save_invoice" => "Spremi ra�un",
    "print_invoice" => "Ispi�i ra�un",
    "copy_invoice" => "Kopiraj ra�un",
    "change_invoice" => "Uredi ra�un",
    "open_account" => "Za platiti",
    "invoice_initials" => "RA",
    "invoice_number" => "Broj ra�una",
    "invoice_subtotal" => "Me�uisnos",
    "invoice_tax1" => "PDV. 1",
    "invoice_tax2" => "PDV. 2",
    "invoice_tax3" => "PDV. 3",
    "invoice_amount" => "Ukupna cijena",
    "transaction" => "Ulaz uplate",
    "invoice_transaction" => "Ulaz uplate za broj ra�una.",
    "open_invoice" => "Otvoreni ra�uni",
    "email_invoice" => "Po�alji ra�un po E-Po�ti za:",
    "invoice_was_send" => "Ra�un je poslan po E-Po�ti za:",
    "open_since" => "Otvoren od dan(a)",
    "invoice_deletion" => "Kroz brisanje ovog ra�una,<br />stanje ra�unske knji�ice bilo bi negativno!",
    "delivery_note" => "Dostava",
    "print_delivery_note" => "Ispi�i dostavu",
    "delivery_note_initials" => "DO",
    "delivery_note_number" => "Broj dostave",
    "email_delivery_note" => "Po�alji dostavu po E-Po�ti za:",


    // Kreditna Bilje�ka
    //
    "credit_note_number" => "Broj kreditne bilje�ke",
    "credit_note_redeemed" => "Iskupljeno",
    "credit_note_initials" => "KB",


    // Pla�anje
    //
    "save_payment" => "Spremi uplatu",
    "print_payment" => "Ispi�i uplatu",
    "change_payment" => "Uredi uplatu",
    "payment_number" => "Broj uplate",
    "payment_sum" => "Upla�eno",
    "total_payment" => "Ukupno",
    "card_number" => "Broj kartice",
    "valid_thru" => "Va�i do",
    "outstanding_payment" => "Prikazani su samo korisnici sa otvorenim ra�unima.",
    "payment_error" => "Uplata postoji.",
    "payment_incorrect" => "Neva�e�a uplata.<br />Uplata mora biti u visini ra�una.",
    "payment_deletion" => "Kroz brisanje ove uplate,<br />stanje ra�unske knji�ice bilo bi negativno!",


    // Izvje�taji
    //
    "select_report" => "Odaberi izvje�taj",
    "customer_sales" => "Prodaja po korisniku",
    "position_sales" => "Prodaja po pozicijama",
    "invoice_totals" => "Knjiga izlaznih ra�una",
    "booking_details" => "Knji�enje po datumu",
    "individual_values" => "Pojedina�ni iznosi",
    "summary" => "Pregled",
    "date_from" => "od",
    "date_till" => "do",


    // Ra�unska knji�ica
    //
    "cash_in_hand" => "Stanje",
    "starting_with" => "Po�etno stanje",
    "takings" => "Prihodi",
    "expenditures" => "Izdatci",
    "cashbook_number" => "Broj",
    "cashbook_description" => "Opis",
    "takings_expenditures_error" => "Primanja i izdavanja nemogu biti istovremeno ispunjeni!",
    "cashbook_expenditures" => "Vi nemo�ete izdati vi�e novca nego �to ga u kasi imate!",

    // Sistemski zapis
    //
    "syslog_description" => "Opis",
    "syslog_created" => "Datum / Vrijeme",
);

// Izvje�taji
//
$reports = array(
    "booking_details.php" => "Knji�enje po datumu",
    "invoice_ledger.php" => "Knjiga izlaznih ra�una",
    "outstanding_accounts.php" => "Otvoreni ra�uni",
    "invoice_ledger_summary.php" => "Prodaja po korisniku - Pregled",
    "cashbook.php" => "Ra�unska knji�ica",
    "position_sales_summary.php" => "Prodaja po pozicijama - Pregled",
    "position_sales.php" => "Prodaja po pozicijama - Pojedina�ni iznosi",
    "outstanding_offers.php" => "Otvorene ponude"
);


// Korisnikovi Izvje�taji
//
$customer_reports = array(
    "../reports/customer_booking_details.php" => "Knji�enje po datumu",
    "../reports/customer_invoices.php" => "Knjiga izlaznih ra�una",
    "../reports/customer_outstanding_accounts.php" => "Otvoreni ra�uni"
);


// Jezik
//
$language = array(
    1 => "Njema�ki",
    2 => "Engleski",
    3 => "Poljski",
    4 => "Hrvatski",
    5 => "Francuski",
    6 => "Talianski",
    7 => "�panjolski - ES",
    8 => "Nizozemski"
);


// Grupa
//
$group = array(
    1 => "Root",
    2 => "Direktor",
    3 => "Knjigovodstvo",
    4 => "Namje�tenik",
    5 => "Korisnik"
);


// Ponuda Da / Ne
//
$choice_yes_no = array(
    1 => "Da",
    2 => "Ne"
);


// Na�in Ispisivanja
//
$print_output = array(
    1 => "HTML",
    2 => "PDF"
);


// Prodajne-Cijene
//
$sales_price = array(
    1 => "Neto",
    2 => "Bruto"
);


// Prioritet E-Po�te
//
$email_priority = array(
    3 => "Normalna",
    1 => "Velika",
    5 => "Niska"
);


// Status ponude
//
$offer_status = array(
    1 => "Nije prihva�eno",
    2 => "Posvjedo�enje narud�be",
    3 => "Ra�un"
);

?>
