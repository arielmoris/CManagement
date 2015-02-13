package com.cms.dao;

import java.util.List;

import com.cms.dto.CreditTransferReportFilter;
import com.cms.dto.CreditTransferTableDto;
import com.cms.dto.DataTableDto;
import com.cms.entity.AgentCreditTransaction;
import com.cms.exception.DaoException;

public interface AgentCreditTransactionDao extends GenericDao<AgentCreditTransaction>{
	
	public List<AgentCreditTransaction> findAll(CreditTransferReportFilter filter) throws DaoException;

	public List<AgentCreditTransaction> findByPage(CreditTransferReportFilter filter, DataTableDto dataTableDto) throws DaoException;
	
	public long count(CreditTransferReportFilter filter, String quickSearchValue) throws DaoException;
	
	public List<CreditTransferTableDto> getAllCreditTransfer(CreditTransferReportFilter filter, DataTableDto dataTableDto) throws DaoException;
	
}
