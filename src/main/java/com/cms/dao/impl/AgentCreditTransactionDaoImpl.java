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
import javax.persistence.criteria.Subquery;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.cms.dao.AgentCreditTransactionDao;
import com.cms.dto.CreditTransactionReportFilter;
import com.cms.dto.CreditTransactionTableDto;
import com.cms.dto.DataTableDto;
import com.cms.entity.Agent;
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
	public List<CreditTransactionTableDto> getCreditTransactions(CreditTransactionReportFilter filter, DataTableDto dataTableDto) throws DaoException {
		List<CreditTransactionTableDto> list = new ArrayList<CreditTransactionTableDto>();
		try {
			CriteriaBuilder cb = em.getCriteriaBuilder();
			CriteriaQuery<CreditTransactionTableDto> criteria = cb.createQuery(CreditTransactionTableDto.class);
			Root<AgentCreditTransaction> table = criteria.from(AgentCreditTransaction.class);
			Join agentJoin = table.join("agent", JoinType.LEFT);
			Join parentAgentJoin = table.join("parentAgent", JoinType.LEFT);
			criteria.select(cb.construct(CreditTransactionTableDto.class, 
							table.get("tranDateTime"),
							table.get("currencyCode"),
							parentAgentJoin.get("brandName"),
							agentJoin.get("brandName"),
							table.get("amount"),
							table.get("endingBalanceParent"),
							table.get("tranType")));
			
			if(dataTableDto == null){
				dataTableDto = new DataTableDto();
			}
	
			Predicate[] predicates = prepareCreditTransferPredicate(cb, criteria, table, filter, dataTableDto.getSearchValue());
			criteria.where(predicates);
		
			List<Order> ordering = new ArrayList<Order>();
			ordering.add(cb.asc(table.get("tranDateTime")));
			criteria.orderBy(ordering);
			
			TypedQuery<CreditTransactionTableDto> query = em.createQuery(criteria);
			query = (TypedQuery<CreditTransactionTableDto>) preparePaging(query, dataTableDto);
			
			list = query.getResultList();
		} catch (Exception e) {
			throw new DaoException("Error retrieving agentTransactionCreditTransfer ", e);
		}
		return list;
	}
	
	@Override
	public long countCreditTransactions(CreditTransactionReportFilter filter, String quickSearchValue) throws DaoException{
		long count = 0;
		try {
			CriteriaBuilder cb = em.getCriteriaBuilder();
			CriteriaQuery<Long> criteria = cb.createQuery(Long.class);
			Root<AgentCreditTransaction> table = criteria.from(AgentCreditTransaction.class);
			
			criteria.select(cb.count(table));
			Predicate[] predicates = prepareCreditTransferPredicate(cb,  criteria, table, filter, quickSearchValue);
			criteria.where(predicates);
			
			TypedQuery<Long> query = em.createQuery(criteria);
			
			count = query.getSingleResult();
		} catch (Exception e) {
			throw new DaoException("Error getting count of agentCreditTransaction", e);
		}
		return count;
	}
	
	protected Predicate[] prepareCreditTransferPredicate(CriteriaBuilder cb, CriteriaQuery criteria, Root<AgentCreditTransaction> table, CreditTransactionReportFilter filter, String quicksearchValue){
		List<Predicate> whereClause = new ArrayList<Predicate>();
		if(filter != null){
			if(filter.getFromDate() != null){
				whereClause.add(cb.greaterThanOrEqualTo(table.<Date>get("tranDateTime"), filter.getFromDate()));
			}
			
			if(filter.getToDate() != null){
				whereClause.add(cb.lessThanOrEqualTo(table.<Date>get("tranDateTime"), filter.getToDate()));
			}
			
			if(filter.getFromId() != null && !filter.getFromId().equals("")){
				if(filter.getTransactionType().equalsIgnoreCase("MemberIn")){
					whereClause.add(cb.equal(table.get("parentAgent").get("agentId"), filter.getFromId()));
				}else if(filter.getTransactionType().equalsIgnoreCase("MemberOut")){
					if(filter.getSelectedAgentId() != null && !filter.getSelectedAgentId().equals("")){
						whereClause.add(cb.equal(table.get("parentAgent").get("agentId"), filter.getFromId()));
					}else{
						Subquery<String> subquery = criteria.subquery(String.class);
						Root<Agent> agentRoot = subquery.from(Agent.class);
						subquery.select(agentRoot.<String>get("agentId"));
						subquery.where(cb.equal(agentRoot.get("parentAgentId"), filter.getFromId()));
						whereClause.add(cb.in(table.get("parentAgent").get("agentId")).value(subquery));
					}
				}
			}
			
			if(filter.getToId() != null && !filter.getToId().equals("")){
				whereClause.add(cb.equal(table.get("agentId"), filter.getToId()));
			}
		}
		return whereClause.toArray(new Predicate[whereClause.size()]);
	}
	
	protected List<Order> prepareOrdering(CriteriaBuilder cb, Root<?> table, List<com.cms.bean.Order> ordering){
		List<Order> orderingList = new ArrayList<Order>();
		return orderingList;
	}
	
}
