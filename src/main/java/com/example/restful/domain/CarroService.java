package com.example.restful.domain;

import com.example.restful.domain.dto.CarroDTO;
import com.example.restful.domain.exception.ObjectNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class CarroService {
    @Autowired
    private CarroRepository rep;

    public List<CarroDTO> getCarros(){
        return rep.findAll().stream().map(CarroDTO::create).collect(Collectors.toList());
    }

    public CarroDTO getCarroById(Long id){
        Optional<Carro> carro = rep.findById(id);
        return carro.map(CarroDTO::create).orElseThrow(() -> new ObjectNotFoundException("Carro não foi encontrado!"));
    }

    public List<CarroDTO> getCarrosByTipo(String tipo) {
        return rep.findByTipo(tipo).stream().map(CarroDTO::new).collect(Collectors.toList());
    }

    public CarroDTO insert(Carro carro) {
        Assert.isNull(carro.getId(), "Não foi possível inserir o registro");
        return CarroDTO.create(rep.save(carro));
    }

    public CarroDTO update(Carro carro, Long id) {
        Assert.notNull(id, "Não foi possível inserir o registro");
        //Pega o carro do banco de dados
        Optional<Carro> optional = rep.findById(id);
        //Checa se o carro existe
        if(optional.isPresent()){
            //Copia o carro do banco e atualiza as propriedades
            Carro db = optional.get();
            db.setNome(carro.getNome());
            db.setTipo(carro.getTipo());
            //Salva o carro no banco de dados
            rep.save(db);

            return CarroDTO.create(db);
        } else {
            return null;
        }
    }

    public void delete(Long id) {
            rep.deleteById(id);
    }
}
