package sn.esmt.demo2025.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import sn.esmt.demo2025.domain.Vehicule;
import sn.esmt.demo2025.domain.Voiture;
import sn.esmt.demo2025.services.VehiculeService;

import java.util.List;

@Controller
public class VehiculeController {
    @Autowired
    @Qualifier("laVoiture")
    Voiture voiture;

    @Autowired
    VehiculeService voitureService;
//    @RequestMapping( value = "/", method = RequestMethod.GET)
    @RequestMapping(value = "/user/{user}")
//    @GetMapping("/")
    public String getHome(@PathVariable("user") String username, @RequestParam String classe, Model model) {
        // Traitements
        model.addAttribute("message","Bienvenue "+ username+" dans la classe "+classe);
        model.addAttribute("voiture",voiture);
        // Appel de la vue
        return "home";
    }
    @GetMapping("/test")
    @ResponseBody
    public String test() {
        return "Test OK";
    }

    @GetMapping("/")
    public String getHomePage(Model model) {
        // Traitements
        model.addAttribute("message","Bienvenue dans la classe !");
        model.addAttribute("voiture",voiture);
        // Appel de la vue
        return "home";
    }

    @PostMapping("/add")
    public String addVoiture(@ModelAttribute Voiture voiture2, Model model) {
        model.addAttribute("message","Bienvenue  dans la classe ");
        model.addAttribute("voiture",voiture2);
        voitureService.addVehicule(voiture2);
        return "home";
    }


    @GetMapping("/cars")
    public String getAllCars(Model model) {
        List<Vehicule> allVehicules = voitureService.getAllVehicules();
        model.addAttribute("cars", allVehicules);
        return "cars";
    }

    @GetMapping("/car/delete/{id}")
    public String deleteCar(@PathVariable Long id, Model model) {
       voitureService.deleteVehiculeById(id);
        List<Vehicule> allVehicules = voitureService.getAllVehicules();
        model.addAttribute("cars", allVehicules);
        // Retourner la vue avec la liste des voitures
        return "cars";
    }
    @GetMapping("/car/edit/{id}")
    public String showEditForm(@PathVariable Long id, Model model) {
        Vehicule voiture = voitureService.getVehiculeById(id);
        model.addAttribute("voiture", voiture);
        return "editCar"; // nom de ta page JSP pour modifier
    }

    @PostMapping("/car/update")
    public String updateCar(@ModelAttribute Voiture voiture, Model model) {
        voitureService.updateVehicule(voiture);
        List<Vehicule> allVehicules = voitureService.getAllVehicules();
        model.addAttribute("cars", allVehicules);
        return "cars";
    }
}
