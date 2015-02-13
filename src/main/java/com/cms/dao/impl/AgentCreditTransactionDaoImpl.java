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

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.cms.dao.AgentCreditTransactionDao;
import com.cms.dto.CreditTransferReportFilter;
import com.cms.dto.CreditTransferTableDto;
import com.cms.dto.DataTableDto;
import com.cms.entity.AgentCreditTransaction;
import com.cms.exception.DaoException;

@Repository
public class AgentCreditTransactionDaoImpl extends GenericDaoImpl<AgentCreditTransaction> implements AgentCreditTransactionDao{
	
	final static Logger logger = LoggerFactory.getLogger(AgentCreditTransactionDaoImpl.class);
	
	@PersistenceContext
	private EntityManager em;
	
	@PostConstruct
	public void init(){
		super.setEntityManager(em);
	}
	
	@Override
	public List<AgentCreditTransaction> findAll(CreditTransferReportFilter filter) throws DaoException{
		List<AgentCreditTransaction> list = new ArrayList<AgentCreditTransaction>();
		try {
			CriteriaBuilder cb = em.getCriteriaBuilder();
			CriteriaQuery<AgentCreditTransaction> criteria = cb.createQuery(AgentCreditTransaction.class);
			Root<AgentCreditTransaction> table = criteria.from(AgentCreditTransaction.class);
			
			criteria.select(table);
			Predicate[] predicate = preparePredicate(cb, table, filter, "");
			criteria.where(predicate);
			
			List<Order> orderingList = prepareOrdering(cb, table, null);
			criteria.orderBy(orderingList);
			
			TypedQuery<AgentCreditTransaction> query = em.createQuery(criteria);
		
			list = query.getResultList();
		} catch (Exception e) {
			throw new DaoException("Error fetching agentCreditTransaction. ", e);
		}
		return list;
	}
	
	@Override
	public List<AgentCreditTransaction> findByPage(CreditTransferReportFilter filter, DataTableDto dataTableDto) throws DaoException{
		List<AgentCreditTransaction> list = new ArrayList<AgentCreditTransaction>();
		try {
			CriteriaBuilder cb = em.getCriteriaBuilder();
			CriteriaQuery<AgentCreditTransaction> criteria = cb.createQuery(AgentCreditTransaction.class);
			Root<AgentCreditTransaction> table = criteria.from(AgentCreditTransaction.class);
			
			criteria.select(table);
			Predicate[] predicate = preparePredicate(cb, table, filter, dataTableDto.getSearchValue());
			criteria.where(predicate);
			
			List<Order> orderingList = prepareOrdering(cb, table, dataTableDto.getOrdering());
			criteria.orderBy(orderingList);
			
			TypedQuery<AgentCreditTransaction> query = em.createQuery(criteria);
			query.setFirstResult(dataTableDto.getStart());
			query.setMaxResults(dataTableDto.getSize());
		
			list = query.getResultList();
		} catch (Exception e) {
			throw new DaoException("Error fetching agentCreditTransaction by page", e);
		}
		return list;
	}

	@Override
	public long count(CreditTransferReportFilter filter, String quickSearchValue) throws DaoException{
		long count = 0;
		try {
			CriteriaBuilder cb = em.getCriteriaBuilder();
			CriteriaQuery<Long> criteria = cb.createQuery(Long.class);
			Root<AgentCreditTransaction> table = criteria.from(AgentCreditTransaction.class);
			
			criteria.select(cb.count(table));
			Predicate[] predicates = preparePredicate(cb, table, filter, quickSearchValue);
			criteria.where(predicates);
			
			TypedQuery<Long> query = em.createQuery(criteria);
			
			count = query.getSingleResult();
		} catch (Exception e) {
			throw new DaoException("Error getting count of agentCreditTransaction", e);
		}
		return count;
	}
	
	protected Predicate[] preparePredicate(CriteriaBuilder cb, Root<AgentCreditTransaction> table, CreditTransferReportFilter filter, String quicksearchValue){
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
	
	protected List<Order> prepareOrdering(CriteriaBuilder cb, Root<AgentCreditTransaction> table, List<com.cms.bean.Order> ordering){
		List<Order> orderingList = new ArrayList<Order>();
		return orderingList;
	}

	@Override
	public List<CreditTransferTableDto> getAllCreditTransfer(CreditTransferReportFilter filter, DataTableDto dataTableDto)throws DaoException {
		List<CreditTransferTableDto> list = new ArrayList<CreditTransferTableDto>();
		try {
			CriteriaBuilder cb = em.getCriteriaBuilder();
			CriteriaQuery<CreditTransferTableDto> criteria = cb.createQuery(CreditTransferTableDto.class);
			Root<AgentCreditTransaction> table = criteria.from(AgentCreditTransaction.class);
			Join agentJoin = table.join("agent", JoinType.LEFT);
			criteria.select(cb.construct(CreditTransferTableDto.class, 
							table.get("tranDateTime"),
							table.get("currencyCode"),
							cb.literal("Agent Transaction"),
							table.get("agent").get("brandName"),
							table.get("processedBy"),
							table.get("amount"),
							table.get("endingBalance")));
			List<Order> ordering = new ArrayList<Order>();
			ordering.add(cb.asc(table.get("tranDateTime")));
			criteria.orderBy(ordering);
			TypedQuery<CreditTransferTableDto> query = em.createQuery(criteria);
			list = query.getResultList();
		} catch (Exception e) {
			throw new DaoException("Error retrieving agentTransactionCreditTransfer ", e);
		}
		return list;
	}
	
}
