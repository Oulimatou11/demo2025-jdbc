package sn.esmt.demo2025.repositories;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import sn.esmt.demo2025.domain.Vehicule;

import java.util.List;

@Component
public class VoitureRepository implements VehiculeRepository{
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public int saveVehicule(Vehicule voiture) {
        String sql = "INSERT INTO voiture (matricule, marque, modele, annee, carburant, couleur, type) VALUES (?,?,?,?,?,?,?)";
        return jdbcTemplate.update(sql, voiture.getMatricule(), voiture.getMarque(), voiture.getModele(), voiture.getAnnee(), voiture.getCarburant(), voiture.getCouleur(), voiture.getType() );

    }

    @Override
    public void deleteVehicule(Vehicule vehicule) {
        String sql = "DELETE FROM voiture WHERE id = ?";
        jdbcTemplate.update(sql, vehicule.getId());

    }

    @Override
    public void deleteVehiculeById(Long id) {
        String sql = "DELETE FROM voiture WHERE id = ?";
        jdbcTemplate.update(sql, id);
    }

    @Override
    public List<Vehicule> getAllVehicules() {
        String sql = "SELECT * FROM voiture";
        List<Vehicule> voitures = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Vehicule.class));
        return voitures;
    }

    @Override
    public Vehicule getVehiculeById(Long id) {
        String sql = "SELECT * FROM voiture WHERE id = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<>(Vehicule.class));
    }

    @Override
    public int updateVehicule(Vehicule vehicule) {
        String sql = "UPDATE voiture SET matricule = ?, marque = ?, modele = ?, annee = ?, carburant = ?, couleur = ?, type = ? WHERE id = ?";
        return jdbcTemplate.update(sql, vehicule.getMatricule(), vehicule.getMarque(), vehicule.getModele(), vehicule.getAnnee(), vehicule.getCarburant(), vehicule.getCouleur(), vehicule.getType(), vehicule.getId());
    }
}
