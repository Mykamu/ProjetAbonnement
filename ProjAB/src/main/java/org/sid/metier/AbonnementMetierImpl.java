package org.sid.metier;

import java.util.Date;
import java.util.List;

import org.sid.dao.IAbonnementDAO;
import org.sid.entities.Abonnement;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class AbonnementMetierImpl implements IAbonnementMetier {

	private IAbonnementDAO dao;
	
	public void setDao(IAbonnementDAO dao) {
		this.dao = dao;
	}

	public void addAbonnement(Abonnement ab) {
		dao.addAbonnement(ab);
	}

	public List<Abonnement> listAbonnements(boolean actif) {
		return dao.listAbonnements(actif);
	}

	public List<Abonnement> listAbonnements(Date d1, Date d2) {
		return dao.listAbonnements(d1, d2);
	}

	public Abonnement getAbonnement(Long idAb) {
		return dao.getAbonnement(idAb);
	}

	public void deleteAbonnement(Long idAb) {
		dao.deleteAbonnement(idAb);

	}

	public void updateAbonnement(Abonnement ab) {
		dao.updateAbonnement(ab);

	}

	public void consommer(Long idAb, double mt) {
		dao.consommer(idAb, mt);

	}

	public void alimenter(Long idAb, double mt) {
		dao.alimenter(idAb, mt);

	}

}
