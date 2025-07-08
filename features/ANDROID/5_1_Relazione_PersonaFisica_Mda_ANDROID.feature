Feature: 5_1_Relazione_PersonaFisica_Mda_ANDROID
  Scenario: 5_1_Relazione_PersonaFisica_Mda_ANDROID.feature
  
    Given LoginPage.loginButton should be present
    And I log in with the credentials of the "s.sciuto" user
    Then I click ViewingRoutesPage.routesSingleLabel
	And I click ViewingRoutesPage.Prospect
	When LocalDetailPage.compileReportButton should be visible
    Then I click LocalDetailPage.compileReportButton
	And I click LocalDetailPage.Mda_106
	And I click LocalDetailPage.compileReportButtonStart
	#######1 pagina######	
	And I "click" "View" with tag "Fisica"
    And I "check" "View" with tag "Anagrafica"
    And I "check" "View" with tag "Codice fiscale"
    And I "check" "View" with tag "Inserisci"
    And I "click" "View" with tag "Inserisci"
		And I "DPAD_DOWN" "View" with tag "" and text "CCRFRN90C44F258K"
		And I "click" "View" with tag "CCRFRN90C44F258K"
	And I scroll down until ReportPage2.postalCodeField is displayed
	#And I scroll down until ReportPage2.addressDropdownMenu is displayed
			#And I scroll down until ReportPage2.insertDropdownMenu is displayed
			#And I "click" "View" with tag "Inserisci"
			#And I "click" "EditText" with tag ""
			#And I "DPAD_DOWN" "EditText" with tag "" and text "raimondo"
			#And I "click" "View" with tag "92100"
	#And I scroll down until ReportPage2.streetNumberField is displayed
			And I "click" "ScrollView" with tag "EditText"
			And I "insert" "ScrollView" with tag "EditText" and text "111"
	#And I scroll down until ReportPage2.postalCodeField is displayed
	And I scroll down until ReportPage2.PECAddressField is displayed
	And I scroll down until ReportPage2.emailField is displayed
			And I "insert" "ScrollView" with tag "EditText[1]" and text "g.patti@reply.it"
			#solo sulla 106
			And I "click" "ScrollView" with tag "ImageView[1]" 
	#And I scroll down until ReportPage2.agreementCheckbox is displayed
	And I scroll down until ReportPage.confirmButton is displayed
	And I "click" "tasto" with tag "AVANTI"
	###############2 pagina###############################
	And I "check" "View" with tag "Informazioni locale accertato"
    And I "check" "View" with tag "Locale accertato"
	And I scroll down until ReportPage.GenereLocale is displayed
		And I scroll down until ReportPage2.select is displayed
		And I "click" "View" with tag "Seleziona"
		#And I "click" "View" with tag "Libreria"
		And I "DPAD_DOWN" "View" with tag "" and text "Albergo/hotel"
		And I "click" "View" with tag "Albergo/hotel"
	And I scroll down until ReportPage2.DenominazioneSpazio is displayed
		And I "insert" "ScrollView" with tag "EditText[2]" and text "2"
	And I scroll down until ReportPage2.CapienzaLocale is displayed
		
		And I "click" "view" with tag "Alloggio"
		#And I "click" "View" with tag "Libreria"
		And I "DPAD_DOWN" "View" with tag "" and text "Albergo/hotel"
		And I "click" "View" with tag "Albergo/hotel"
	#funziona
	And I "insert" "ScrollView" with tag "EditText[2]" and text "2"
	And I "insert" "ScrollView" with tag "EditText[3]" and text "3"
	And I "click" "View" with tag "SI"
		And I "click" "view" with tag "Seleziona"
		And I "click" "View" with tag "1"
	#And I scroll down until ReportPage.provinceDropdownMenu is displayed
	#And I scroll down until ReportPage.municipalityDropdownMenu is displayed
	#And I scroll down until ReportPage.addressDropdownMenu is displayed
	#And I scroll down until ReportPage.streetNumberField is displayed	
	And I scroll down until ReportPage.EventiSportivi is displayed
		#And I scroll down until ReportPage2.select is displayed
	And I scroll down until ReportPage.TipologiaDiAbbonamento is displayed
	And I "check" "View" with tag "Tipologia di abbonamento"
		And I scroll down until ReportPage.Dal is displayed
		And I "click" "viewnum" with tag "(Seleziona[2])"
		And I "click" "View" with tag "Annuale"
	And I scroll down until ReportPage.Dal is displayed
		And I scroll down until ReportPage.Dal is displayed
		And I "check" "View" with tag "Dal"
		And I "click" "view" with tag "Inserire"
		And I "click" "Button" with tag "9"
		And I "click" "Button" with tag "OK"
	And I scroll down until ReportPage.Al is displayed
	And I scroll down until ReportPage.confirmButton is displayed
	And I "click" "tasto" with tag "AVANTI"
		#3 pagina###################################################
And I "check" "View" with tag "Quanti apparecchi sono stati rilevati?"
    And I "check" "View" with tag "Seleziona tutti gli apparecchi rilevati"
    And I "click" "View" with tag "Apparecchi multimediali"
    And I "check" "View" with tag "Televisore"
    And I "check" "View" with tag "Radio Tradizionale"
    And I "check" "View" with tag "Lettore musicassette/CD"
    And I "check" "View" with tag "Radio in Store"
	And I scroll down until ReportPage.confirmButton is displayed
    And I "check" "View" with tag "MOSTRA PIÙ APPARECCHI"
	And I "click" "Button" with tag "AVANTI"
	#############5Pagina##########################
	 And I "check" "View" with tag "Apparecchi multimediali"
    And I "check" "View" with tag "Numero"
    And I "check" "View" with tag "Numero altoparlanti/monitor staccati"
    And I "insert" "FrameLayout2" with tag "EditText[1]" and text "1"
    And I "insert" "FrameLayout2" with tag "EditText[2]" and text "2"
	And I "insert" "FrameLayout2" with tag "EditText[3]" and text "3"
	And I scroll down until ReportPage.confirmButton is displayed
    And I "click" "Button" with tag "AVANTI"
	#############6Pagina##########################
	And I "check" "View" with tag "Repertorio eseguito al momento dell'accesso nel locale"
    And I "check" "View" with tag "Brani"
	And I "check" "View" with tag "Brano"
	And I scroll down until ReportPage.trackField is displayed
		And I "insert" "scrollview2" with tag "EditText[1]" and text "Gli Anni" 
	And I scroll down until ReportPage.Autore_Artista is displayed
		And I "insert" "scrollview2" with tag "EditText[2]" and text "883" 
    And I "check" "Button" with tag "AGGIUNGI BRANO"
	And I scroll down for 250 Millis or until "null" is displayed
	And I "check" "View" with tag "Palinsesto"
    And I "check" "View" with tag "Palinsesto dell'emittente"
	#And I "insert" "scrollview2" with tag "EditText" and text "5" 
	#And I "insert" "scrollview2" with tag "EditText[3]" and text "4" 
    And I "check" "View" with tag "Provider Radio In-Store"
    And I "check" "CheckBox" with tag ""
	And I scroll down until ReportPage.confirmButton is displayed
    And I "click" "Button" with tag "AVANTI"
	#--------------------------------------------------------------------
		#############7Pagina##########################
	And I "check" "View" with tag "Dichiarazione della parte"
    And I "check" "View" with tag "Nessuna dichiarazione"
    And I "check" "View" with tag "Nome"
    #And I "insert" "ScrollView" with tag "EditText[1]" and text "Gabriele"
    And I "check" "View" with tag "Cognome"
    #And I "insert" "scrollview2" with tag "EditText[2]" and text "patti"
    And I scroll down until ReportPage.LuogoDiNascita is displayed 
    And I "check" "View" with tag "Luogo di nascita"
    #And I "click" "viewnum" with tag "(Seleziona[1])"
    #And I "click" "View" with tag "Estero"
	And I scroll down until ReportPage.NatoIl is displayed 
    And I "check" "View" with tag "Nato/a il"
    #And I "click" "View" with tag "Seleziona"
    #And I "click" "Button" with tag "6"
    #And I "click" "Button" with tag "OK"
    And I scroll down for 200 Millis or until "null" is displayed
    And I "check" "View" with tag "Ruolo"
    And I "check" "View" with tag "Apparecchiature installate e funzionanti dal"
	And I scroll down until LocalDetailPage.EditText is displayed 
	And I "check" "View" with tag "Altre dichiarazioni"
    #And I "insert" "ScrollView2" with tag "EditText" and text "Altre dichiarazioni"
	And I scroll down until ReportPage.confirmButton is displayed
    And I "click" "Button" with tag "AVANTI"
	#############8Pagina##########################
	  	And I "check" "View" with tag "Riepilogo"
		#And I "check" "View" with tag "Relazione"
      And I "check" "View" with tag "Informazioni accertamento"
      And I "check" "View" with tag "Tipo relazione"
      And I "check" "View" with tag "Mda"
      And I "check" "View" with tag "Data accertamento"
      And I "check" "View" with tag "Accertatori"
	And I scroll down until ReportPage2.PersonaFisica is displayed
	And I scroll down until ReportPage2.localInformationTitle is displayed
	And I scroll down until ReportPage2.apparecchi is displayed
	And I scroll down until ReportPage2.repertorioEseguito is displayed
	And I scroll down until ReportPage2.Dichiarazionedellaparte is displayed
	
	#And I scroll down until ReportPage.devicesDropdownMenuSummary is displayed
	#And I scroll down until ReportPage.repertoirePerformedTitle is displayed
		
			And I scroll down until ReportPage.sendReportButton is displayed
		And I "click" "Button" with tag "INVIA RELAZIONE"
	#############9Pagina##########################
	And I "check" "ImageView" with tag "Invia relazione"
	And I "check" "Button" with tag "Invia e converti in atto di constatazione"
	And I "check" "Button" with tag "CONFERMA"
	And I "check" "Button" with tag "ANNULLA"
	And I "click" "Button" with tag "CONFERMA"
