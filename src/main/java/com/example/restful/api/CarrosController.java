package com.example.restful.api;

import com.example.restful.domain.Carro;
import com.example.restful.domain.CarroService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/v1/carros")
public class CarrosController {
    @Autowired
    private CarroService service;

    @GetMapping()
    public ResponseEntity<Iterable<Carro>> get(){
        return ResponseEntity.ok(service.getCarros());
    }

    @GetMapping("/{id}")
    public ResponseEntity getCarroById(@PathVariable("id") Long id){
        Optional<Carro> carro = service.getCarroById(id);

        return carro
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
/*        return carro.isPresent() ?
                ResponseEntity.ok(carro.get()) :
                ResponseEntity.notFound().build();*/
    }

    @GetMapping("/tipo/{tipo}")
    public ResponseEntity getCarrosByTipo(@PathVariable("tipo") String tipo){
            List<Carro> carros = service.getCarrosByTipo(tipo);
            return carros.isEmpty()?
                    ResponseEntity.noContent().build():
                    ResponseEntity.ok(carros);
        }

    @PostMapping()
    public String postCarro(@RequestBody Carro carro){
        Carro c = service.insert(carro);
        return "Carro salvo com sucesso" + c.getId();
    }

    @PutMapping("/{id}")
    public Carro putCarro(@RequestBody Carro carro, @PathVariable("id") Long id){
        return service.update(carro, id);
    }

    @DeleteMapping("/{id}")
    public String deleteCarro(@PathVariable("id") Long id){
        service.delete(id);
        return "Carro deletado com sucesso";
    }
}
