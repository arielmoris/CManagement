package com.cms.dao.impl;

import java.lang.reflect.ParameterizedType;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.transaction.annotation.Transactional;

import com.cms.dao.GenericDao;
import com.cms.exception.ApplicationException;

public class GenericDaoImpl<E> implements GenericDao<E>{
	@PersistenceContext
	private EntityManager em;
	
	private Class<E> clazz;
	
	@SuppressWarnings(value="unchecked")
	public GenericDaoImpl(){
		ParameterizedType t = (ParameterizedType) this.getClass().getGenericSuperclass();
		this.clazz = (Class<E>) t.getActualTypeArguments()[0];
	}
	
	@Transactional
	@Override
	public void save(E e) throws ApplicationException{
		try{
			em.merge(e);
		}catch(Exception ex){
			throw new ApplicationException("Error saving to database.", ex);
		}
	}
	
	@Override
	public E findById(long id) {
		return em.find(clazz, new Long(id).intValue());
	}

	@Override
	public E findById(String id) {
		return em.find(clazz, id);
	}
	
	@Override
	public List<E> findAll() {
		List<E> list = new ArrayList<E>();
		String hql = "From "+clazz.getSimpleName();
		Query query = em.createQuery(hql);
		list = query.getResultList();
		return list;
	}
	
	protected void setEntityManager(EntityManager em){
		this.em = em;
	}
}