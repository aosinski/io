-- phpMyAdmin SQL Dump
-- version home.pl
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 03 Cze 2014, 23:37
-- Wersja serwera: 5.5.37-35.0-log
-- Wersja PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `14691443_0000001`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mv_article`
--

CREATE TABLE IF NOT EXISTS `mv_article` (
  `idarticle` int(11) NOT NULL AUTO_INCREMENT,
  `idmenu` int(11) NOT NULL,
  `sequence` int(11) NOT NULL DEFAULT '1',
  `visible` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idarticle`),
  KEY `idmenu` (`idmenu`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=13 ;

--
-- Zrzut danych tabeli `mv_article`
--

INSERT INTO `mv_article` (`idarticle`, `idmenu`, `sequence`, `visible`) VALUES
(1, 1, 2, 1),
(5, 4, 2, 1),
(6, 4, 1, 1),
(7, 1, 1, 1),
(8, 4, 3, 1),
(9, 1, 6, 1),
(10, 1, 4, 1),
(11, 1, 3, 1),
(12, 1, 5, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mv_article_locale`
--

CREATE TABLE IF NOT EXISTS `mv_article_locale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idarticle` int(11) NOT NULL,
  `idlocale` int(11) NOT NULL,
  `title` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `content` text COLLATE utf8_polish_ci NOT NULL,
  `slug` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `meta_keywords` varchar(200) COLLATE utf8_polish_ci DEFAULT NULL,
  `meta_description` varchar(200) COLLATE utf8_polish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mv_article_locale_I_1` (`idlocale`),
  KEY `idarticle` (`idarticle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=13 ;

--
-- Zrzut danych tabeli `mv_article_locale`
--

INSERT INTO `mv_article_locale` (`id`, `idarticle`, `idlocale`, `title`, `content`, `slug`, `meta_keywords`, `meta_description`) VALUES
(1, 1, 1, 'Regulamin usług', '<p style=\\"text-align: left;\\"><strong>Regulamin</strong></p>\r\n<p style=\\"text-align: center;\\"><strong>&sect;1 Postanowienia og&oacute;lne i definicje</strong></p>\r\n<div>GlobalBox, brokerski serwis usług kurierskich należący do WIN Adrian Czech z siedzibą w Szczecinie przy ulicy Eugeniusza Romera 65, &nbsp;NIP 767-162-72-21 świadczy dla os&oacute;b fizycznych, os&oacute;b prawnych oraz jednostek organizacyjnych nie posiadających osobowości prawnej zwanych dalej Zleceniodawcą, usługi pośrednictwa polegające na przyjmowaniu zleceń i przekazywania ich do realizacji profesjonalnym &nbsp;firmom kurierskim KEX i UPS.</div>\r\n<div><br /></div>\r\n<div>Określenie termin&oacute;w używanych w niniejszym regulaminie.</div>\r\n<div><br /></div>\r\n<div>1. GlobalBox &ndash; Zleceniobiorca</div>\r\n<div><br /></div>\r\n<div>2. Zleceniodawca &ndash; klient, osoba fizyczna lub prawna lub jednostka organizacyjna nie posiadająca osobowości prawnej, kt&oacute;ra dokonuje zam&oacute;wienia za pośrednictwem serwisu GlobalBox.&nbsp;</div>\r\n<div><br /></div>\r\n<div>3. Przewoźnik &ndash; wyspecjalizowana firma kurierska lub logistyczna wsp&oacute;łpracująca z GlobalBox.</div>\r\n<div><br /></div>\r\n<div>4. GlobalBox &ndash; brokerski serwis usług kurierskich, umieszczony pod adresem internetowym www.sentbox.pl służący do składania zleceń na usługi przewozowe, zarządzanie płatnościami oraz zleceniami.</div>\r\n<div><br /></div>\r\n<div>5. List przewozowy &ndash; dokument przewozowy wygenerowany przez system www.GlobalBox.pl na podstawie kt&oacute;rego wybrany przez Zleceniodawcę przewoźnik odbiera i dostarcza przesyłkę do adresata. List przewozowy jest dołączany do paczki i stanowi jednocześnie zawarcie umowy pomiędzy Zleceniodawcą, a GlobalBox.pl i Przewoźnikiem.</div>\r\n<div><br /></div>\r\n<div>6. Paczka &ndash; koperta, paczka, paleta lub inny ładunek przygotowany przez Zleceniodawcę do odbioru przez kuriera i doręczenia do odbiorcy według określonych w niniejszym regulaminie zasad pakowania.</div>\r\n<div><br /></div>\r\n<div>7. Przesyłka &ndash; jedna lub więcej paczek przekazanych do doręczenia w ramach jednego listu przewozowego.</div>\r\n<div><br /></div>\r\n<div>8. Waga rzeczywista &ndash; waga przedstawiona w kg umieszczona na liście przewozowym, kt&oacute;ra wynika z wagi towaru oraz opakowania</div>\r\n<div><br /></div>\r\n<div>9. Waga Gabarytowa &ndash; jeżeli waga gabarytowa jest większa od wagi rzeczywistej cena za usługę będzie naliczana według wagi gabarytowej. Waga gabarytowa jest obliczana według wzoru danego Przewoźnika zawartych w stosownych regulaminach.</div>\r\n<div><br /></div>\r\n<div>10. Przesyłka &bdquo;Za Pobraniem&rdquo; &ndash; warunkiem odbioru przesyłki jest uiszczenie kurierowi kwoty wskazanej na liście przewozowym przez nadawcę.</div>\r\n<div><br /></div>\r\n<div>11. Przesyłka &bdquo;ROD&rdquo; &ndash; przesyłka, do kt&oacute;rej nadawca dołącza dokument np. fakturę, dokument WZ lub inny własny formularz, kt&oacute;ry w momencie dostarczenia przesyłki musi być potwierdzony przez odbiorcę i odesłany do nadawcy.</div>\r\n<div><br /></div>\r\n<div style=\\"text-align: center;\\"><strong>&sect;2 Rejestracja oraz zamawianie usług</strong></div>\r\n<div><br /></div>\r\n<div>1. &nbsp;Zleceniodawca poprzez panel rejestracyjny zakłada konto za pomocą kt&oacute;rego będzie miał możliwość realizowania przesyłek. Panel użytkownika umożliwia drukowanie list&oacute;w przewozowych, sprawdzenie statusu realizacji dostarczenia, wgląd do bazy kontrahent&oacute;w, klient&oacute;w. Każdorazowe logowanie się na stronie oznacza akceptacje regulaminu w aktualnym brzmieniu.&nbsp;</div>\r\n<div><br /></div>\r\n<div>2. Obowiązkiem Zleceniodawcy jest poprawne podanie danych Nadawcy oraz Adresata, Zleceniobiorca nie ponosi odpowiedzialności za niedostarczenie przesyłki z powodu błędnie podanych danych. W tej sytuacji zostaną naliczone opłaty przez Przewoźnika za zwrot paczki, koszty tej operacji wraz z kosztami manipulacyjnymi zostaną poniesione przez Zleceniodawcę. Płatność będzie egzekwowana na podstawie faktury, a w przypadku należnych świadczeń z przesyłek &bdquo;za pobraniem&rdquo;, należne opłaty zostaną potrącone z tych świadczeń.&nbsp;</div>\r\n<div><br /></div>\r\n<div>3. W celu realizacji zlecenia usługi Zleceniodawca wypełnia formularz \\"wyślij paczkę\\" dostępny na stronie internetowej www.sentbox.pl. Podanie nieprawdziwych danych dotyczących wymiar&oacute;w, wagi przesyłki oraz innych wymaganych parametr&oacute;w uprawnia Zleceniobiorcę do wystawienia faktury Vat na kwotę wynikającej z aktualnego cennika kuriera lub do wstrzymania przesyłki w magazynach Kuriera do czasu opłacenia w/w faktury.</div>\r\n<div><br /></div>\r\n<div>4. Po złożeniu zam&oacute;wienia, Zleceniodawca otrzymuje indywidualny list przewozowy, kt&oacute;ry należy wydrukować i załączyć do paczki po kt&oacute;rą zgłosi się Przewoźnik. GlobalBox nie wyraża zgody na zamianę list&oacute;w przewozowych, szczeg&oacute;lnie na listy przewozowe wypisane przez kuriera.&nbsp;</div>\r\n<div><br /></div>\r\n<div style=\\"text-align: center;\\"><strong>&sect;3 Odpowiedzialność stron i reklamacje</strong></div>\r\n<div><br /></div>\r\n<div>1. Wszelkie reklamacje dotyczące nieprawidłowego wykonania Usługi przez Przewoźnika należy składać pisemnie do Zleceniobiorcy zgodnie z regulaminem i procedurą reklamacyjną Przewoźnika dostępną na jego stronie internetowej www.k-ex.pl lub www.ups.com</div>\r\n<div><br /></div>\r\n<div>Odpowiedzialność Zleceniobiorcy ograniczona jest do przekazania zlecenia odbioru przesyłki dla Przewoźnika.</div>\r\n<div><br /></div>\r\n<div>2. Zleceniodawca ma obowiązek wygenerowany przez system GlobalBox.pl list przewozowy wydrukować i umieścić na przesyłce. Przekazanie zlecenia odbioru przesyłki od Zleceniodawcy KEX lub UPS nie gwarantuje jego przyjęcia do realizacji.&nbsp;</div>\r\n<div><br /></div>\r\n<div>3. Zlecenie odbioru przesyłki od nadawcy nie jest częścią usługi przewozu przesyłki, jest usługą bezpłatną i w związku z tym nie podlega reklamacji.</div>\r\n<div><br /></div>\r\n<div>4. Przesyłkę można nadać samodzielnie w punktach przyjęć KEX i UPS na podstawie listu przewozowego wygenerowanego z systemu www.GlobalBox.pl</div>\r\n<div><br /></div>\r\n<div>5. Zleceniobiorca nie ponosi odpowiedzialności za utracone korzyści wynikające z niemożności korzystania z serwisu, związane z utratą, ubytkiem, uszkodzeniem lub op&oacute;źnieniem przesyłki.</div>\r\n<div><br /></div>\r\n<div>Reklamacje dotyczące nieprawidłowego przekazania zlecenia dla Przewoźnika lub nieprawidłowości w pracy serwisu SenTbox.pl należy zgłaszać w formie elektronicznej poprzez e-mail na adres reklamacja@sentbox.pl lub pocztą na adres pocztowy Zleceniobiorcy.</div>\r\n<div><br /></div>\r\n<div>Termin rozpatrzenia reklamacji wynosi 14 dni od daty jej wpływu. Odpowiedź wysyłana jest Zleceniodawcy drogą elektroniczną na adres, z kt&oacute;rego reklamacja została wysłana.</div>\r\n<div><br /></div>\r\n<div>6. Zleceniobiorca odm&oacute;wi zapłaty dla kuriera za przesyłkę, kt&oacute;ra została nadana na liście przewozowym nie wygenerowanym przez serwis GlobalBox.pl i kurier naliczy standardową opłatę z aktualnego cennika bez rabat&oacute;w oraz opłatę za przeniesienie płatności na Zleceniodawcę oraz obciąży, go wszelkimi kosztami związanymi z tą przesyłką. Zleceniobiorca w takim przypadku może też odm&oacute;wić zwrotu za nie zrealizowaną przesyłkę wygenerowaną przez system www.GlobalBox.pl na poczet kary za podmianę list&oacute;w przewozowych.</div>\r\n<div><br /></div>\r\n<div>7. Zleceniobiorca może dokonać potrąceń lub obciążyć zleceniodawcę przesyłki kosztami w przypadku gdy zlecenie wygenerowane r&oacute;żniło się od stanu faktycznego (zaniżona waga przesyłki lub wymiary i inne koszty poniesione) lub zostały dla zleceniodawcy naniesione inne koszty nie opłacone w szczeg&oacute;lności opłata za niestandardową przesyłkę, przeważanie przesyłki itp.&nbsp;</div>\r\n<div><br /></div>\r\n<div>Kara za nie zgodność pomiędzy listami lub ich podmianę jest r&oacute;wna cenie za wysłanie ww. paczki wg standardowego cennika wybranego Przewoźnika, a opłaty poniesione w wyniku generowania przesyłki przez serwis www.GlobalBox.pl w takim przypadku nie podlegają zwrotowi.</div>\r\n<div><br /></div>\r\n<div>8. Zleceniodawca może rozwiązać umowę wsp&oacute;łpracy z Globalbox.pl pisząc mail na adres: biuro@sentbox.pl z prośbą o zawieszenie konta. Wiadomość email musi być wysłana z adresu mailowego zarejestrowanego w serwisie www.GlobalBox.pl</div>\r\n<div><br /></div>\r\n<div style=\\"text-align: center;\\"><strong>&sect;4 Płatność za usługę i wystawianie faktury VAT</strong></div>\r\n<div><br /></div>\r\n<div>1. Zleceniodawca po wypełnieniu formularza &bdquo;wyślij paczkę&rdquo;, otrzymuje wycenę realizacji usługi przez Zleceniobiorcę, jeżeli jest ona akceptowalna przechodzi do rozliczenia transakcji kartą kredytową i&nbsp;e-przelewem przeprowadzanych za pośrednictwem Centrum Rozliczeniowego Dotpay.</div>\r\n<div><br /></div>\r\n<div>2. Zleceniodawca wyraża niniejszym zgodę na wystawienia faktury bez podpisu i zobowiązuje się do uregulowania tych należności do Zleceniobiorcy nie p&oacute;źniej niż w przeciągu 7 dni od dnia wystawienia w/w faktury.</div>\r\n<div><br /></div>\r\n<div>3.&nbsp;Rozliczenia transakcji kartą kredytową i e-przelewem przeprowadzane są za pośrednictwem Centrum Rozliczeniowego Dotpay</div>\r\n<div><br /></div>\r\n<div style=\\"text-align: center;\\"><strong>&sect;5 Postanowienia końcowe.</strong></div>\r\n<div><br /></div>\r\n<div>1. Integralną częścią w/w regulaminu jest regulamin usług K-EX oraz UPS Poland dostępny na stronie: www.k-ex.pl i www.ups.com.</div>\r\n<div><br /></div>\r\n<div>2. GlobalBox.pl zastrzega sobie prawo do wprowadzania zmian w niniejszym regulaminie, o czym Zleceniodawcy zarejestrowani w serwisie GlobalBox.pl zostaną poinformowani.</div>\r\n<div><br /></div>\r\n<div>3. &nbsp;Zleceniodawca rejestrując się w serwisie GlobalBox.pl wyraża zgodę na przetwarzanie danych osobowych przez Globalbox.pl oraz przekazywanie ich Przewoźnikowi i innym podmiotom w zakresie niezbędnym do prawidłowego wykonania zleconej usługi. Dane osobowe ZLECENIODAWCY są chronione przez GlobalBox.pl i mogą być wykorzystywane przez niego i inne podmioty przez niego upoważnione do cel&oacute;w marketingowych na mocy ustawy z dnia 29.08.1997 o ochronie danych osobowych. ZLECENIODAWCA ma prawo do wglądu w swoje dane, ich poprawianie i usuwanie przy pomocy panelu użytkownika dostępnego po zalogowaniu na stronie www.globalbox.pl.</div>\r\n<div><br /></div>\r\n<div>4. Rejestracja w serwisie GlobalBox.pl oznacza akceptacje niniejszego regulaminu.</div>\r\n<div><br /></div>\r\n<div><br /></div>\r\n<div><br /></div>\r\n<div><br /></div>', 'Regulamin-uslug', 'regulamin usług, regulamin, sentbox, warunki przyjęcia przesyłki, artykuły niedozwolone, towary wyłączone z przewozu,', 'Zleceniobiorca nie podejmuje się transportu  żadnych towarów, których przewozu zabraniają przepisy krajowe, miejscowe czy lokalne w kraju pochodzenia lub przeznaczenia, lub towarów które mogą naruszyć'),
(5, 5, 1, 'Wytyczne Dobrego Pakowania', '<p><strong>Wytyczne Dobrego Pakowania<br /></strong><br />Możesz zapewnić bezpieczne i punktualne dostarczenie paczki, korzystając z wytycznych  i procedur dobrego pakowania ustalonych w wyniku badań przeprowadzonych przez UPS.</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>Użyj sztywnego pudełka z nienaruszonymi klapami.</li>\r\n<li>Usuń z pudełka wszelkie etykiety, oznaczenia materiał&oacute;w niebezpiecznych i inne oznaczenia wysyłki, kt&oacute;re nie mają już zastosowania</li>\r\n<li>Zawiń każdy przedmiot osobno</li>\r\n<li>Użyj odpowiedniego materiału amortyzującego</li>\r\n<li>Użyj mocnej taśmy przeznaczonej do przesyłek</li>\r\n<li>Nie używaj sznurka ani papierowych owinięć</li>\r\n<li>Użyj pojedynczej etykiety adresowej z wyraźnym adresem dostawy i adresem zwrotnym</li>\r\n<li>Umieść kopię etykiety adresowej wewnątrz przesyłki</li>\r\n</ul>\r\n<p><strong>Ograniczenia masy i rozmiaru paczek<br /></strong><br />Suma wymiar&oacute;w opakowania nie może przekraczać:<br />- KEX <strong>220cm</strong><br />- UPS <strong>270cm</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'Wytyczne-Dobrego-Pakowania', '', ''),
(6, 6, 1, 'Pytania i odpowiedzi', '<p><span style=\\"color: #3b8187;\\"><strong>Czy muszę się zarejestrować/zalogować żeby wycenić paczkę?</strong></span><br />Żeby wycenić koszt wysłania przesyłki dowolnym kurierem nie musisz być zalogowany/zarejestrowany do serwisu. Do tego procesu zostaniesz skierowany dopiero kiedy otrzymasz i zaakceptujesz koszt wysłania paczki.</p>\r\n<p><span style=\\"color: #3b8187;\\"><strong>Co mam zrobić żeby nadać paczkę?</strong></span><br />Po pierwsze wprowadź dane dotyczące wymiar&oacute;w i wagi przesyłki w okienku na stronie gł&oacute;wnej lub z zakładce &bdquo;nadaj paczkę\\". System wyceni koszty Twojej przesyłki jeśli je zaakceptujesz zostaniesz skierowany do procesu rejestracji/logowania (o ile jeszcze tego nie zrobiłeś). Kolejnym krokiem jest wypełnienie prostego formularza z danymi nadawcy i odbiorcy. Następnie zostaniesz przekierowany do płatności on-line gdzie w łatwy i szybki spos&oacute;b opłacisz przesyłkę. Na koniec całego procesu system wygeneruje dla Ciebie list przewozowy kt&oacute;ry musisz już tylko wydrukować i oczekiwać na przyjazd kuriera. <br /><span style=\\"color: #3b8187;\\"><br /><strong>Kiedy kurier odbierze przesyłkę?</strong></span><br />Czas przyjazdu kuriera po przesyłkę jest uzależniony od godziny, w jakiej zostało wykonane zlecenie oraz od kodu pocztowego nadawcy. Najczęściej zlecenia złożone do południa realizowane są tego samego dnia, a złożone po południu dnia następnego. W przypadku firmy K-ex nastąpi wcześniejsza awizacja odbioru przesyłki za pośrednictwem emaila.<br /><br /><span style=\\"color: #3b8187;\\"><strong>Co to jest ciężar wymiarowy/waga przeliczeniowa?</strong></span><br />Ciężar wymiarowy przesyłki jest r&oacute;wnoznaczny z objętością/ przestrzenią w samochodzie jaka jest wymagana do jej transportu. Jest ona obliczona i por&oacute;wnywana z wagą rzeczywistą. Do wyceny koszt&oacute;w przesyłki zawsze brana pod uwagę jest wartość większa.<br /><span style=\\"text-decoration: underline;\\">Sposoby obliczenia ciężaru wymiarowego:</span><br />- dla usługi UPS (długość x szerokość  x wysokość)/5000<br />- dla usługi K-EX (długość x szerokość  x wysokość)/10000<br />Np. (40cm x 40cm x 50cm)/10000 = 8kg<br /><br /><span style=\\"color: #3b8187;\\"><strong>Czy mogę zam&oacute;wić kuriera na dzisiaj?</strong></span><br />Tak jest tak możliwość należy jednak pamiętać, że zam&oacute;wienie oraz płatność musi wpłynąć do systemu przed godziną: 12.00<br /><br /><span style=\\"color: #3b8187;\\"><strong>Co to jest przesyłka niestandardowa?</strong></span><br />Jest to przesyłka bardzo duża, ciężka lub wymagająca specjalnego traktowania i dlatego utrudniająca transport i sortowanie. Często r&oacute;wnież wymagają specjalnego traktowania w transporcie i uniemożliwiają optymalne wykorzystanie powierzchni w środkach transportu.<br /><br /><span style=\\"color: #3b8187;\\"><strong>Jakie maksymalne wymiary może mieć nadawana przesyłka?</strong></span><br /><span style=\\"color: #3366ff;\\"><span style=\\"text-decoration: underline;\\">Przesyłka standardowa dla kuriera <strong>K-EX</strong></span> </span>- suma wymiar&oacute;w do 220cm przy czym: długość - 140cm, szerokość - 80cm, wysokość - 80cm<br /><span style=\\"color: #3366ff;\\"><span style=\\"text-decoration: underline;\\">Przesyłka standardowa dla kuriera <strong>UPS</strong></span></span> - suma wymiar&oacute;w do 330cm przy czym najdłuższy z tych wymiar&oacute;w nie może przekroczyć 270cm.<br /><span style=\\"color: #3b8187;\\"><br /><strong>Co to jest opłata paliwowa?</strong></span><br />Opłata paliwowa jest jednorazowo doliczana do podstawowej ceny przesyłki (nie zawierającej koszt&oacute;w usług dodatkowych). Wysokość opłaty jest określana na podstawie średnich cen rynkowych oleju napędowego oraz paliwa lotniczego i z racji odmiennej specyfiki naliczana jest odmiennie dla usług lotniczych i drogowych.</p>\r\n<p>Ponieważ ceny paliwa podlegają wahaniom, wysokość opłaty jest zmienna. Na dzień dzisiejszy wynosi:<br />UPS = 9%<br />K-EX = 15,5%</p>', 'Pytania-i-odpowiedzi', 'waga wymiarowa, broker usług kurierskich, broker uslug kurierskich, najtansze paczki, \r\ntani kurier, tanie paczki, wysylajtaniej', 'waga wymiarowa, broker usług kurierskich, broker uslug kurierskich, najtansze paczki, \r\ntani kurier, tanie paczki, wysylajtaniej'),
(7, 7, 1, 'O nas', '<p><strong>O nas</strong></p>\r\n<p>GlobalBox jest brokerem usług kurierskich, jest to aplikacja internetowa dzięki kt&oacute;rej możesz wysyłać paczki z mega rabatami bez wychodzenia z domu. Tylko Ty, Tw&oacute;j komputer i drukarka, aplikacja pozwala na wysyłke do 70% taniej w por&oacute;wnaniu ze standardowym cennikiem innych operator&oacute;w. <br /><br />Wysoki poziom świadczonych przez nas usług zapewnia wsp&oacute;łpraca z kurierami UPS i KEX, paczki do 70 kg obsługiwane są przez firmę UPS, a palety przez firmę KEX. Aplikacja jest w pełni zautomatyzowana dlatego zaraz po wypełnieniu p&oacute;l Nadawcy, Adresata oraz opłaceniu wyświetlonej kwoty, kurier jest automatycznie zamawiany na adres Nadawcy. Zawsze na czas i zawsze bezpiecznie. Życzymy miłego korzystania! <br /></p>', 'O-nas', 'globalbox, broker usług kurierskich, wysyłać paczki, kurier, wysyłaj taniej, tani kurier, tanie przesyłki, przesyłki kurierskie, tania paczka, paczki, firmy kurierskie, UPS, K-ex', 'globalbox - broker usług kurierskich. Już teraz przesyłki kurierskie wysyłaj taniej o 50%! Wysoką jakość gwarantują firmy kurierskie UPS i K-ex.'),
(8, 8, 1, 'Dodatkowe zalecenia pakowania - UPS', '<p><strong>Zalecenia pakowania</strong></p>\r\n<ul class=\\"cmslinks\\">\r\n<li><a href=\\"/data/cms_content/files/UPS_pakowanie/BUTELKI.pdf\\"><img src=\\"/css/icons/pdf.png\\" alt=\\"\\" />Butelki - pobierz PDF</a></li>\r\n<li><a href=\\"/data/cms_content/files/UPS_pakowanie/ARTYKULY-OSWIETLENIOWE.pdf\\"><img src=\\"/css/icons/pdf.png\\" alt=\\"\\" />Artykuły oświetleniowe - pobierz PDF</a></li>\r\n<li><a href=\\"/data/cms_content/files/UPS_pakowanie/BOX-IN-BOX-metoda-uniwersalna.pdf\\"><img src=\\"/css/icons/pdf.png\\" alt=\\"\\" />Box in box - metoda uniwersalna - pobierz PDF</a></li>\r\n<li><a href=\\"/data/cms_content/files/UPS_pakowanie/OBUDOWA-KOMPUTERA.pdf\\"><img src=\\"/css/icons/pdf.png\\" alt=\\"\\" />Obudowa komputera - pobierz PDF</a></li>\r\n<li><a href=\\"/data/cms_content/files/UPS_pakowanie/PALETY.pdf\\"><img src=\\"/css/icons/pdf.png\\" alt=\\"\\" />Palety - pobierz PDF</a></li>\r\n<li><a href=\\"/data/cms_content/files/UPS_pakowanie/PRODUKTY-SZKLANE.pdf\\"><img src=\\"/css/icons/pdf.png\\" alt=\\"\\" />Produkty szklane - pobierz PDF</a></li>\r\n<li><a href=\\"/data/cms_content/files/UPS_pakowanie/UBRANIA.pdf\\"><img src=\\"/css/icons/pdf.png\\" alt=\\"\\" />Ubrania - pobierz PDF</a></li>\r\n<li><a href=\\"/data/cms_content/files/UPS_pakowanie/TAFLA-SZKLA.pdf\\"><img src=\\"/css/icons/pdf.png\\" alt=\\"\\" />Tafla szkła - pobierz PDF</a></li>\r\n</ul>', 'Dodatkowe-zalecenia-pakowania---UPS', 'zalecenia pakowania, butelki, PDF, artykuły oświetleniowe, box in box, metoda uniwersalna, obudowa komputera, palety, produkty szklane, ubrania, tafla szkła', ''),
(9, 9, 1, 'Dane firmy', '<p><strong>Dane firmy</strong></p>\r\n<p><strong>GlobalBox</strong><br /> ul. Kr&oacute;lowej Jadwigi 3 <br />70-300 Szczecin</p>\r\n<p>email: <a href=\\"mailto:biuro@globalbox.pl\\">biuro@globalbox.pl</a></p>\r\n<p>tel. 515 360 456</p>', 'Dane-firmy', '', ''),
(10, 10, 1, 'Zwroty', '<p><strong>Zwroty</strong></p>\r\n<p>Zgodnie z Ustawa z 2 marca 2000 roku \\"O ochronie niekt&oacute;rych praw konsument&oacute;w oraz &nbsp;o odpowiedzialności za szkodę wyrządzoną przez produkt niebezpieczny\\" (Dz. U. Nr 22, poz. 271 z 2000 r. z p&oacute;z. zm.) Kupujący, w ciągu 10 dni od daty odebrania przesyłki może zrezygnować z zakupu (odstąpić od umowy kupna bez podania przyczyny) z towaru kupionego w Sklepie internetowym.</p>\r\n<p><strong><br /></strong></p>', 'Zwroty', '', ''),
(11, 11, 1, 'Ochrona danych osobowych', '<p><strong>Ochrona danych osobowych</strong></p>\r\n<p>Dane osobowe są chronione zgodnie z Ustawą z dnia 29.08.1997 r. \\"O ochronie danych osobowych\\" (Dz.U. Nr 133 poz. 883) w spos&oacute;b uniemożliwiający dostęp do nich osobom trzecim.</p>\r\n<p>\r\n<p>Zgodnie z Ustawa z 2 marca 2000 roku \\"O ochronie niekt&oacute;rych praw konsument&oacute;w oraz &nbsp;o odpowiedzialności za szkodę wyrządzoną przez produkt niebezpieczny\\" (Dz. U. Nr 22, poz. 271 z 2000 r. z p&oacute;z. zm.) Kupujący, w ciągu 10 dni od daty odebrania przesyłki może zrezygnować z zakupu (odstąpić od umowy kupna bez podania przyczyny) z towaru kupionego w Sklepie internetowym.</p>\r\n</p>', 'Ochrona-danych-osobowych', '', ''),
(12, 12, 1, 'Płatności', '<p><strong>Płatności</strong></p>\r\n<p>Rozliczenia transakcji kartą kredytową i e-przelewem przeprowadzane są za pośrednictwem Centrum Rozliczeniowego Dotpay.</p>', 'Platnosci', 'płatności online, dotpay, przelew, wysyłaj taniej, tanie przesyłki, tani kurier', 'Dokonuj płatności nie wychodząc z własnego domu przy pomocy aplikacji Dotpay.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mv_culture`
--

CREATE TABLE IF NOT EXISTS `mv_culture` (
  `idculture` int(11) NOT NULL AUTO_INCREMENT,
  `culturename` varchar(4) COLLATE utf8_polish_ci NOT NULL,
  `displayname` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '0',
  `sequence` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idculture`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `mv_culture`
--

INSERT INTO `mv_culture` (`idculture`, `culturename`, `displayname`, `visible`, `sequence`) VALUES
(1, 'pl', 'Polski', 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mv_files`
--

CREATE TABLE IF NOT EXISTS `mv_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ownertable` varchar(32) COLLATE utf8_polish_ci NOT NULL,
  `idowner` int(11) NOT NULL,
  `filename` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `filetype` varchar(64) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idarticle` (`idowner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mv_fotos`
--

CREATE TABLE IF NOT EXISTS `mv_fotos` (
  `idfoto` int(11) NOT NULL AUTO_INCREMENT,
  `idgallery` int(11) NOT NULL,
  `filename` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `sequence` int(11) NOT NULL DEFAULT '1',
  `visible` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idfoto`),
  KEY `idgallery` (`idgallery`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mv_foto_locale`
--

CREATE TABLE IF NOT EXISTS `mv_foto_locale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idfoto` int(11) NOT NULL,
  `idlocale` int(11) NOT NULL,
  `title` varchar(300) COLLATE utf8_polish_ci DEFAULT NULL,
  `description` text COLLATE utf8_polish_ci,
  `slug` varchar(300) COLLATE utf8_polish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mv_foto_locale_I_1` (`idlocale`),
  KEY `idfoto` (`idfoto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mv_gal2art`
--

CREATE TABLE IF NOT EXISTS `mv_gal2art` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idarticle` int(11) NOT NULL,
  `idgallery` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idarticle` (`idarticle`),
  KEY `idgallery` (`idgallery`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mv_gallery`
--

CREATE TABLE IF NOT EXISTS `mv_gallery` (
  `idgallery` int(11) NOT NULL AUTO_INCREMENT,
  `sequence` int(11) NOT NULL DEFAULT '1',
  `visible` tinyint(4) NOT NULL DEFAULT '0',
  `standalone` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idgallery`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mv_gallery_locale`
--

CREATE TABLE IF NOT EXISTS `mv_gallery_locale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idgallery` int(11) NOT NULL,
  `idlocale` int(1) NOT NULL,
  `title` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `description` text COLLATE utf8_polish_ci,
  `slug` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `meta_keywords` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `meta_description` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mv_gallery_locale_I_1` (`idlocale`),
  KEY `idgallery` (`idgallery`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mv_menu`
--

CREATE TABLE IF NOT EXISTS `mv_menu` (
  `idmenu` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '1',
  `sequence` int(11) NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '0',
  `idparent` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmenu`),
  KEY `idparent` (`idparent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=7 ;

--
-- Zrzut danych tabeli `mv_menu`
--

INSERT INTO `mv_menu` (`idmenu`, `type`, `sequence`, `visible`, `idparent`) VALUES
(1, 1, 1, 1, NULL),
(3, 1, 2, 1, NULL),
(4, 1, 3, 1, NULL),
(5, 1, 4, 1, NULL),
(6, 1, 5, 1, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mv_menu_locale`
--

CREATE TABLE IF NOT EXISTS `mv_menu_locale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idmenu` int(11) NOT NULL,
  `idlocale` int(2) NOT NULL,
  `title` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `description` text COLLATE utf8_polish_ci,
  `content_type` int(2) NOT NULL,
  `slug` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `metakeywords` varchar(200) COLLATE utf8_polish_ci DEFAULT NULL,
  `metadescription` varchar(200) COLLATE utf8_polish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mv_menu_locale_I_1` (`idlocale`),
  KEY `idmenu` (`idmenu`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=7 ;

--
-- Zrzut danych tabeli `mv_menu_locale`
--

INSERT INTO `mv_menu_locale` (`id`, `idmenu`, `idlocale`, `title`, `description`, `content_type`, `slug`, `metakeywords`, `metadescription`) VALUES
(1, 1, 1, 'O nas', '<div><strong><br /></strong></div>', 1, 'O-nas', 'SenTbox, broker usług kurierskich, wysyłać paczki, kurier, wysyłaj taniej, tani kurier, tanie przesyłki, przesyłki kurierskie, tania paczka, paczki, firmy kurierskie, UPS, K-ex', 'SenTbox - broker usług kurierskich. Już teraz przesyłki kurierskie wysyłaj taniej o 50%! Wysoką jakość gwarantują firmy kurierskie UPS i K-ex.\r\n'),
(3, 3, 1, 'Cennik', '<table class=\\"UniTable\\" style=\\"border-collapse: collapse; width: 494px; height: 340px;\\" border=\\"0\\" cellspacing=\\"0\\" cellpadding=\\"0\\" align=\\"center\\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\\"2\\" width=\\"614\\" valign=\\"top\\">\r\n<p style=\\"text-align: left;\\"><strong><span style=\\"color: #3B8187;\\">Cennik usług kurierskich</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\\"245\\" valign=\\"top\\">\r\n<p style=\\"text-align: left;\\">&nbsp;</p>\r\n</td>\r\n<td style=\\"width: 185px;\\" valign=\\"middle\\">\r\n<p style=\\"text-align: center;\\"><img src=\\"/data/cms_content/images/k-ex_logo.png\\" alt=\\"\\" width=\\"70\\" height=\\"25\\" /></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\\"205\\" valign=\\"top\\">\r\n<p>Doręczenie następnego dnia roboczego:</p>\r\n<p align=\\"center\\">1-30 kg<br />31-70 kg</p>\r\n</td>\r\n<td style=\\"width: 205px;\\" valign=\\"top\\">\r\n<p align=\\"center\\">&nbsp;</p>\r\n<p align=\\"center\\"><br />17,00<br />---</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\\"205\\" valign=\\"top\\">\r\n<p style=\\"text-align: center;\\">Gwarantowane doręczenie do końca następnego dnia roboczego <br />(UPS saver, UPS Express plus)</p>\r\n<p align=\\"center\\">1-30 kg<br />31-70 kg</p>\r\n</td>\r\n<td width=\\"205\\" valign=\\"top\\">\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p align=\\"center\\">---<br />---</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\\"2\\" width=\\"614\\" valign=\\"top\\">\r\n<p style=\\"text-align: left;\\"><strong><span style=\\"color: #3B8187;\\">Usługi dodatkowe:</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\\"205\\" valign=\\"top\\">\r\n<p style=\\"text-align: center;\\">Przesyłka pobraniowa</p>\r\n</td>\r\n<td width=\\"205\\" valign=\\"top\\">\r\n<p align=\\"center\\">5 zł + 1% wartości pobrania</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\\"205\\" valign=\\"top\\">\r\n<p style=\\"text-align: center;\\">Ubezpieczenie przesyłki do 50000zł</p>\r\n</td>\r\n<td width=\\"205\\" valign=\\"top\\">\r\n<p align=\\"center\\">3,00 zł</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\\"205\\" valign=\\"top\\">\r\n<p style=\\"text-align: center;\\">Opłata za element niestandardowy</p>\r\n</td>\r\n<td width=\\"205\\" valign=\\"top\\">\r\n<p style=\\"text-align: center;\\">14 zł</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\\"205\\" valign=\\"top\\">\r\n<p style=\\"text-align: center;\\">Monitorowanie przesyłki</p>\r\n</td>\r\n<td width=\\"205\\" valign=\\"top\\">\r\n<p style=\\"text-align: center;\\">bezpłatne</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\\"205\\" valign=\\"top\\">\r\n<p style=\\"text-align: center;\\">Monitorowanie przesyłki przez SMS</p>\r\n</td>\r\n<td width=\\"205\\" valign=\\"top\\">\r\n<p style=\\"text-align: center;\\">niedostępne</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\\"205\\" valign=\\"top\\">\r\n<p style=\\"text-align: center;\\">Potwierdzenie doręczenia</p>\r\n</td>\r\n<td width=\\"205\\" valign=\\"top\\">\r\n<p style=\\"text-align: center;\\">2,5 zł</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\\"205\\" valign=\\"top\\">\r\n<p style=\\"text-align: center;\\">Dostawa w sobotę</p>\r\n</td>\r\n<td width=\\"205\\" valign=\\"top\\">\r\n<p style=\\"text-align: center;\\">30 zł</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\\"205\\" valign=\\"top\\">\r\n<p style=\\"text-align: center;\\">Anulowanie nadania</p>\r\n</td>\r\n<td width=\\"205\\" valign=\\"top\\">\r\n<p style=\\"text-align: center;\\">2 zł</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\\"205\\" valign=\\"top\\">\r\n<p style=\\"text-align: center;\\">Zwrot dokument&oacute;w</p>\r\n</td>\r\n<td width=\\"205\\" valign=\\"top\\">\r\n<p style=\\"text-align: center;\\">7 zł</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\\"font-size:11px\\">Podane ceny są cenami netto</p>', 1, 'Cennik', 'KEX, paczka, kg, cennik, usług kurierskich, tani kurier, wysyłaj taniej, tania przesyłka,ceny, od 17zł', 'Ceny przesyłek kurierem już od 17zł. Sprawdź nasz cennik i wysyłaj paczki taniej nawet o 50%. Najtańszy kurier w Szczecinie! Zachodniopomorskie'),
(4, 4, 1, 'FAQ', '', 1, 'FAQ', '', ''),
(5, 5, 1, 'Współpraca', '<div><strong>Wsp&oacute;łpraca</strong></div>\r\n<div><br /></div>\r\n<div>Oferujemy możliwość wysyłania paczek za pośrednictwem największej, najnowocześniejszej i w pełni zautomatyzowanej aplikacji internetowej we wsp&oacute;łpracy z K-ex i UPS. Dla Ciebie stworzyliśmy specjalny program partnerski, dzięki kt&oacute;remu możesz korzystać z prog&oacute;w rabatowych w ramach ścisłej wsp&oacute;łpracy. Wysyłaj już 5 paczek miesięcznie, a do Twojego konta zostanie przypisany stały rabat w wysokości 2%. Kolejne progi znajdziesz w tabeli poniżej.</div>\r\n<div><br /></div>\r\n<div>10 paczek --&gt; 3%</div>\r\n<div>15 paczek --&gt; 4%</div>\r\n<div>20 paczek --&gt; 5%</div>\r\n<div>21 + &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --&gt; rabat negocjowany</div>\r\n<div><br /></div>\r\n<div>Każdy kto wysyła więcej niż 21 paczek w miesiącu jest uprawiony do rabat&oacute;w specjalnych, w celu ich negocjacji należy skontaktować się mailowo za pośrednictwem biuro@sentbox.pl. GlobalBox.pl jest aplikacją pomagającą zoptymalizować koszty przepływu towar&oacute;w młodych firm oraz klient&oacute;w indywidualnych bez żadnych um&oacute;w, wystarczy się tylko zarejestrować.&nbsp;</div>\r\n<div><br /></div>\r\n<div>W ramach promocji GlobalBox rozdaje kupony rabatowe za promowanie aplikacji, więcej na: www.facebook.com/sentboxpl</div>', 1, 'Wspolpraca', 'Współpraca, K-ex, UPS, rabat, rabat negocjowany, facebook, stały rabat, wysyłaj taniej, tanie przesyłki, program partnerski, paczki, jakość', 'Korzystaj regularnie z usług i załap się na program partnerski. Otrzymaj stały rabat i wysyłaj paczki jeszcze taniej. Jakość gwarantuje współpraca z UPS i K-ex.'),
(6, 6, 1, 'Kontakt', '<p>&nbsp;</p>\r\n<p><strong>Kontakt</strong></p>\r\n<p><strong>GlobalBox</strong><br /> ul. Kr&oacute;lowej Jadwigi 3 <br />70-300 Szczecin</p>\r\n<p>email: <a href=\\"mailto:biuro@globalbox.pl\\">biuro@globalbox.pl</a></p>\r\n<p><strong>Telefon</strong></p>\r\n<p>515 360 456</p>\r\n<p>&nbsp;</p>', 1, 'Kontakt', 'kontakt kurier, kontakt paczki, kontakt kurier ups, kex, dhl', 'broker kurierski Sentbox pozwala wysyłać tanie paczki, już dziś wyślij przesyłke kurierem za pół ceny. Wysyłaj taniej sentbox.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mv_menu_locale_banner`
--

CREATE TABLE IF NOT EXISTS `mv_menu_locale_banner` (
  `idbanner` int(11) NOT NULL AUTO_INCREMENT,
  `idmenulocale` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `sequence` int(11) NOT NULL,
  PRIMARY KEY (`idbanner`),
  KEY `idmenulocale` (`idmenulocale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mv_news`
--

CREATE TABLE IF NOT EXISTS `mv_news` (
  `idnews` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idnews`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mv_news_locale`
--

CREATE TABLE IF NOT EXISTS `mv_news_locale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idnews` int(11) NOT NULL,
  `idlocale` int(11) NOT NULL,
  `title` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `content` text COLLATE utf8_polish_ci NOT NULL,
  `slug` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `meta_keywords` varchar(200) COLLATE utf8_polish_ci DEFAULT NULL,
  `meta_description` varchar(200) COLLATE utf8_polish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mv_news_locale_I_1` (`idlocale`),
  KEY `idnews` (`idnews`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mv_secured_group`
--

CREATE TABLE IF NOT EXISTS `mv_secured_group` (
  `idgroup` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `group_description` text COLLATE utf8_polish_ci NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idgroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mv_seo`
--

CREATE TABLE IF NOT EXISTS `mv_seo` (
  `idseo` int(11) NOT NULL AUTO_INCREMENT,
  `meta_title` varchar(200) COLLATE utf8_polish_ci DEFAULT NULL,
  `meta_keywords` varchar(200) COLLATE utf8_polish_ci DEFAULT NULL,
  `meta_description` varchar(200) COLLATE utf8_polish_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `idowner` int(11) NOT NULL,
  `ownertype` varchar(32) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`idseo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sb_countries`
--

CREATE TABLE IF NOT EXISTS `sb_countries` (
  `id_country` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `culture_name` varchar(6) COLLATE utf8_polish_ci NOT NULL,
  `sequence` int(11) NOT NULL,
  `visible` int(11) NOT NULL,
  PRIMARY KEY (`id_country`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `sb_countries`
--

INSERT INTO `sb_countries` (`id_country`, `country_name`, `culture_name`, `sequence`, `visible`) VALUES
(1, 'Polska', 'pl', 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sb_coupons`
--

CREATE TABLE IF NOT EXISTS `sb_coupons` (
  `id_coupon` int(11) NOT NULL AUTO_INCREMENT,
  `id_series` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `kod_promocyjny` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `procent` decimal(4,2) NOT NULL,
  `utilized` tinyint(1) NOT NULL DEFAULT '0',
  `expire_date` date DEFAULT NULL,
  PRIMARY KEY (`id_coupon`),
  UNIQUE KEY `kod_promocyjny` (`kod_promocyjny`),
  KEY `id_series` (`id_series`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=11 ;

--
-- Zrzut danych tabeli `sb_coupons`
--

INSERT INTO `sb_coupons` (`id_coupon`, `id_series`, `created_date`, `kod_promocyjny`, `procent`, `utilized`, `expire_date`) VALUES
(1, 18, '2014-05-14', 'SB-18B76B0D', 5.00, 0, '2014-06-11'),
(2, 18, '2014-05-14', 'SB-18BA73D8', 5.00, 0, '2014-06-11'),
(3, 18, '2014-05-14', 'SB-18BA7B2B', 5.00, 0, '2014-06-11'),
(4, 18, '2014-05-14', 'SB-18BA81A4', 5.00, 0, '2014-06-11'),
(5, 18, '2014-05-14', 'SB-18BA8831', 5.00, 0, '2014-06-11'),
(6, 18, '2014-05-14', 'SB-18BA8E81', 5.00, 0, '2014-06-11'),
(7, 18, '2014-05-14', 'SB-18BA94E1', 5.00, 0, '2014-06-11'),
(8, 18, '2014-05-14', 'SB-18BA9B4A', 5.00, 0, '2014-06-11'),
(9, 18, '2014-05-14', 'SB-18BAA192', 5.00, 0, '2014-06-11'),
(10, 18, '2014-05-14', 'SB-18BAA85C', 5.00, 0, '2014-06-11');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sb_invoice_data`
--

CREATE TABLE IF NOT EXISTS `sb_invoice_data` (
  `id_user` int(11) NOT NULL,
  `inv_name` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `inv_postal` varchar(12) COLLATE utf8_polish_ci NOT NULL,
  `inv_city` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `inv_street` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `inv_house` varchar(32) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sb_invoice_downloads`
--

CREATE TABLE IF NOT EXISTS `sb_invoice_downloads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` int(11) NOT NULL,
  `download_date` datetime NOT NULL,
  `client_ip` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sb_invoice_downloads_I_1` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sb_orders`
--

CREATE TABLE IF NOT EXISTS `sb_orders` (
  `id_order` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_recipient` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `package_height` int(11) NOT NULL,
  `package_width` int(11) NOT NULL,
  `package_length` int(11) NOT NULL,
  `package_weight` decimal(6,2) NOT NULL,
  `package_options` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `pobranie` decimal(8,2) DEFAULT NULL,
  `price_regular` decimal(8,2) NOT NULL,
  `id_coupon` int(11) DEFAULT NULL,
  `comments` text COLLATE utf8_polish_ci,
  `price_final` decimal(8,2) NOT NULL,
  `id_payment` int(11) DEFAULT NULL,
  `invoice_cnt` int(11) DEFAULT NULL,
  `invoice_nr` varchar(100) COLLATE utf8_polish_ci DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `invoice_netto` decimal(8,2) DEFAULT NULL,
  `invoice_vat` decimal(6,2) DEFAULT NULL,
  `invoice_brutto` decimal(8,2) DEFAULT NULL,
  `invoice_text` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `order_status` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_date` date DEFAULT NULL,
  `shipping_number` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `prn` varchar(64) COLLATE utf8_polish_ci DEFAULT NULL,
  `shipping_company` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `carrier_charge` decimal(6,2) DEFAULT NULL,
  `package_sent` tinyint(1) NOT NULL DEFAULT '0',
  `package_delivered` tinyint(1) NOT NULL DEFAULT '0',
  `error_report` text COLLATE utf8_polish_ci,
  `ubezpieczenie` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id_order`),
  KEY `id_user` (`id_user`),
  KEY `id_coupon` (`id_coupon`),
  KEY `id_payment` (`id_payment`),
  KEY `id_recipient` (`id_recipient`),
  KEY `order_status` (`order_status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=187 ;

--
-- Zrzut danych tabeli `sb_orders`
--

INSERT INTO `sb_orders` (`id_order`, `id_user`, `id_recipient`, `order_date`, `package_height`, `package_width`, `package_length`, `package_weight`, `package_options`, `pobranie`, `price_regular`, `id_coupon`, `comments`, `price_final`, `id_payment`, `invoice_cnt`, `invoice_nr`, `invoice_date`, `invoice_netto`, `invoice_vat`, `invoice_brutto`, `invoice_text`, `order_status`, `shipping_date`, `shipping_number`, `prn`, `shipping_company`, `carrier_charge`, `package_sent`, `package_delivered`, `error_report`, `ubezpieczenie`) VALUES
(180, 84, 131, '2014-05-28', 22, 22, 2, 1.00, 'KEX_STANDARD', 0.00, 20.11, NULL, NULL, 20.11, NULL, 2, 'F-S/2/2014', '2014-05-28', 16.35, 0.23, 20.11, 'Usługa kurierska: przesłanie paczki', 0, NULL, NULL, NULL, 'kex', NULL, 0, 0, NULL, 0.00),
(186, 84, 131, '2014-06-02', 10, 10, 10, 1.00, 'KEX_LIST', NULL, 20.11, NULL, NULL, 20.11, NULL, 3, 'F-S/3/2014', '2014-06-02', 16.35, 0.23, 20.11, 'Usługa kurierska: przesłanie paczki', 0, NULL, NULL, NULL, 'kex', NULL, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sb_package_content`
--

CREATE TABLE IF NOT EXISTS `sb_package_content` (
  `id_content` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id_content`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=27 ;

--
-- Zrzut danych tabeli `sb_package_content`
--

INSERT INTO `sb_package_content` (`id_content`, `nazwa`) VALUES
(1, 'Alkoholowe napoje'),
(2, 'Biżuteria, zegarki, gotówka, bony, talony'),
(3, 'nazwa'),
(4, 'nazwa'),
(5, 'Dla dzieci  zabawki, wózki, foteliki, itd.'),
(6, 'Dokumenty'),
(7, 'Dom i ogród – wyposażenie'),
(8, 'Elektronika, komputery, telefony'),
(9, 'Erotyczne i pornograficzne materiały'),
(10, 'Fotografia – aparaty, akcesoria'),
(11, 'Kosmetyki'),
(12, 'Kość słoniowa, art. z kości słoniowej'),
(13, 'Książki, art. biurowe i szkolne'),
(14, 'Medyczne materiały i środki opatrunkowe'),
(15, 'Medyczne urządzenia i akcesoria'),
(16, 'Motoryzacyjne art.  i akcesoria'),
(17, 'Odzież, obuwie, galanteria'),
(18, 'Próbki towarów'),
(19, 'Rolnicze art. i narzędzia'),
(20, 'Skóry zwierząt niedomowych, futra'),
(21, 'Sportowe i turystyczne artykuły i sprzęt'),
(22, 'Spożywcze artykuły niepsujące się'),
(23, 'Sztuka, antyki, złoto, srebro'),
(24, 'Towary łatwo psujące się, żywe rośliny, leki'),
(25, 'Tytoń i wyroby tytoniowe'),
(26, 'Znaczki pocztowe wysokiej wartości');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sb_payments`
--

CREATE TABLE IF NOT EXISTS `sb_payments` (
  `id_payment` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `payed_amount` decimal(8,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_payment`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sb_prices`
--

CREATE TABLE IF NOT EXISTS `sb_prices` (
  `idprice` int(11) NOT NULL AUTO_INCREMENT,
  `idservice` int(11) NOT NULL,
  `weight_treshold` int(11) NOT NULL,
  `cena_zakupu` decimal(6,2) DEFAULT NULL,
  `narzut_staly` decimal(6,2) DEFAULT NULL,
  `narzut_procentowy` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`idprice`),
  KEY `idservice` (`idservice`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=103 ;

--
-- Zrzut danych tabeli `sb_prices`
--

INSERT INTO `sb_prices` (`idprice`, `idservice`, `weight_treshold`, `cena_zakupu`, `narzut_staly`, `narzut_procentowy`) VALUES
(1, 1, 30, 25.00, NULL, NULL),
(5, 2, 5, 81.30, NULL, NULL),
(6, 4, 30, 16.10, NULL, NULL),
(11, 8, 1000, NULL, 5.00, 1.00),
(12, 4, 50, 35.15, NULL, NULL),
(16, 1, 50, 81.70, NULL, NULL),
(17, 1, 55, 110.50, NULL, NULL),
(20, 12, 100000, NULL, 2.00, 0.00),
(21, 14, 10000, NULL, 4.80, 0.00),
(23, 4, 55, 42.95, NULL, NULL),
(24, 4, 60, 43.80, NULL, NULL),
(25, 4, 65, 49.95, NULL, NULL),
(26, 4, 70, 50.80, NULL, NULL),
(27, 3, 30, 17.00, NULL, NULL),
(28, 3, 50, 40.50, NULL, NULL),
(30, 3, 60, 46.00, NULL, NULL),
(31, 3, 70, 53.00, NULL, NULL),
(32, 1, 60, 127.40, NULL, NULL),
(33, 1, 65, 140.00, NULL, NULL),
(34, 1, 70, 158.50, NULL, NULL),
(35, 2, 10, 85.10, NULL, NULL),
(36, 2, 20, 90.20, NULL, NULL),
(37, 2, 30, 97.50, NULL, NULL),
(38, 2, 50, 110.10, NULL, NULL),
(39, 2, 55, 128.20, NULL, NULL),
(40, 2, 60, 140.20, NULL, NULL),
(41, 2, 65, 148.50, NULL, NULL),
(42, 2, 70, 162.00, NULL, NULL),
(43, 5, 1, 17.00, NULL, NULL),
(56, 7, 1000, 291.00, NULL, NULL),
(67, 28, 1000, NULL, 15.00, NULL),
(69, 30, 1000, NULL, 5.00, NULL),
(70, 31, 1000, NULL, 20.00, NULL),
(72, 33, 1000, NULL, 19.00, NULL),
(76, 17, 1000, NULL, 3.00, NULL),
(78, 20, 1000, NULL, 2.50, NULL),
(81, 23, 1000, NULL, 7.00, NULL),
(82, 26, 1000, NULL, 2.50, NULL),
(84, 35, 10000, NULL, NULL, 15.50),
(85, 36, 10000, NULL, NULL, 9.00),
(87, 38, 1000, NULL, 5.00, 1.00),
(88, 7, 100, 110.00, NULL, NULL),
(89, 7, 150, 139.00, NULL, NULL),
(92, 7, 300, 161.00, NULL, NULL),
(93, 7, 500, 191.00, NULL, NULL),
(94, 7, 800, 241.00, NULL, NULL),
(95, 39, 1, 14.00, NULL, NULL),
(96, 39, 5, 15.00, NULL, NULL),
(97, 39, 10, 16.00, NULL, NULL),
(98, 39, 15, 17.00, NULL, NULL),
(99, 39, 20, 18.00, NULL, NULL),
(100, 39, 30, 26.00, NULL, NULL),
(101, 40, 1, 10.00, NULL, NULL),
(102, 7, 80, 105.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sb_recipients`
--

CREATE TABLE IF NOT EXISTS `sb_recipients` (
  `id_recipient` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `recipient_name` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `id_country` int(11) NOT NULL,
  `postal` varchar(32) COLLATE utf8_polish_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `street` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `house` varchar(32) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_polish_ci DEFAULT NULL,
  `telefon` varchar(64) COLLATE utf8_polish_ci DEFAULT NULL,
  PRIMARY KEY (`id_recipient`),
  KEY `id_user` (`id_user`),
  KEY `id_country` (`id_country`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=134 ;

--
-- Zrzut danych tabeli `sb_recipients`
--

INSERT INTO `sb_recipients` (`id_recipient`, `id_user`, `recipient_name`, `id_country`, `postal`, `city`, `street`, `house`, `email`, `telefon`) VALUES
(130, 84, 'dfsfdsfd', 1, '78-300', 'Swdiwin', 'dsdfdwsfdfds', '34', 'jdjas@wp.pl', '231321312'),
(131, 84, 'Misiuu', 1, '78-300', 'Świdwin', 'Tuwima', '8', 'osa9113@wp.pl', '312213541'),
(132, 84, 'sda', 1, '78-300', 'asdsad', 'dsadsad', '2', 'dsadsa@wp.pl', '231323141'),
(133, 84, 'dsad', 1, '78-300', 'asdsad', 'dsadsad', '2', 'dsadsa@wp.pl', '231323141');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sb_series`
--

CREATE TABLE IF NOT EXISTS `sb_series` (
  `id_series` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` date NOT NULL,
  `valid_to` date NOT NULL,
  `procent` decimal(4,2) NOT NULL,
  `ilosc` int(11) NOT NULL,
  `wykorzystano` int(11) NOT NULL,
  PRIMARY KEY (`id_series`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=19 ;

--
-- Zrzut danych tabeli `sb_series`
--

INSERT INTO `sb_series` (`id_series`, `created_date`, `valid_to`, `procent`, `ilosc`, `wykorzystano`) VALUES
(18, '2014-05-14', '2014-06-11', 5.00, 10, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sb_services`
--

CREATE TABLE IF NOT EXISTS `sb_services` (
  `idservice` int(11) NOT NULL AUTO_INCREMENT,
  `firma` enum('ups','kex') COLLATE utf8_polish_ci NOT NULL DEFAULT 'ups',
  `service_group` varchar(64) COLLATE utf8_polish_ci NOT NULL,
  `service_name` varchar(32) COLLATE utf8_polish_ci NOT NULL,
  `service_description` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `control_type` enum('radio','checkbox','narzut') COLLATE utf8_polish_ci NOT NULL DEFAULT 'checkbox',
  PRIMARY KEY (`idservice`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=41 ;

--
-- Zrzut danych tabeli `sb_services`
--

INSERT INTO `sb_services` (`idservice`, `firma`, `service_group`, `service_name`, `service_description`, `control_type`) VALUES
(1, 'ups', 'delivery', 'UPS_EXPRESS', 'Doręczenie następnego dnia roboczego do  godziny 12', 'radio'),
(2, 'ups', 'delivery', 'UPS_EXPRESS_PLUS', 'Doręczenie następnego dnia roboczego do godziny 9', 'radio'),
(3, 'ups', 'delivery', 'UPS_EXPRESS_SAVER', 'Gwarantowane doręczenie do końca następnego dnia roboczego ', 'radio'),
(4, 'ups', 'delivery', 'UPS_STANDARD', 'Przesyłka standardowa UPS', 'radio'),
(5, 'ups', 'delivery', 'UPS_LIST', 'Przesyłka List UPS Express', 'radio'),
(7, 'kex', 'usluga', 'KEX_LTL', 'K-EX Przesyłka paletowa', 'radio'),
(8, 'kex', 'pobrania', 'KEX_COD', 'Przesyłka za pobraniem', 'checkbox'),
(12, 'ups', 'marza_sentbox', 'marza_sentbox', 'Marża SentBox', 'narzut'),
(14, 'kex', 'marza_sentbox', 'marza_sentbox', 'Marża global', 'narzut'),
(17, 'kex', 'insurance', 'KEX_INSURANCE', 'Ubezpieczenie przesyłki do 50000zł', 'checkbox'),
(20, 'kex', 'confirm', 'KEX_CONFIRMATION', 'Potwierdzenie doręczenia', 'checkbox'),
(23, 'kex', 'return', 'KEX_RETURN', 'Zwrot dokumentów', 'checkbox'),
(26, 'ups', 'insurranse', 'UPS_INSURANCE', 'Ubezpieczenie przesyłki do 50000zł', 'checkbox'),
(28, 'ups', 'notstandard', 'UPS_NOT_STANDARD', 'Opłata za element niestandardowy', 'checkbox'),
(30, 'ups', 'confirmation', 'UPS_CONFIRMATION', 'Potwierdzenie doręczenia', 'checkbox'),
(31, 'ups', 'saturday', 'UPS_SATURDAY', 'Dostawa w sobotę', 'checkbox'),
(33, 'ups', 'return', 'UPS_RETURN', 'Zwrot dokumentów', 'checkbox'),
(35, 'kex', 'fuel_kex', 'FUEL_KEX', 'opłata paliwowa', 'narzut'),
(36, 'ups', 'oplatapaliwowa', 'FUEL_UPS', 'oplata paliwowa', 'narzut'),
(38, 'ups', 'pobrania', 'UPS_COD', 'Przesyłka za pobraniem', 'checkbox'),
(39, 'kex', 'usluga', 'KEX_STANDARD', 'K-EX Paczka', 'radio'),
(40, 'kex', 'usluga', 'KEX_LIST', 'K-EX Przesyłka List', 'radio');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sb_statusy_przesylek`
--

CREATE TABLE IF NOT EXISTS `sb_statusy_przesylek` (
  `idstatus` tinyint(11) NOT NULL,
  `status_name` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `status_description` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `sb_statusy_przesylek`
--

INSERT INTO `sb_statusy_przesylek` (`idstatus`, `status_name`, `status_description`) VALUES
(0, 'utworzona', 'Utworzona'),
(1, 'oplacona', 'Opłacona, oczekuje na akceptację'),
(2, 'wprowadzona', 'Wprowadzona do systemy, kurier wysłany'),
(3, 'odebrana', 'Przesyłka przekazana kurierowi'),
(4, 'doreczona', 'Przesyłka doręczona'),
(5, 'zwrot', 'Przesyłka zwrócona do nadawcy'),
(6, 'anulowana', 'Przesyłka anulowana');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sb_users`
--

CREATE TABLE IF NOT EXISTS `sb_users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `passhash` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `postal` varchar(32) COLLATE utf8_polish_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `idstate` int(11) NOT NULL,
  `city` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `street` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `house` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `telefon` varchar(64) COLLATE utf8_polish_ci DEFAULT NULL,
  `gsm` varchar(16) COLLATE utf8_polish_ci DEFAULT NULL COMMENT 'nr tel komorkowego',
  `NIP` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `regulations` tinyint(1) NOT NULL DEFAULT '0',
  `created_date` date NOT NULL,
  `rabat_procentowy` decimal(4,2) DEFAULT NULL,
  `rachunek` varchar(120) COLLATE utf8_polish_ci DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `email` (`email`),
  KEY `idstate` (`idstate`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=85 ;

--
-- Zrzut danych tabeli `sb_users`
--

INSERT INTO `sb_users` (`id_user`, `email`, `passhash`, `status`, `postal`, `username`, `idstate`, `city`, `street`, `house`, `telefon`, `gsm`, `NIP`, `regulations`, `created_date`, `rabat_procentowy`, `rachunek`) VALUES
(84, 'osa9113@wp.pl', 'b81b6845d01aa2e8161a307844e8b81bbd97373e', 1, '78-300', 'adam', 2, 'Świdwin', 'tttfgdgfgfd', '8', '34223432423', NULL, '324324325', 1, '2014-04-06', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sb_wojewodztwa`
--

CREATE TABLE IF NOT EXISTS `sb_wojewodztwa` (
  `kod` int(11) NOT NULL,
  `wojewodztwo` varchar(64) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`kod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `sb_wojewodztwa`
--

INSERT INTO `sb_wojewodztwa` (`kod`, `wojewodztwo`) VALUES
(2, 'dolnoslaskie'),
(4, 'kujawsko-pomorskie'),
(6, 'lubelskie'),
(8, 'lubuskie'),
(10, 'lodzkie'),
(12, 'malopolskie'),
(14, 'mazowieckie'),
(16, 'opolskie'),
(18, 'podkarpackie'),
(20, 'podlaskie'),
(22, 'pomorskie'),
(24, 'slaskie'),
(26, 'swietokrzyskie'),
(28, 'warminsko-mazurskie'),
(30, 'wielkopolskie'),
(32, 'zachodniopomorskie');

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `mv_article`
--
ALTER TABLE `mv_article`
  ADD CONSTRAINT `mv_article_FK_1` FOREIGN KEY (`idmenu`) REFERENCES `mv_menu` (`idmenu`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `mv_article_locale`
--
ALTER TABLE `mv_article_locale`
  ADD CONSTRAINT `mv_article_locale_FK_1` FOREIGN KEY (`idarticle`) REFERENCES `mv_article` (`idarticle`) ON DELETE CASCADE,
  ADD CONSTRAINT `mv_article_locale_FK_2` FOREIGN KEY (`idlocale`) REFERENCES `mv_culture` (`idculture`);

--
-- Ograniczenia dla tabeli `mv_fotos`
--
ALTER TABLE `mv_fotos`
  ADD CONSTRAINT `mv_fotos_FK_1` FOREIGN KEY (`idgallery`) REFERENCES `mv_gallery` (`idgallery`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `mv_foto_locale`
--
ALTER TABLE `mv_foto_locale`
  ADD CONSTRAINT `mv_foto_locale_FK_1` FOREIGN KEY (`idfoto`) REFERENCES `mv_fotos` (`idfoto`) ON DELETE CASCADE,
  ADD CONSTRAINT `mv_foto_locale_FK_2` FOREIGN KEY (`idlocale`) REFERENCES `mv_culture` (`idculture`);

--
-- Ograniczenia dla tabeli `mv_gal2art`
--
ALTER TABLE `mv_gal2art`
  ADD CONSTRAINT `mv_gal2art_FK_1` FOREIGN KEY (`idarticle`) REFERENCES `mv_article` (`idarticle`) ON DELETE CASCADE,
  ADD CONSTRAINT `mv_gal2art_FK_2` FOREIGN KEY (`idgallery`) REFERENCES `mv_gallery` (`idgallery`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `mv_gallery_locale`
--
ALTER TABLE `mv_gallery_locale`
  ADD CONSTRAINT `mv_gallery_locale_FK_1` FOREIGN KEY (`idgallery`) REFERENCES `mv_gallery` (`idgallery`) ON DELETE CASCADE,
  ADD CONSTRAINT `mv_gallery_locale_FK_2` FOREIGN KEY (`idlocale`) REFERENCES `mv_culture` (`idculture`);

--
-- Ograniczenia dla tabeli `mv_menu`
--
ALTER TABLE `mv_menu`
  ADD CONSTRAINT `mv_menu_FK_1` FOREIGN KEY (`idparent`) REFERENCES `mv_menu` (`idmenu`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `mv_menu_locale`
--
ALTER TABLE `mv_menu_locale`
  ADD CONSTRAINT `mv_menu_locale_FK_1` FOREIGN KEY (`idmenu`) REFERENCES `mv_menu` (`idmenu`) ON DELETE CASCADE,
  ADD CONSTRAINT `mv_menu_locale_FK_2` FOREIGN KEY (`idlocale`) REFERENCES `mv_culture` (`idculture`);

--
-- Ograniczenia dla tabeli `mv_menu_locale_banner`
--
ALTER TABLE `mv_menu_locale_banner`
  ADD CONSTRAINT `mv_menu_locale_banner_FK_1` FOREIGN KEY (`idmenulocale`) REFERENCES `mv_menu_locale` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `mv_news_locale`
--
ALTER TABLE `mv_news_locale`
  ADD CONSTRAINT `mv_news_locale_FK_1` FOREIGN KEY (`idnews`) REFERENCES `mv_news` (`idnews`) ON DELETE CASCADE,
  ADD CONSTRAINT `mv_news_locale_FK_2` FOREIGN KEY (`idlocale`) REFERENCES `mv_culture` (`idculture`);

--
-- Ograniczenia dla tabeli `sb_coupons`
--
ALTER TABLE `sb_coupons`
  ADD CONSTRAINT `sb_coupons_ibfk_1` FOREIGN KEY (`id_series`) REFERENCES `sb_series` (`id_series`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sb_invoice_data`
--
ALTER TABLE `sb_invoice_data`
  ADD CONSTRAINT `sb_invoice_data_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `sb_users` (`id_user`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sb_invoice_downloads`
--
ALTER TABLE `sb_invoice_downloads`
  ADD CONSTRAINT `sb_invoice_downloads_FK_1` FOREIGN KEY (`id_order`) REFERENCES `sb_orders` (`id_order`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sb_orders`
--
ALTER TABLE `sb_orders`
  ADD CONSTRAINT `sb_orders_ibfk_12` FOREIGN KEY (`id_user`) REFERENCES `sb_users` (`id_user`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `sb_orders_ibfk_13` FOREIGN KEY (`id_recipient`) REFERENCES `sb_recipients` (`id_recipient`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `sb_orders_ibfk_14` FOREIGN KEY (`id_coupon`) REFERENCES `sb_coupons` (`id_coupon`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `sb_orders_ibfk_15` FOREIGN KEY (`order_status`) REFERENCES `sb_statusy_przesylek` (`idstatus`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `sb_payments`
--
ALTER TABLE `sb_payments`
  ADD CONSTRAINT `sb_payments_FK_1` FOREIGN KEY (`id_order`) REFERENCES `sb_orders` (`id_order`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sb_prices`
--
ALTER TABLE `sb_prices`
  ADD CONSTRAINT `sb_prices_ibfk_1` FOREIGN KEY (`idservice`) REFERENCES `sb_services` (`idservice`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `sb_recipients`
--
ALTER TABLE `sb_recipients`
  ADD CONSTRAINT `sb_recipients_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `sb_users` (`id_user`) ON DELETE CASCADE,
  ADD CONSTRAINT `sb_recipients_ibfk_2` FOREIGN KEY (`id_country`) REFERENCES `sb_countries` (`id_country`) ON DELETE NO ACTION;

--
-- Ograniczenia dla tabeli `sb_users`
--
ALTER TABLE `sb_users`
  ADD CONSTRAINT `sb_users_ibfk_1` FOREIGN KEY (`idstate`) REFERENCES `sb_wojewodztwa` (`kod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
