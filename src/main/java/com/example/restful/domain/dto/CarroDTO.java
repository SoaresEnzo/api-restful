package com.example.restful.domain.dto;

import com.example.restful.domain.Carro;
import lombok.Data;
import org.modelmapper.ModelMapper;

@Data
public class CarroDTO {
    private Long id;
    private String nome;
    private String tipo;

    public CarroDTO() {

    }

    public CarroDTO(Carro c) {
        this.id = c.getId();
        this.nome = c.getNome();
        this.tipo = c.getTipo();
    }

    public static CarroDTO create(Carro c){
        ModelMapper modelMapper = new ModelMapper();
        return modelMapper.map(c, CarroDTO.class);
    }
}
