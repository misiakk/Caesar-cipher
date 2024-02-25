# encryption 
cezar_szyfr <- function(tekst, przesuniecie) {
  
  if (przesuniecie < 1 | przesuniecie > 25) {
    stop("podaj przesunięcie z przedziału 1-25")
  }
  
  # funkcja, która zmienia znaki
  zamien_znak <- function(znak, przesuniecie) {
    if (is.na(znak)) {
      return(NA)
    }
    
    # sprawdza, czy znak jest mala czy duza litera
    if (znak %in% letters) {
      alfabet <- letters
    } else if (znak %in% LETTERS) {
      alfabet <- LETTERS
    } else {
      # gdy trafi się cos innego niz litera to zwraca bez zmian
      return(znak)
    }
    
    # znalezienie indeksu w alfabecie
    indeks <- which(alfabet == znak)
    
    # przesuwa z uwzgledneiniem okresowości
    nowy_indeks <- (indeks + przesuniecie - 1) %% 26 + 1
    
    # zwraca przesuniety znak
    return(alfabet[nowy_indeks])
  }
  
  # zastosowanie funkcji dla kazdego znaku
  zaszyfrowany_tekst <- sapply(strsplit(tekst, NULL)[[1]], zamien_znak, przesuniecie)
  
  # zwrocenie wszystkiego jako ciag polaczonych znaków
  return(paste(zaszyfrowany_tekst, collapse = ""))
}

tekst_wejsciowy <- "Get this message to the main server"
przesuniecie <- 5
zaszyfrowany_tekst <- cezar_szyfr(tekst_wejsciowy, przesuniecie)

cat("oryginalny tekst: ", tekst_wejsciowy, "\n")
cat("zaszyfrowany tekst: ", zaszyfrowany_tekst, "\n")

# decryption

cezar_deszyfr <- function(zaszyfrowany_tekst, przesuniecie) {
  #  # funkcja, która zmienia znak
  zamien_znak <- function(znak, przesuniecie) {
    if (is.na(znak)) {
      return(NA)
    }
    
    # sprawdza, czy znak jest mala czy duza litera
    if (znak %in% letters) {
      alfabet <- letters
    } else if (znak %in% LETTERS) {
      alfabet <- LETTERS
    } else {
      # gdy trafi się cos innego niz litera to zwraca bez zmian
      return(znak)
    }
    
    # znalezienie indeksu w alfabecie
    indeks <- which(alfabet == znak)
    
    # przesuwa wstecz z uwzglednieniem okresowości
    nowy_indeks <- (indeks - przesuniecie - 1) %% 26 + 1
    
    # zwraca odszyfrowany znak
    return(alfabet[nowy_indeks])
  }
  
  # zastosowanie funkcji dla każdego znaku w zaszyfrowanym tekście
  odszyfrowany_tekst <- sapply(strsplit(zaszyfrowany_tekst, NULL)[[1]], zamien_znak, przesuniecie)
  
  # zwraca odszyfrowany tekst jako pojedynczy ciąg znaków
  return(paste(odszyfrowany_tekst, collapse = ""))
}
odszyfrowany_tekst <- cezar_deszyfr(zaszyfrowany_tekst, przesuniecie)

cat("zaszyfrowany tekst: ", zaszyfrowany_tekst, "\n")
cat("odszyfrowany tekst: ", odszyfrowany_tekst, "\n")
