package com.zensar;

import java.util.Scanner;

import com.zensar.beans.Player;

public class Main {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		Scanner sc1 = new Scanner(System.in);
		
		String ans = "NULL";
			System.out.println("No. of Players : 	");
			int n = sc.nextInt();
		
			Player playerList[] = new Player[n];
			
			for(int i=0;i<n;i++) {
				System.out.println("Enter player name");
				String name = sc1.nextLine();
				System.out.println("Enter country name");
				String country = sc1.nextLine();
				System.out.println("Enter skill");
				String skill = sc1.nextLine();
				playerList[i] = new Player(name, country, skill);
			}
			
			do{
			System.out.println("Enter choice:");
			System.out.println("1. Display All Players");
			System.out.println("2. Search By CountryName");
			int ch = sc.nextInt();
			switch(ch) {
			
			case 1:
				PlayerBO bo = new PlayerBO();
				bo.displayAllPlayerDetails(playerList);
				break;
			
			case 2:
				PlayerBO bo1 = new PlayerBO();
				System.out.println("Enter the countryName");
				String country = sc1.nextLine();
				bo1.displaySpecificPlayerDetails(playerList,country);
				break;
				
			default:
				break;
			}
			
			System.out.println("Continue? (Y/N):");
			ans = sc1.nextLine();
		}while("y".equalsIgnoreCase(ans)) ;
	}

}
