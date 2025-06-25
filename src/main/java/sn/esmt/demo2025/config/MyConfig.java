package sn.esmt.demo2025.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import sn.esmt.demo2025.domain.Voiture;

@Configuration
public class MyConfig {

    // or forcage brut
    // @Value("$SUZUKI")
    @Value("${voiture1.id}")
    Long id;
    @Value("${voiture1.matricule}")
    String matricule;
    @Value("${voiture1.marque}")
    String marque;
    @Value("${voiture1.modele}")
    String modele;
    @Value("${voiture1.annee}")
    String annee;
    @Value("${voiture1.carburant}")
    String carburant;
    @Value("${voiture1.couleur}")
    String couleur;


    @Value("${voiture1.type}")String type;

    @Bean("laVoiture")
//    @Primary
    public Voiture mercedes(){
        Voiture mercedes = new Voiture();
        mercedes.setId(id);
        mercedes.setMarque(marque);
        mercedes.setModele(modele);
        mercedes.setAnnee(annee);
        mercedes.setCouleur(couleur);
        mercedes.setCarburant(carburant);
        mercedes.setType(type);
        mercedes.setMatricule(matricule);
        return mercedes;
    }

    @Bean
    public Voiture rangeover(){
        Voiture range = new Voiture();
        range.setId(1L);
        range.setMarque("Land Rover");
        range.setModele("Range Rover");
        range.setAnnee("2024");
        range.setCouleur("White");
        range.setCarburant("Diesel");
        range.setType("4x4");
        range.setMatricule("AA001AA");
        return range;
    }
}
