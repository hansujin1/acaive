package com.accaive.test;

import java.util.List;

public interface accaive {

	List<Jjal> getAllPricture();

	int regJJAL(Jjal j);

	public Jjal getJjal(Jjal j);

	Member getMemberId(Member m);

	int join(Member m);

	List<Jjal> getSearchPricture(Jjal j);


}
