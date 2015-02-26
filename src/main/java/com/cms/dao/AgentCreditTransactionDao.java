package com.cms.dao;

import java.util.List;

import com.cms.dto.CreditTransactionReportFilter;
import com.cms.dto.CreditTransactionTableDto;
import com.cms.dto.DataTableDto;
import com.cms.entity.AgentCreditTransaction;
import com.cms.exception.DaoException;

public interface AgentCreditTransactionDao extends GenericDao<AgentCreditTransaction>{

	public List<CreditTransactionTableDto> getCreditTransactions(CreditTransactionReportFilter filter, DataTableDto dataTableDto) throws DaoException;

	public long countCreditTransactions(CreditTransactionReportFilter filter, String quickSearchValue) throws DaoException;
	
}
