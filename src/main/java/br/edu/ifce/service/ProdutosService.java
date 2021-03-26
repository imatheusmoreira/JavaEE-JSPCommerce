package br.edu.ifce.service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import br.edu.ifce.bean.Produto;

public class ProdutosService {
	
	public List<Produto> listar(){
		List<Produto> produtos = new ArrayList<Produto>();
		Produto agua = new Produto();
		agua.setCodigo(10120);
		agua.setDescricao("Agua Mineral 500ML");
		agua.setValor(new BigDecimal("3.50"));
		agua.setFoto("https://www.mercadinholobao.com.br/wp-content/uploads/2020/08/e7d98be07bb2dddb84f3a3b1c9900cc1.png");
		produtos.add(agua);
		
		Produto kisuco = new Produto();
		kisuco.setCodigo(10121);
		kisuco.setDescricao("Kisuco Angélica");
		kisuco.setValor(new BigDecimal("0.50"));
		kisuco.setFoto("https://angelicacollection.files.wordpress.com/2014/02/angcoll-merch-10.jpg");
		produtos.add(kisuco);
		
		Produto leite = new Produto();
		leite.setCodigo(10122);
		leite.setDescricao("Leite Condensado");
		leite.setValor(new BigDecimal("2.83"));
		leite.setFoto("http://superprix.vteximg.com.br/arquivos/ids/173107-600-600/Leite-Condensado-Itambe-Nolac-395g--Lata-.png");
		produtos.add(leite);
		
		return produtos;
	}
	
	public Produto pegar(int codigo){
		List<Produto> produtos = listar();
		for (Produto produto : produtos) {
			if(produto.getCodigo() == codigo) {
				return produto;
 			}
		}
		return null;
	}
	
	
}
