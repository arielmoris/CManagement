package com.cms.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cms.dao.AgentCreditTransactionDao;
import com.cms.dao.PlayerCreditTransactionDao;
import com.cms.dto.CreditTransferReportFilter;
import com.cms.dto.CreditTransferTableDto;
import com.cms.dto.DataTableDto;
import com.cms.exception.DaoException;
import com.cms.service.FinancialReportsService;

@Service(value="financialReportService")
public class FinancialReportsServiceImpl extends ReportsServiceImpl implements FinancialReportsService{
	
	private static Logger logger = LoggerFactory.getLogger(FinancialReportsServiceImpl.class);
	
	private AgentCreditTransactionDao agentCreditTransactionDao;
	private PlayerCreditTransactionDao playerCreditTransactionDao;
	
	@Autowired
	public FinancialReportsServiceImpl(AgentCreditTransactionDao agentCreditTransactionDao, PlayerCreditTransactionDao playerCreditTransactionDao) {
		this.agentCreditTransactionDao = agentCreditTransactionDao;
		this.playerCreditTransactionDao = playerCreditTransactionDao;
	}
	
	@Override
	public DataTableDto getCreditTransferReportTable(CreditTransferReportFilter filter, DataTableDto dataTableDto){
		if(filter!=null){
			String type = filter.getTransactionType();
			logger.debug("Transaction Type : {}", type);
			if(type.equals("FromAgentToPlayer")){
				dataTableDto = getPlayerCreditTransferReportTable(filter, dataTableDto);
			}else{
				dataTableDto = getAgentCreditTransferReportTable(filter, dataTableDto);
			}
		}
		return dataTableDto;
	}
	
	@Transactional
	@Override
	public DataTableDto getPlayerCreditTransferReportTable(CreditTransferReportFilter filter, DataTableDto dataTableDto){
		logger.debug("FinancialReportsServiceImpl getPlayerCreditTransferReportTable :: START");
		
		try {
			List<CreditTransferTableDto> list = playerCreditTransactionDao.getAllCreditTransfer(filter, dataTableDto);
			
			String quickSearchValue = "";
			if(dataTableDto != null){
				quickSearchValue = dataTableDto.getSearchValue();
			}
			
			long count = playerCreditTransactionDao.countCreditTransfer(filter, quickSearchValue);
			dataTableDto.setData(list);
			dataTableDto.setRecordsFiltered(count);
			dataTableDto.setRecordsTotal(count);
			
		} catch (DaoException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		logger.debug("FinancialReportsServiceImpl getPlayerCreditTransferReportTable :: END");
		return dataTableDto;
	}
	
	@Transactional
	@Override
	public DataTableDto getAgentCreditTransferReportTable(CreditTransferReportFilter filter, DataTableDto dataTableDto){
		logger.debug("FinancialReportsServiceImpl getAgentCreditTransferReportTable :: START");
		
		try {
			List<CreditTransferTableDto> list = agentCreditTransactionDao.getAllCreditTransfer(filter, dataTableDto);
			
			String quickSearchValue = "";
			if(dataTableDto != null){
				quickSearchValue = dataTableDto.getSearchValue();
			}

			dataTableDto.setData(list);
			
		} catch (DaoException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		logger.debug("FinancialReportsServiceImpl getAgentCreditTransferReportTable :: END");
		return dataTableDto;
	}
}
