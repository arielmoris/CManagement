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
import com.cms.dto.CreditTransactionReportFilter;
import com.cms.dto.CreditTransactionTableDto;
import com.cms.dto.DataTableDto;
import com.cms.entity.Agent;
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
	public List<CreditTransactionTableDto> getCreditTransfers(CreditTransactionReportFilter filter, DataTableDto dataTableDto) throws DaoException{
		List<CreditTransactionTableDto> list = new ArrayList<CreditTransactionTableDto>();
		try {
			CriteriaBuilder cb = em.getCriteriaBuilder();
			CriteriaQuery<CreditTransactionTableDto> criteria = cb.createQuery(CreditTransactionTableDto.class);
			Root<PlayerCreditTransaction> table = criteria.from(PlayerCreditTransaction.class);
			Join player = table.join("player",JoinType.LEFT);
			Join agent = table.join("agent", JoinType.LEFT);
			criteria.select(cb.construct(CreditTransactionTableDto.class, 
							table.get("tranDateTime"),
							cb.literal("JPY"),
							cb.literal("Player Transaction"),
							player.get("username"),
							table.get("agent").get("brandName"),
							table.get("amount"),
							table.get("playerEndingBalance"),
							table.type()));
			
			if(dataTableDto == null){
				dataTableDto = new DataTableDto();
			}
			Predicate[] predicate = preparePredicate(cb, table, filter, dataTableDto.getSearchValue());
			criteria.where(predicate);
			
			List<Order> ordering = new ArrayList<Order>();
			ordering.add(cb.asc(table.get("tranDateTime")));
			criteria.orderBy(ordering);
			
			TypedQuery<CreditTransactionTableDto> query = em.createQuery(criteria);
			query = (TypedQuery<CreditTransactionTableDto>) preparePaging(query, dataTableDto);
			list = query.getResultList();
			
		} catch (Exception e) {
			throw new DaoException("Error retrieving playerCreditTransfer ", e);
		}
		
		return list;
	}
	
	@Override
	public long countCreditTransfers(CreditTransactionReportFilter filter, String quickSearchValue) throws DaoException{
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
	
	protected Predicate[] preparePredicate(CriteriaBuilder cb, Root<PlayerCreditTransaction> table, CreditTransactionReportFilter filter, String quicksearchValue){
		List<Predicate> whereClause = new ArrayList<Predicate>();
		if(filter != null){
			if(filter.getFromDate() != null){
				whereClause.add(cb.greaterThanOrEqualTo(table.<Date>get("tranDateTime"), filter.getFromDate()));
			}
			if(filter.getToDate() != null){
				whereClause.add(cb.lessThanOrEqualTo(table.<Date>get("tranDateTime"), filter.getToDate()));
			}
			if(filter.getFromId() != null && !filter.getFromId().equals("")){
				CriteriaQuery<String> subCriteria = cb.createQuery(String.class);
				Root<Agent> agentRoot = subCriteria.from(Agent.class);
				subCriteria.select(agentRoot.<String>get("agentLevel"));
				subCriteria.where(cb.equal(agentRoot.get("agentId"), filter.getFromId()));
				TypedQuery<String> subQuery = em.createQuery(subCriteria);
				String result = subQuery.getSingleResult();
				System.out.println(result);
				whereClause.add(cb.like(table.get("agent").<String>get("agentLevel"), result+"%"));
			}
			
			if(filter.getToId() != null && !filter.getToId().equals("")){
				whereClause.add(cb.equal(table.get("playerCode"), filter.getToId()));
			}
		}
		return whereClause.toArray(new Predicate[whereClause.size()]);
	}
	
}
