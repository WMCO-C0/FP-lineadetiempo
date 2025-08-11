 SELECT DISTINCT ?persona ?personaLabel ?fechaMuerte ?lugarMuerteLabel ?imagen ?descripcion
                WHERE {
                    {
                        # Personas relacionadas con falsos positivos (diferentes formas de relacionar)
                        {
                            ?persona wdt:P793 wd:Q779179 .  # relacionado con falsos positivos
                        } UNION {
                            ?persona wdt:P1196/wdt:P279* wd:Q779179 .  # causa de muerte relacionada
                        } UNION {
                            ?persona wdt:P1343 wd:Q779179 .  # descrito en relación a falsos positivos
                        }
                        
                        # Filtros básicos
                        ?persona wdt:P31 wd:Q5 ;  # instancia de ser humano
                                wdt:P570 ?fechaMuerte .  # tiene fecha de muerte
                        
                        # Filtro de tiempo ampliado
                        FILTER(YEAR(?fechaMuerte) >= 1996 && YEAR(?fechaMuerte) <= 2014)
                    }
                    
                    # Lugar de muerte
                    OPTIONAL { 
                        ?persona wdt:P20 ?lugarMuerte .
                        ?lugarMuerte rdfs:label ?lugarMuerteLabel .
                        FILTER(LANG(?lugarMuerteLabel) = "es")
                    }
                    
                    # Imagen
                    OPTIONAL { ?persona wdt:P18 ?imagen . }
                    
                    # Descripción
                    OPTIONAL { 
                        ?persona schema:description ?descripcion .
                        FILTER(LANG(?descripcion) = "es")
                    }
                    
                    # Etiqueta en español
                    SERVICE wikibase:label {
                        bd:serviceParam wikibase:language "es,en" .
                        ?persona rdfs:label ?personaLabel .
                    }
                }
                ORDER BY ?fechaMuerte
                LIMIT 200