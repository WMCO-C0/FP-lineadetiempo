# Víctimas de falsos positivos en Colombia
SELECT ?persona ?personaLabel ?fechaMuerte ?lugarMuerte ?lugarMuerteLabel ?imagen
WHERE {
  # Persona que es víctima de falsos positivos
  ?persona wdt:P31 wd:Q5 ;  # instancia de ser humano
           wdt:P793 wd:Q779179 ;  # evento significativo: falsos positivos en Colombia
           wdt:P157 wd:Q4115107 .  # asesinado por: Ejército Nacional de Colombia
  
  # Fecha de muerte
  OPTIONAL { ?persona wdt:P570 ?fechaMuerte . }
  
  # Lugar de muerte
  OPTIONAL { 
    ?persona wdt:P20 ?lugarMuerte .
  }
  
  # Imagen
  OPTIONAL { ?persona wdt:P18 ?imagen . }
  
  # Etiquetas en español
  SERVICE wikibase:label {
    bd:serviceParam wikibase:language "es,en" .
    ?persona rdfs:label ?personaLabel .
    ?lugarMuerte rdfs:label ?lugarMuerteLabel .
  }
}
ORDER BY DESC(?fechaMuerte)
LIMIT 100