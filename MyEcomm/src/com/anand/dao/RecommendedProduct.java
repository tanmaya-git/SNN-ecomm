package com.anand.dao;

import java.util.HashMap;
import java.util.Random;

public class RecommendedProduct {
	public static HashMap  getRecommendedProduct(HashMap hm) {
		Random random = new Random();
		int key1 = 1;
		int key2 = 1;
		HashMap hmRec = new HashMap();
		if(hm.size()>2){
			key1 = random.nextInt(hm.size() - 1);
			key2 = random.nextInt(hm.size() - 1);
		}
		
			if (hm.containsKey(0)) {
				int val = (Integer) hm.get(0);
				if (val == 1) {
					if (key2 == key1 || key1 == 0 || key2 == 0) {
						if (key1 == 0 || key2 == 0) {
							hmRec.put(1, hm.get(1));
						} else {
							hmRec.put(1, hm.get(key1));
						}
					} else {
						hmRec.put(1, hm.get(key1));
						hmRec.put(2, hm.get(key2));
					}
				} else {
					if (key1 == 0) {
						hmRec.put(1, hm.get(1));
					} else {
						hmRec.put(1, hm.get(key1));
					}
				}
			} else{				
				if (key2 == key1 || key1 == 0 || key2 == 0) {
					if (key1 == 0 || key2 == 0) {
						hmRec.put(1, hm.get(1));
					} else {
						hmRec.put(1, hm.get(key1));
					}
				} else {
					hmRec.put(1, hm.get(key1));
					hmRec.put(2, hm.get(key2));
				}	
				
				
			}
	
		return hmRec;
	}

	public static boolean isPopular(HashMap hm) {
		return hm.containsKey(0);
	}

	public static void main(String[] args) {
		HashMap hm = new HashMap();
		hm.put(1, 231231);
		hm.put(2, 231);
		hm.put(3, 2655);
		hm.put(5, 81);
		isPopular(hm);
	}

}
