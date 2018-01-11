# potrebne biblioteke -----------------------------------------------------
library(lubridate)


# pomocne funkcije --------------------------------------------------------
IsDate <- function(mydate, date.format = "%y-%m-%d") {

  tryCatch(!is.na(as.Date(mydate, date.format)),  
           error = function(err) {FALSE})  
}

# klasaOsoba --------------------------------------------------------------

#argumenti koji fale zadavaju se kao na, datum treba biti bilo kojeg oblika a prevesti ce se 
#u format s gggg-mm-dd s tim da treba biti zadan u redosljedu gggg mm dd
Osoba <- function(oib, ime, prezime, datumRodjenja, adresa, grad, drzava, postanskiBroj) { 
  
  if(!is.na(oib)) stopifnot(is.character(oib))
  if(!is.na(ime))stopifnot(is.character(ime))
  if(!is.na(prezime))stopifnot(is.character(prezime))
  if(!is.na(datumRodjenja)) {
    datumRodjenja<-ymd(datumRodjenja)
     stopifnot(IsDate(datumRodjenja)) 
  }
  if(!is.na(adresa))stopifnot(is.character(adresa))
  if(!is.na(grad))stopifnot(is.character(grad))
  if(!is.na(drzava))stopifnot(is.character(drzava))
  if(!is.na(postanskiBroj))stopifnot(is.numeric(postanskiBroj))
  
  o <- list(oib=oib,ime=ime,prezime=prezime,datumRodjenja=datumRodjenja, adresa=adresa, grad= grad, drzava=drzava, postanskiBroj=postanskiBroj)
  class(o) <- "Osoba"
  o
}

#Pero<-Osoba("123","bb", NA,"1994.12/8","zvonigradska","zagreb","hrv",10000)

# klasaDokument -----------------------------------------------------------


Dokument <- function(imeDokument, putanja) { 
  
  if(!is.na(imeDokument)) stopifnot(is.character(imeDokument))
  if(!is.na(putanja))stopifnot(is.character(putanja))
  txt<- read_file(putanja)   #da li putanja ukljucuje i ime dokumenta
 
   d <- list(imeDokument= imeDokument, putanja=putanja, tekst=txt)
  class(d) <- "Dokument"
  d
}

dokPoba<- Dokument("proba.txt", "proba.txt")
dokPoba


# funkcijaZaTagove --------------------------------------------------------

tagFunkcija <- function(Dokument, ime, prezime){
  
  tagovi<-list()
  ifelse(str_detect(Dokument$tekst ,paste0("\\b",ime,"\\b")), tagovi[["tagIme"]]<- TRUE,  tagovi[["tagIme"]]<- FALSE)
  
  ifelse(str_detect(Dokument$tekst ,paste0("\\b",prezime,"\\b")), tagovi[["tagPrezime"]]<- TRUE,  tagovi[["tagPrezime"]]<- FALSE)
  if(tagovi[["tagIme"]]==TRUE || tagovi[["tagPrezime"]]==TRUE ) {
    
    ifelse(str_detect(Dokument$tekst ,paste0("\\b","\\d{11}","\\b")), tagovi[["tagOib"]]<- TRUE,  tagovi[["tagOib"]]<- FALSE)
    
  }
  
  tagovi
  
}

#tagFunkcija(dokPoba, "vlaho2", "ban")



