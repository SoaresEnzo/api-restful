package com.example.restful.domain;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import java.util.List;
import java.util.Optional;

@Service
public class CarroService {
    @Autowired
    private CarroRepository rep;

    public Iterable<Carro> getCarros(){
        return rep.findAll();
    }

    public Optional<Carro> getCarroById(Long id) {
        return rep.findById(id);
    }

    public List<Carro> getCarrosByTipo(String tipo) {
        return rep.findByTipo(tipo);
    }

    public Carro insert(Carro carro) {
        Assert.isNull(carro.getId(), "Não foi possível inserir o registro");
        return rep.save(carro);
    }

    public Carro update(Carro carro, Long id) {
        Assert.notNull(id, "Não foi possível inserir o registro");
        //Pega o carro do banco de dados
        Optional<Carro> optional = getCarroById(id);
        //Checa se o carro existe
        if(optional.isPresent()){
            //Copia o carro do banco e atualiza as propriedades
            Carro db = optional.get();
            db.setNome(carro.getNome());
            db.setTipo(carro.getTipo());
            //Salva o carro no banco de dados
            rep.save(db);

            return db;
        } else {
            throw new RuntimeException("Não foi possível atualizar o registro");
        }
    }

    public void delete(Long id) {
        Optional<Carro> carro = getCarroById(id);
        if(carro.isPresent()){
            rep.deleteById(id);
        }
    }
}