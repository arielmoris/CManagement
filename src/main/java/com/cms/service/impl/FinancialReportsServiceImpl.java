package com.cms.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cms.dao.AgentCreditTransactionDao;
import com.cms.dao.PlayerCreditTransactionDao;
import com.cms.dto.CreditTransactionReportFilter;
import com.cms.dto.CreditTransactionTableDto;
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
	public DataTableDto getCreditTransactionReportTable(CreditTransactionReportFilter filter, DataTableDto dataTableDto){
		if(filter!=null){
			String type = filter.getTransactionType();
			logger.debug("Transaction Type : {}", type);
			filter.setToIdAndFromId();
			
			if(type.equals("FromAgentToPlayer")){
				dataTableDto = getPlayerCreditTransactionReportTable(filter, dataTableDto);
			}else if(type.equals("MemberIn")){
				dataTableDto = getAgentCreditTransactionReportTable(filter, dataTableDto);
			}else if(type.equals("MemberOut")){
				dataTableDto = getAgentCreditTransactionReportTable(filter, dataTableDto);
			}
		}
		return dataTableDto;
	}
	
	@Transactional
	@Override
	public DataTableDto getPlayerCreditTransactionReportTable(CreditTransactionReportFilter filter, DataTableDto dataTableDto){
		logger.debug("FinancialReportsServiceImpl getPlayerCreditTransferReportTable :: START");
		
		try {
			List<CreditTransactionTableDto> list = playerCreditTransactionDao.getCreditTransfers(filter, dataTableDto);
			
			String quickSearchValue = "";
			if(dataTableDto != null){
				quickSearchValue = dataTableDto.getSearchValue();
			}else{
				dataTableDto = new DataTableDto();
			}
			
			long count = playerCreditTransactionDao.countCreditTransfers(filter, quickSearchValue);
			
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
	public DataTableDto getAgentCreditTransactionReportTable(CreditTransactionReportFilter filter, DataTableDto dataTableDto){
		logger.debug("FinancialReportsServiceImpl getAgentCreditTransferReportTable :: START");
		
		try {
			List<CreditTransactionTableDto> list = agentCreditTransactionDao.getCreditTransactions(filter, dataTableDto);
			
			String quickSearchValue = "";
			if(dataTableDto != null){
				quickSearchValue = dataTableDto.getSearchValue();
			}else{
				dataTableDto = new DataTableDto();
			}

			long count = agentCreditTransactionDao.countCreditTransactions(filter, quickSearchValue);
			dataTableDto.setData(list);
			dataTableDto.setRecordsFiltered(count);
			dataTableDto.setRecordsTotal(count);
			
		} catch (DaoException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		logger.debug("FinancialReportsServiceImpl getAgentCreditTransferReportTable :: END");
		return dataTableDto;
	}
}
