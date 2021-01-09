package com.zensar;
import java.util.*;

import com.zensar.beans.Player;
public class PlayerBO {

	void displayAllPlayerDetails(Player[] playerList) {

		List<Player> player = Arrays.asList(playerList);
		System.out.println("------------------DETAILS----------------");
		for(Player x : player) {
			System.out.println(x);
		}
	}
	
	void displaySpecificPlayerDetails(Player[] playerList, String countryName) {
		boolean flag= false;
		for (int i = 0; i < playerList.length; i++) {
			if(playerList[i].getCountry().equalsIgnoreCase(countryName)) {
				System.out.println(playerList[i]);
				flag=true;
			}
		}
		if(flag==false) {
			System.out.println("Player Not Found");
		}
	}
}
