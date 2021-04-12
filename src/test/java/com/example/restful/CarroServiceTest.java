package com.example.restful;

import com.example.restful.domain.Carro;
import com.example.restful.domain.CarroService;
import com.example.restful.domain.dto.CarroDTO;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;
import java.util.Optional;

import static junit.framework.TestCase.*;

@RunWith(SpringRunner.class)
@SpringBootTest
class CarroServiceTest {

	@Autowired
	private CarroService service;

	@Test
	public void testSave() {
		Carro carro = new Carro();
		carro.setNome("Ferrari");
		carro.setTipo("esportivos");
		CarroDTO c = service.insert(carro);

		assertNotNull(c);

		Long id = c.getId();
		assertNotNull(id);
		//Buscar carro
		Optional<CarroDTO> op = service.getCarroById(id);
		assertTrue(op.isPresent());

		c = op.get();
		assertEquals("Ferrari", c.getNome());
		assertEquals("esportivos", c.getTipo());

		//Deletar o carro
		service.delete(id);
		assertFalse(service.getCarroById(id).isPresent());
	}

	@Test
	void testLista() {
		List<CarroDTO> carros = service.getCarros();

		assertEquals(30, carros.size());
	}

	@Test
	void testGet() {
		Optional<CarroDTO> op = service.getCarroById(11L);
		assertTrue(op.isPresent());

		CarroDTO c = op.get();

		assertEquals("Ferrari FF",c.getNome());
	}

	@Test
	void testListaPorTipo() {
		assertEquals(10, service.getCarrosByTipo("esportivos").size());
		assertEquals(10, service.getCarrosByTipo("luxo").size());
		assertEquals(10, service.getCarrosByTipo("classicos").size());

		assertEquals(0, service.getCarrosByTipo("x").size());

	}

}
