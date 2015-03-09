package org.sid.entities;

import java.util.Date;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue (value="GSM")
public class AbonnementGSM extends Abonnement{
	 private int fideleo;

	public AbonnementGSM(Date dateAbonnement, double solde, boolean actif,
			int fideleo) {
		super(dateAbonnement, solde, actif);
		this.fideleo = fideleo;
	}

	public AbonnementGSM() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getFideleo() {
		return fideleo;
	}

	public void setFideleo(int fideleo) {
		this.fideleo = fideleo;
	}
	 
}
