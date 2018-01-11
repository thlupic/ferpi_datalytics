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
     ymd(datumRodjenja) 
     stopifnot(isDate (datumRodjenja)) 
    
    }
  if(!is.na(adresa))stopifnot(is.character(adresa))
  if(!is.na(grad))stopifnot(is.character(grad))
  if(!is.na(drzava))stopifnot(is.character(drzava))
  if(!is.na(postanskiBroj))stopifnot(is.numeric(postanskiBroj))
  
  o <- list(oib = oib, ime=ime, prezime = prezime, datumRodjenja=datumRodjenja, adresa=adresa, grad= grad, drzava=drzava, postanskiBroj=postanskiBroj)
  class(o) <- "Osoba"
  o
}
