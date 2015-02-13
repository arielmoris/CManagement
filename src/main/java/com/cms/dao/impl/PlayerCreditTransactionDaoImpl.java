package com.cms.dao.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.JoinType;
import javax.persistence.criteria.Order;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;

import com.cms.dao.PlayerCreditTransactionDao;
import com.cms.dto.CreditTransferReportFilter;
import com.cms.dto.CreditTransferTableDto;
import com.cms.dto.DataTableDto;
import com.cms.entity.PlayerCreditTransaction;
import com.cms.exception.DaoException;

@Repository
public class PlayerCreditTransactionDaoImpl extends GenericDaoImpl<PlayerCreditTransaction> implements PlayerCreditTransactionDao{
	
	@PersistenceContext
	private EntityManager em;
	
	@PostConstruct
	private void init(){
		super.setEntityManager(em);
	}
	
	@Override
	public List<CreditTransferTableDto> getAllCreditTransfer(CreditTransferReportFilter filter, DataTableDto dataTableDto) throws DaoException{
		List<CreditTransferTableDto> list = new ArrayList<CreditTransferTableDto>();
		try {
			CriteriaBuilder cb = em.getCriteriaBuilder();
			CriteriaQuery<CreditTransferTableDto> criteria = cb.createQuery(CreditTransferTableDto.class);
			Root<PlayerCreditTransaction> table = criteria.from(PlayerCreditTransaction.class);
			Join player = table.join("player",JoinType.LEFT);
			Join agent = table.join("agent", JoinType.LEFT);
			criteria.select(cb.construct(CreditTransferTableDto.class, 
							table.get("tranDateTime"),
							cb.literal("JPY"),
							cb.literal("Player Transaction"),
							player.get("playerName"),
							table.get("agent").get("brandName"),
							table.get("amount"),
							table.get("playerEndingBalance"),
							table.type()));
			
			Predicate[] predicate = preparePredicate(cb, table, filter, dataTableDto.getSearchValue());
			criteria.where(predicate);
			
			List<Order> ordering = new ArrayList<Order>();
			ordering.add(cb.asc(table.get("tranDateTime")));
			criteria.orderBy(ordering);
			
			TypedQuery<CreditTransferTableDto> query = em.createQuery(criteria);
			list = query.getResultList();
		} catch (Exception e) {
			throw new DaoException("Error retrieving playerCreditTransfer ", e);
		}
		
		return list;
	}
	
	@Override
	public long countCreditTransfer(CreditTransferReportFilter filter, String quickSearchValue) throws DaoException{
		long count = 0;
		
		try {
			CriteriaBuilder cb = em.getCriteriaBuilder();
			CriteriaQuery<Long> criteria = cb.createQuery(Long.class);
			Root<PlayerCreditTransaction> table = criteria.from(PlayerCreditTransaction.class);
			criteria.select(cb.count(table));
			
			criteria.where(preparePredicate(cb, table, filter, quickSearchValue));
			
			TypedQuery<Long> query = em.createQuery(criteria);
			
			count = query.getSingleResult();
		} catch (Exception e) {
			throw new DaoException("Error counting playerCreditTransfer ", e);
		}
		
		return count;
	}
	
	protected Predicate[] preparePredicate(CriteriaBuilder cb, Root<PlayerCreditTransaction> table, CreditTransferReportFilter filter, String quicksearchValue){
		List<Predicate> whereClause = new ArrayList<Predicate>();
		if(filter != null){
			if(filter.getFromDate() != null){
				whereClause.add(cb.greaterThanOrEqualTo(table.<Date>get("tranDateTime"), filter.getFromDate()));
			}
			if(filter.getToDate() != null){
				whereClause.add(cb.lessThanOrEqualTo(table.<Date>get("tranDateTime"), filter.getToDate()));
			}
			if(filter.getAgent() != null && !filter.getAgent().equals("")){
				whereClause.add(cb.equal(table.get("agentId"), filter.getAgent()));
			}
		}
		return whereClause.toArray(new Predicate[whereClause.size()]);
	}
	
}
