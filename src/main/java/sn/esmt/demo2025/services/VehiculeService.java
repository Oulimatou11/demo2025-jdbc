package sn.esmt.demo2025.services;

import sn.esmt.demo2025.domain.Vehicule;

import java.util.List;

public interface VehiculeService {
    List<Vehicule> getAllVehicules();
    Vehicule getVehiculeById(Long id);
    void addVehicule(Vehicule vehicule);
    void deleteVehicule(Vehicule vehicule);
    void deleteVehiculeById(Long id);
    int updateVehicule(Vehicule vehicule);
}
