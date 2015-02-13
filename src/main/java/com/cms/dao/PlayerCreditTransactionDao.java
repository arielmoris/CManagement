package com.cms.dao;

import java.util.List;

import com.cms.dto.CreditTransferReportFilter;
import com.cms.dto.CreditTransferTableDto;
import com.cms.dto.DataTableDto;
import com.cms.entity.PlayerCreditTransaction;
import com.cms.exception.DaoException;

public interface PlayerCreditTransactionDao extends GenericDao<PlayerCreditTransaction> {

	public List<CreditTransferTableDto> getAllCreditTransfer(CreditTransferReportFilter filter, DataTableDto dataTableDto) throws DaoException;

	public long countCreditTransfer(CreditTransferReportFilter filter, String quickSearchValue) throws DaoException;

}
