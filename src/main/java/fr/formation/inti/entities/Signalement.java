package fr.formation.inti.entities;
// Generated 6 avr. 2019 18:07:05 by Hibernate Tools 5.1.10.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Signalement generated by hbm2java
 */
@Entity
@Table(name = "signalement", catalog = "urbanproject")
public class Signalement implements java.io.Serializable {

	private int idsignalement;
	private String latitude;
	private String longitude;
	private Date dateCreation;
	private String titre;
	private String descriptif;
	private String photoPath;
	private String state;
	private String priority;
	private String category;
	private Integer votePasFait;
	private Integer voteFait;
	private Set<Comment> comments = new HashSet<Comment>(0);

	public Signalement() {
	}

	public Signalement(int idsignalement, String latitude, String longitude, Date dateCreation, String titre,
			String descriptif, String photoPath, String category) {
		this.idsignalement = idsignalement;
		this.latitude = latitude;
		this.longitude = longitude;
		this.dateCreation = dateCreation;
		this.titre = titre;
		this.descriptif = descriptif;
		this.photoPath = photoPath;
		this.category = category;
	}

	public Signalement(int idsignalement, String latitude, String longitude, Date dateCreation, String titre,
			String descriptif, String photoPath, String state, String priority, String category, Integer votePasFait,
			Integer voteFait, Set<Comment> comments) {
		this.idsignalement = idsignalement;
		this.latitude = latitude;
		this.longitude = longitude;
		this.dateCreation = dateCreation;
		this.titre = titre;
		this.descriptif = descriptif;
		this.photoPath = photoPath;
		this.state = state;
		this.priority = priority;
		this.category = category;
		this.votePasFait = votePasFait;
		this.voteFait = voteFait;
		this.comments = comments;
	}

	@Id

	@Column(name = "idsignalement", unique = true, nullable = false)
	public int getIdsignalement() {
		return this.idsignalement;
	}

	public void setIdsignalement(int idsignalement) {
		this.idsignalement = idsignalement;
	}

	@Column(name = "latitude", nullable = false, length = 45)
	public String getLatitude() {
		return this.latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	@Column(name = "longitude", nullable = false, length = 45)
	public String getLongitude() {
		return this.longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "date_creation", nullable = false, length = 10)
	public Date getDateCreation() {
		return this.dateCreation;
	}

	public void setDateCreation(Date dateCreation) {
		this.dateCreation = dateCreation;
	}

	@Column(name = "titre", nullable = false)
	public String getTitre() {
		return this.titre;
	}

	public void setTitre(String titre) {
		this.titre = titre;
	}

	@Column(name = "descriptif", nullable = false, length = 16777215)
	public String getDescriptif() {
		return this.descriptif;
	}

	public void setDescriptif(String descriptif) {
		this.descriptif = descriptif;
	}

	@Column(name = "photo_path", nullable = false)
	public String getPhotoPath() {
		return this.photoPath;
	}

	public void setPhotoPath(String photoPath) {
		this.photoPath = photoPath;
	}

	@Column(name = "state", length = 45)
	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	@Column(name = "priority", length = 45)
	public String getPriority() {
		return this.priority;
	}

	public void setPriority(String priority) {
		this.priority = priority;
	}

	@Column(name = "category", nullable = false, length = 45)
	public String getCategory() {
		return this.category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Column(name = "vote_pas_fait")
	public Integer getVotePasFait() {
		return this.votePasFait;
	}

	public void setVotePasFait(Integer votePasFait) {
		this.votePasFait = votePasFait;
	}

	@Column(name = "vote_fait")
	public Integer getVoteFait() {
		return this.voteFait;
	}

	public void setVoteFait(Integer voteFait) {
		this.voteFait = voteFait;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "signalement")
	public Set<Comment> getComments() {
		return this.comments;
	}

	public void setComments(Set<Comment> comments) {
		this.comments = comments;
	}

}