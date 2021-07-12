<pattern xmlns="http://purl.oclc.org/dsdl/schematron" is-a="condition" id="UBL-condition">
  <param name="BR-CIUS-PT-12" value="(cbc:Percent) &gt; 0"/>
  <param name="BR-CIUS-PT-14" value="(cbc:Percent) &gt; 0"/>
  <param name="BR-CIUS-PT-16" value="(cbc:Percent = 0)"/>
  
  <param name="BR-17" value="exists(cac:PartyName/cbc:Name) and (not(cac:PartyName/cbc:Name = ../cac:AccountingSupplierParty/cac:Party/cac:PartyName/cbc:Name) and not(cac:PartyIdentification/cbc:ID = ../cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID) and not(cac:PartyLegalEntity/cbc:CompanyID = ../cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID))"/>
  <param name="BR-27" value="(cac:Price/cbc:PriceAmount) &gt;= 0"/>
  <param name="BR-28" value="(cac:Price/cac:AllowanceCharge/cbc:BaseAmount) &gt;= 0 or not(exists(cac:Price/cac:AllowanceCharge/cbc:BaseAmount))"/>

  <param name="BR-AA-01" value="((count(//cac:AllowanceCharge/cac:TaxCategory[normalize-space(cbc:ID) = 'AA' or normalize-space(cbc:ID) = 'RED' or normalize-space(cbc:ID) = 'INT']) + count(//cac:ClassifiedTaxCategory[normalize-space(cbc:ID) = 'AA' or normalize-space(cbc:ID) = 'RED' or normalize-space(cbc:ID) = 'INT'])) &gt; 0 and count(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory[normalize-space(cbc:ID) = 'AA' or normalize-space(cbc:ID) = 'RED' or normalize-space(cbc:ID) = 'INT']) &gt; 0) or ((count(//cac:AllowanceCharge/cac:TaxCategory[normalize-space(cbc:ID) = 'AA' or normalize-space(cbc:ID) = 'RED' or normalize-space(cbc:ID) = 'INT']) + count(//cac:ClassifiedTaxCategory[normalize-space(cbc:ID) = 'AA' or normalize-space(cbc:ID) = 'RED' or normalize-space(cbc:ID) = 'INT'])) = 0 and count(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory[normalize-space(cbc:ID) = 'AA' or normalize-space(cbc:ID) = 'RED' or normalize-space(cbc:ID) = 'INT']) = 0)"/>
  <param name="BR-AA-05" value="(cbc:Percent) &gt; 0"/>
  <param name="BR-AA-06" value="(cbc:Percent) &gt; 0"/>
  <param name="BR-AA-07" value="(cbc:Percent) &gt; 0"/>
  <param name="DT-CIUS-PT-171" value="every $rate in round(cbc:Percent) satisfies ((exists(//cac:InvoiceLine) and ((round((sum(../../../cac:InvoiceLine[normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='AA' or normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='RED' or  normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='INT'][cac:Item/cac:ClassifiedTaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:LineExtensionAmount)) + sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='true'][normalize-space(cac:TaxCategory/cbc:ID)='AA' or normalize-space(cac:TaxCategory/cbc:ID)='RED' or normalize-space(cac:TaxCategory/cbc:ID)='INT'][cac:TaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:Amount)) - sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='false'][normalize-space(cac:TaxCategory/cbc:ID)='AA' or normalize-space(cac:TaxCategory/cbc:ID)='RED' or normalize-space(cac:TaxCategory/cbc:ID)='INT'][cac:TaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:Amount))) * 100) div 100) &lt;= (xs:decimal(../cbc:TaxableAmount) + 1.00) and (round((sum(../../../cac:InvoiceLine[normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='AA' or normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='RED' or normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='INT'][cac:Item/cac:ClassifiedTaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:LineExtensionAmount)) + sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='true'][normalize-space(cac:TaxCategory/cbc:ID)='AA' or normalize-space(cac:TaxCategory/cbc:ID)='RED' or normalize-space(cac:TaxCategory/cbc:ID)='INT'][cac:TaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:Amount)) - sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='false'][normalize-space(cac:TaxCategory/cbc:ID)='AA' or normalize-space(cac:TaxCategory/cbc:ID)='RED' or normalize-space(cac:TaxCategory/cbc:ID)='INT'][cac:TaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:Amount))) * 100) div 100) &gt;=(xs:decimal(../cbc:TaxableAmount) - 1.00))) or (exists(//cac:CreditNoteLine) and ( ((round((sum(../../../cac:CreditNoteLine[normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='AA' or normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='RED' or normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='INT'][cac:Item/cac:ClassifiedTaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:LineExtensionAmount)) + sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='true'][normalize-space(cac:TaxCategory/cbc:ID)='AA' or normalize-space(cac:TaxCategory/cbc:ID)='RED' or normalize-space(cac:TaxCategory/cbc:ID)='INT'][cac:TaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:Amount)) - sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='false'][normalize-space(cac:TaxCategory/cbc:ID)='AA' or normalize-space(cac:TaxCategory/cbc:ID)='RED' or normalize-space(cac:TaxCategory/cbc:ID)='INT'][cac:TaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:Amount))) * 100) div 100) &lt;= (xs:decimal(../cbc:TaxableAmount) + 1.00) and (round((sum(../../../cac:CreditNoteLine[normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='AA' or normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='RED' or normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='INT'][cac:Item/cac:ClassifiedTaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:LineExtensionAmount)) + sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='true'][normalize-space(cac:TaxCategory/cbc:ID)='AA' or normalize-space(cac:TaxCategory/cbc:ID)='RED' or normalize-space(cac:TaxCategory/cbc:ID)='INT'][cac:TaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:Amount)) - sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='false'][normalize-space(cac:TaxCategory/cbc:ID)='AA' or normalize-space(cac:TaxCategory/cbc:ID)='RED' or normalize-space(cac:TaxCategory/cbc:ID)='INT'][cac:TaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:Amount))) * 100) div 100) &gt;=(xs:decimal(../cbc:TaxableAmount) - 1.00)))))"/>
  <param name="DT-CIUS-PT-172" value="((round((xs:decimal(../cbc:TaxableAmount) * (xs:decimal(cbc:Percent) div 100)) * 10 * 10) div 100) &lt;= (xs:decimal(../cbc:TaxAmount) + 1.00) and (round((xs:decimal(../cbc:TaxableAmount) * (xs:decimal(cbc:Percent) div 100)) * 10 * 10) div 100) &gt;= (xs:decimal(../cbc:TaxAmount) - 1.00))"/>

  <param name="BR-S-01" value="((count(//cac:AllowanceCharge/cac:TaxCategory[normalize-space(cbc:ID) = 'S' or normalize-space(cbc:ID) = 'NOR']) + count(//cac:ClassifiedTaxCategory[normalize-space(cbc:ID) = 'S' or normalize-space(cbc:ID) = 'NOR'])) &gt; 0 and count(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory[normalize-space(cbc:ID) = 'S' or normalize-space(cbc:ID) = 'NOR']) &gt; 0) or ((count(//cac:AllowanceCharge/cac:TaxCategory[normalize-space(cbc:ID) = 'S' or normalize-space(cbc:ID) = 'NOR']) + count(//cac:ClassifiedTaxCategory[normalize-space(cbc:ID) = 'S' or normalize-space(cbc:ID) = 'NOR'])) = 0 and count(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory[normalize-space(cbc:ID) = 'S' or normalize-space(cbc:ID) = 'NOR']) = 0)"/>
  <param name="BR-S-05" value="(cbc:Percent) &gt; 0"/>
  <param name="BR-S-06" value="(cbc:Percent) &gt; 0"/>
  <param name="BR-S-07" value="(cbc:Percent) &gt; 0"/>
  <param name="DT-CIUS-PT-173" value="every $rate in round(cbc:Percent) satisfies ((exists(//cac:InvoiceLine) and ((round((sum(../../../cac:InvoiceLine[normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='S' or normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='NOR'][cac:Item/cac:ClassifiedTaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:LineExtensionAmount)) + sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='true'][normalize-space(cac:TaxCategory/cbc:ID)='S' or normalize-space(cac:TaxCategory/cbc:ID)='NOR'][cac:TaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:Amount)) - sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='false'][normalize-space(cac:TaxCategory/cbc:ID)='S' or normalize-space(cac:TaxCategory/cbc:ID)='NOR'][cac:TaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:Amount))) * 100) div 100) &lt;= (xs:decimal(../cbc:TaxableAmount) + 1.00) and (round((sum(../../../cac:InvoiceLine[normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='S' or normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='NOR'][cac:Item/cac:ClassifiedTaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:LineExtensionAmount)) + sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='true'][normalize-space(cac:TaxCategory/cbc:ID)='S' or normalize-space(cac:TaxCategory/cbc:ID)='NOR'][cac:TaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:Amount)) - sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='false'][normalize-space(cac:TaxCategory/cbc:ID)='S' or normalize-space(cac:TaxCategory/cbc:ID)='NOR'][cac:TaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:Amount))) * 100) div 100) &gt;=(xs:decimal(../cbc:TaxableAmount) - 1.00))) or (exists(//cac:CreditNoteLine) and ( ((round((sum(../../../cac:CreditNoteLine[normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='S' or normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='NOR'][cac:Item/cac:ClassifiedTaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:LineExtensionAmount)) + sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='true'][normalize-space(cac:TaxCategory/cbc:ID)='S' or normalize-space(cac:TaxCategory/cbc:ID)='NOR'][cac:TaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:Amount)) - sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='false'][normalize-space(cac:TaxCategory/cbc:ID)='S' or normalize-space(cac:TaxCategory/cbc:ID)='NOR'][cac:TaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:Amount))) * 100) div 100) &lt;= (xs:decimal(../cbc:TaxableAmount) + 1.00) and (round((sum(../../../cac:CreditNoteLine[normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='S' or normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='NOR'][cac:Item/cac:ClassifiedTaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:LineExtensionAmount)) + sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='true'][normalize-space(cac:TaxCategory/cbc:ID)='S' or normalize-space(cac:TaxCategory/cbc:ID)='NOR'][cac:TaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:Amount)) - sum(../../../cac:AllowanceCharge[cbc:ChargeIndicator='false'][normalize-space(cac:TaxCategory/cbc:ID)='S' or normalize-space(cac:TaxCategory/cbc:ID)='NOR'][cac:TaxCategory/cbc:Percent=$rate]/xs:decimal(cbc:Amount))) * 100) div 100) &gt;=(xs:decimal(../cbc:TaxableAmount) - 1.00)))))"/>
  <param name="DT-CIUS-PT-174" value="((round((xs:decimal(../cbc:TaxableAmount) * (xs:decimal(cbc:Percent) div 100)) * 10 * 10) div 100) &lt;= (xs:decimal(../cbc:TaxAmount) + 1.00) and (round((xs:decimal(../cbc:TaxableAmount) * (xs:decimal(cbc:Percent) div 100)) * 10 * 10) div 100) &gt;= (xs:decimal(../cbc:TaxAmount) - 1.00))"/>
 
  <param name="BR-E-01" value="((count(//cac:AllowanceCharge/cac:TaxCategory[normalize-space(cbc:ID) = 'E' or normalize-space(cbc:ID) = 'ISE']) + count(//cac:ClassifiedTaxCategory[normalize-space(cbc:ID) = 'E' or normalize-space(cbc:ID) = 'ISE'])) &gt; 0 and count(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory[normalize-space(cbc:ID) = 'E' or normalize-space(cbc:ID) = 'ISE']) &gt; 0) or ((count(//cac:AllowanceCharge/cac:TaxCategory[normalize-space(cbc:ID) = 'E' or normalize-space(cbc:ID) = 'ISE']) + count(//cac:ClassifiedTaxCategory[normalize-space(cbc:ID) = 'E' or normalize-space(cbc:ID) = 'ISE'])) = 0 and count(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory[normalize-space(cbc:ID) = 'E' or normalize-space(cbc:ID) = 'ISE']) = 0)"/>
  <param name="BR-E-05" value="(cbc:Percent = 0)"/>
  <param name="BR-E-06" value="(cbc:Percent = 0)"/>
  <param name="BR-E-07" value="(cbc:Percent = 0)"/>
  <param name="BR-E-09" value="../cbc:TaxAmount = 0"/>
  <param name="DT-CIUS-PT-175" value="(exists(//cac:InvoiceLine) and ((sum(//cac:TaxTotal/cac:TaxSubtotal[normalize-space(cac:TaxCategory/cbc:ID) = 'E' or normalize-space(cac:TaxCategory/cbc:ID) = 'ISE']/xs:decimal(cbc:TaxableAmount)) - 1.00) &lt;= (round((sum(//cac:InvoiceLine[normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='E' or normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='ISE']/xs:decimal(cbc:LineExtensionAmount)) + sum(//cac:AllowanceCharge[cbc:ChargeIndicator='true'][normalize-space(cac:TaxCategory/cbc:ID) = 'E' or normalize-space(cac:TaxCategory/cbc:ID) = 'ISE']/xs:decimal(cbc:Amount)) - sum(//cac:AllowanceCharge[cbc:ChargeIndicator='false'][normalize-space(cac:TaxCategory/cbc:ID) = 'E' or normalize-space(cac:TaxCategory/cbc:ID) = 'ISE']/xs:decimal(cbc:Amount))) * 100) div 100)) and ((sum(//cac:TaxTotal/cac:TaxSubtotal[normalize-space(cac:TaxCategory/cbc:ID) = 'E' or normalize-space(cac:TaxCategory/cbc:ID) = 'ISE']/xs:decimal(cbc:TaxableAmount)) + 1.00) &gt;= (round((sum(//cac:InvoiceLine[normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='E' or normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='ISE']/xs:decimal(cbc:LineExtensionAmount)) + sum(//cac:AllowanceCharge[cbc:ChargeIndicator='true'][normalize-space(cac:TaxCategory/cbc:ID) = 'E' or normalize-space(cac:TaxCategory/cbc:ID) = 'ISE']/xs:decimal(cbc:Amount)) - sum(//cac:AllowanceCharge[cbc:ChargeIndicator='false'][normalize-space(cac:TaxCategory/cbc:ID) = 'E' or normalize-space(cac:TaxCategory/cbc:ID) = 'ISE']/xs:decimal(cbc:Amount))) * 100) div 100))) or  (exists(//cac:CreditNoteLine) and ((sum(//cac:TaxTotal/cac:TaxSubtotal[normalize-space(cac:TaxCategory/cbc:ID) = 'E' or normalize-space(cac:TaxCategory/cbc:ID) = 'ISE']/xs:decimal(cbc:TaxableAmount)) - 1.00) &lt;= (round((sum(//cac:CreditNoteLine[normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='E' or normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='ISE']/xs:decimal(cbc:LineExtensionAmount)) + sum(//cac:AllowanceCharge[cbc:ChargeIndicator='true'][normalize-space(cac:TaxCategory/cbc:ID) = 'E' or normalize-space(cac:TaxCategory/cbc:ID) = 'ISE']/xs:decimal(cbc:Amount)) - sum(//cac:AllowanceCharge[cbc:ChargeIndicator='false'][normalize-space(cac:TaxCategory/cbc:ID) = 'E' or normalize-space(cac:TaxCategory/cbc:ID) = 'ISE']/xs:decimal(cbc:Amount))) * 100) div 100)) and ((sum(//cac:TaxTotal/cac:TaxSubtotal[normalize-space(cac:TaxCategory/cbc:ID) = 'E' or normalize-space(cac:TaxCategory/cbc:ID) = 'ISE']/xs:decimal(cbc:TaxableAmount)) + 1.00) &gt;= (round((sum(//cac:CreditNoteLine[normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='E' or normalize-space(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)='ISE']/xs:decimal(cbc:LineExtensionAmount)) + sum(//cac:AllowanceCharge[cbc:ChargeIndicator='true'][normalize-space(cac:TaxCategory/cbc:ID) = 'E' or normalize-space(cac:TaxCategory/cbc:ID) = 'ISE']/xs:decimal(cbc:Amount)) - sum(//cac:AllowanceCharge[cbc:ChargeIndicator='false'][normalize-space(cac:TaxCategory/cbc:ID) = 'E' or normalize-space(cac:TaxCategory/cbc:ID) = 'ISE']/xs:decimal(cbc:Amount))) * 100) div 100)))"/>
  
  <param name="DT-CIUS-PT-176_0" value="every $taxExemptionReasonCode in //cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory[normalize-space(cbc:ID)='E' or normalize-space(cbc:ID)='ISE']/cbc:TaxExemptionReasonCode satisfies
((((exists(//cac:InvoiceLine) and (count(//cac:InvoiceLine[(cac:Item/cac:ClassifiedTaxCategory/cbc:ID = 'E' or cac:Item/cac:ClassifiedTaxCategory/cbc:ID = 'ISE') and cac:Item/cac:AdditionalItemProperty[cbc:Name='#TAXEXEMPTIONREASONCODE@CLASSIFIEDTAXCATEGORY#']/cbc:Value = $taxExemptionReasonCode]) = 0))
   and (exists(//cac:CreditNoteLine) and count(//cac:CreditNoteLine[(cac:Item/cac:ClassifiedTaxCategory/cbc:ID = 'E' or cac:Item/cac:ClassifiedTaxCategory/cbc:ID = 'ISE') and cac:Item/cac:AdditionalItemProperty[cbc:Name='#TAXEXEMPTIONREASONCODE@CLASSIFIEDTAXCATEGORY#']/cbc:Value = $taxExemptionReasonCode]) = 0))
   and count(//cac:AllowanceCharge/cac:TaxCategory[normalize-space(cbc:ID) = 'E' or normalize-space(cbc:ID) = 'ISE']) &gt; 0)
   or (((exists(//cac:InvoiceLine) and count(//cac:InvoiceLine[(cac:Item/cac:ClassifiedTaxCategory/cbc:ID = 'E' or cac:Item/cac:ClassifiedTaxCategory/cbc:ID = 'ISE')  and cac:Item/cac:AdditionalItemProperty[cbc:Name='#TAXEXEMPTIONREASONCODE@CLASSIFIEDTAXCATEGORY#']/cbc:Value = $taxExemptionReasonCode]) &gt; 0)
     or (exists(//cac:CreditNoteLine) and count(//cac:CreditNoteLine[(cac:Item/cac:ClassifiedTaxCategory/cbc:ID = 'E' or cac:Item/cac:ClassifiedTaxCategory/cbc:ID = 'ISE')  and cac:Item/cac:AdditionalItemProperty[cbc:Name='#TAXEXEMPTIONREASONCODE@CLASSIFIEDTAXCATEGORY#']/cbc:Value = $taxExemptionReasonCode]) &gt; 0))
and count(//cac:TaxTotal/cac:TaxSubtotal[(cac:TaxCategory/cbc:ID='E' or cac:TaxCategory/cbc:ID='ISE') and cac:TaxCategory/cbc:TaxExemptionReasonCode = $taxExemptionReasonCode]) = 1))"/>
 
  <param name="DT-CIUS-PT-176_1" value="every $taxExemptionReasonCode in //cac:InvoiceLine[cac:Item/cac:ClassifiedTaxCategory/cbc:ID = 'E' or cac:Item/cac:ClassifiedTaxCategory/cbc:ID = 'ISE']/cac:Item/cac:AdditionalItemProperty[cbc:Name='#TAXEXEMPTIONREASONCODE@CLASSIFIEDTAXCATEGORY#']/cbc:Value satisfies
( count(//cac:TaxTotal/cac:TaxSubtotal[(cac:TaxCategory/cbc:ID='E' or cac:TaxCategory/cbc:ID='ISE') and cac:TaxCategory/cbc:TaxExemptionReasonCode = $taxExemptionReasonCode]) = 1)"/> 
 
 <param name="DT-CIUS-PT-176_2" value="every $taxExemptionReasonCode in //cac:CreditNoteLine[cac:Item/cac:ClassifiedTaxCategory/cbc:ID = 'E' or cac:Item/cac:ClassifiedTaxCategory/cbc:ID = 'ISE']/cac:Item/cac:AdditionalItemProperty[cbc:Name='#TAXEXEMPTIONREASONCODE@CLASSIFIEDTAXCATEGORY#']/cbc:Value satisfies
( count(//cac:TaxTotal/cac:TaxSubtotal[(cac:TaxCategory/cbc:ID='E' or cac:TaxCategory/cbc:ID='ISE') and cac:TaxCategory/cbc:TaxExemptionReasonCode = $taxExemptionReasonCode]) = 1)"/> 
 
  <param name="BR-CO-04" value="(cac:Item/cac:ClassifiedTaxCategory/cbc:ID)"/>
  <param name="DT-CIUS-PT-157" value="((not(exists(cac:Price/cbc:BaseQuantity)) or ((exists(cac:Price/cbc:BaseQuantity)) and cac:Price/xs:decimal(cbc:BaseQuantity) = 0 )) and ((exists(cac:AllowanceCharge[cbc:ChargeIndicator='false']) and exists(cac:AllowanceCharge[cbc:ChargeIndicator='true']) and ((round(xs:decimal(cbc:InvoicedQuantity | cbc:CreditedQuantity) * cac:Price/xs:decimal(cbc:PriceAmount) * 100) div 100) + (round(sum(cac:AllowanceCharge[cbc:ChargeIndicator='true']/xs:decimal(cbc:Amount)) * 10 * 10) div 100) - (round(sum(cac:AllowanceCharge[cbc:ChargeIndicator='false']/xs:decimal(cbc:Amount)) * 10 * 10) div 100)) &lt;= (xs:decimal(cbc:LineExtensionAmount) + 1.00) and ((round(xs:decimal(cbc:InvoicedQuantity | cbc:CreditedQuantity) * cac:Price/xs:decimal(cbc:PriceAmount) * 100) div 100) + (round(sum(cac:AllowanceCharge[cbc:ChargeIndicator='true']/xs:decimal(cbc:Amount)) * 10 * 10) div 100) - (round(sum(cac:AllowanceCharge[cbc:ChargeIndicator='false']/xs:decimal(cbc:Amount)) * 10 * 10) div 100)) &gt;= (xs:decimal(cbc:LineExtensionAmount) - 1.00)) or (not(exists(cac:AllowanceCharge[cbc:ChargeIndicator='false'])) and exists(cac:AllowanceCharge[cbc:ChargeIndicator='true']) and ((round(xs:decimal(cbc:InvoicedQuantity | cbc:CreditedQuantity) * cac:Price/xs:decimal(cbc:PriceAmount) * 100) div 100) + (round(sum(cac:AllowanceCharge[cbc:ChargeIndicator='true']/xs:decimal(cbc:Amount)) * 10 * 10) div 100)) &lt;= (xs:decimal(cbc:LineExtensionAmount) + 1.00) and ((round(xs:decimal(cbc:InvoicedQuantity | cbc:CreditedQuantity) * cac:Price/xs:decimal(cbc:PriceAmount) * 100) div 100) + (round(sum(cac:AllowanceCharge[cbc:ChargeIndicator='true']/xs:decimal(cbc:Amount)) * 10 * 10) div 100)) &gt;= (xs:decimal(cbc:LineExtensionAmount) - 1.00)) or (exists(cac:AllowanceCharge[cbc:ChargeIndicator='false']) and not(exists(cac:AllowanceCharge[cbc:ChargeIndicator='true'])) and  ((round(xs:decimal(cbc:InvoicedQuantity | cbc:CreditedQuantity) * cac:Price/xs:decimal(cbc:PriceAmount) * 100) div 100) - (round(sum(cac:AllowanceCharge[cbc:ChargeIndicator='false']/xs:decimal(cbc:Amount)) * 10 * 10) div 100)) &lt;= (xs:decimal(cbc:LineExtensionAmount) + 1.00) and ((round(xs:decimal(cbc:InvoicedQuantity | cbc:CreditedQuantity) * cac:Price/xs:decimal(cbc:PriceAmount) * 100) div 100) - (round(sum(cac:AllowanceCharge[cbc:ChargeIndicator='false']/xs:decimal(cbc:Amount)) * 10 * 10) div 100)) &gt;= (xs:decimal(cbc:LineExtensionAmount) - 1.00)) or (not(exists(cac:AllowanceCharge[cbc:ChargeIndicator='false'])) and not(exists(cac:AllowanceCharge[cbc:ChargeIndicator='true'])) and  (round(xs:decimal(cbc:InvoicedQuantity | cbc:CreditedQuantity) * cac:Price/xs:decimal(cbc:PriceAmount) * 100) div 100) &lt;= (xs:decimal(cbc:LineExtensionAmount) + 1.00) and  (round(xs:decimal(cbc:InvoicedQuantity | cbc:CreditedQuantity) * cac:Price/xs:decimal(cbc:PriceAmount) * 100) div 100) &gt;= (xs:decimal(cbc:LineExtensionAmount) - 1.00)))) or (exists(cac:Price/cbc:BaseQuantity) and (cac:Price/xs:decimal(cbc:BaseQuantity) &gt; 0) and ((exists(cac:AllowanceCharge[cbc:ChargeIndicator='false']) and exists(cac:AllowanceCharge[cbc:ChargeIndicator='true']) and ((round((xs:decimal(cbc:InvoicedQuantity | cbc:CreditedQuantity) * cac:Price/xs:decimal(cbc:PriceAmount) div cac:Price/xs:decimal(cbc:BaseQuantity)) * 100) div 100) + (round(sum(cac:AllowanceCharge[cbc:ChargeIndicator='true']/xs:decimal(cbc:Amount)) * 10 * 10) div 100) - (round(sum(cac:AllowanceCharge[cbc:ChargeIndicator='false']/xs:decimal(cbc:Amount)) * 10 * 10) div 100)) &lt;= (xs:decimal(cbc:LineExtensionAmount) + 1.00) and ((round((xs:decimal(cbc:InvoicedQuantity | cbc:CreditedQuantity) * cac:Price/xs:decimal(cbc:PriceAmount) div cac:Price/xs:decimal(cbc:BaseQuantity)) * 100) div 100) + (round(sum(cac:AllowanceCharge[cbc:ChargeIndicator='true']/xs:decimal(cbc:Amount)) * 10 * 10) div 100) - (round(sum(cac:AllowanceCharge[cbc:ChargeIndicator='false']/xs:decimal(cbc:Amount)) * 10 * 10) div 100)) &gt;= (xs:decimal(cbc:LineExtensionAmount) - 1.00)) or (not(exists(cac:AllowanceCharge[cbc:ChargeIndicator='false'])) and exists(cac:AllowanceCharge[cbc:ChargeIndicator='true']) and ((round((xs:decimal(cbc:InvoicedQuantity | cbc:CreditedQuantity) * cac:Price/xs:decimal(cbc:PriceAmount) div cac:Price/xs:decimal(cbc:BaseQuantity)) * 100) div 100) + (round(sum(cac:AllowanceCharge[cbc:ChargeIndicator='true']/xs:decimal(cbc:Amount)) * 10 * 10) div 100)) &lt;= (xs:decimal(cbc:LineExtensionAmount) + 1.00) and ((round((xs:decimal(cbc:InvoicedQuantity | cbc:CreditedQuantity) * cac:Price/xs:decimal(cbc:PriceAmount) div cac:Price/xs:decimal(cbc:BaseQuantity)) * 100) div 100) + (round(sum(cac:AllowanceCharge[cbc:ChargeIndicator='true']/xs:decimal(cbc:Amount)) * 10 * 10) div 100)) &gt;= (xs:decimal(cbc:LineExtensionAmount) - 1.00)) or (exists(cac:AllowanceCharge[cbc:ChargeIndicator='false']) and not(exists(cac:AllowanceCharge[cbc:ChargeIndicator='true'])) and ((round((xs:decimal(cbc:InvoicedQuantity | cbc:CreditedQuantity) * cac:Price/xs:decimal(cbc:PriceAmount) div cac:Price/xs:decimal(cbc:BaseQuantity)) * 100) div 100) - (round(sum(cac:AllowanceCharge[cbc:ChargeIndicator='false']/xs:decimal(cbc:Amount)) * 10 * 10) div 100)) &lt;= (xs:decimal(cbc:LineExtensionAmount) + 1.00) and ((round((xs:decimal(cbc:InvoicedQuantity | cbc:CreditedQuantity) * cac:Price/xs:decimal(cbc:PriceAmount) div cac:Price/xs:decimal(cbc:BaseQuantity)) * 100) div 100) - (round(sum(cac:AllowanceCharge[cbc:ChargeIndicator='false']/xs:decimal(cbc:Amount)) * 10 * 10) div 100)) &gt;= (xs:decimal(cbc:LineExtensionAmount) - 1.00)) or (not(exists(cac:AllowanceCharge[cbc:ChargeIndicator='false'])) and not(exists(cac:AllowanceCharge[cbc:ChargeIndicator='true'])) and (round((xs:decimal(cbc:InvoicedQuantity | cbc:CreditedQuantity) * cac:Price/xs:decimal(cbc:PriceAmount) div cac:Price/xs:decimal(cbc:BaseQuantity)) * 100) div 100) &lt;= (xs:decimal(cbc:LineExtensionAmount) + 1.00) and (round((xs:decimal(cbc:InvoicedQuantity | cbc:CreditedQuantity) * cac:Price/xs:decimal(cbc:PriceAmount) div cac:Price/xs:decimal(cbc:BaseQuantity)) * 100) div 100) &gt;= (xs:decimal(cbc:LineExtensionAmount) - 1.00))))"/>  
  <param name="DT-CIUS-PT-169" value="(not(exists(xs:decimal(cbc:MultiplierFactorNumeric))) and not(exists(xs:decimal(cbc:BaseAmount)))) or (((xs:decimal(cbc:BaseAmount) * (xs:decimal(cbc:MultiplierFactorNumeric) div 100) * 10 * 10) div 100) &lt;= (xs:decimal(cbc:Amount) + 1.00) and ((xs:decimal(cbc:BaseAmount) * (xs:decimal(cbc:MultiplierFactorNumeric) div 100) * 10 * 10) div 100) &gt;= (xs:decimal(cbc:Amount) - 1.00))"/> 
  <param name="DT-CIUS-PT-168" value="(not(exists(xs:decimal(cbc:MultiplierFactorNumeric))) and not(exists(xs:decimal(cbc:BaseAmount)))) or (((xs:decimal(cbc:BaseAmount) * (xs:decimal(cbc:MultiplierFactorNumeric) div 100) * 10 * 10) div 100) &lt;= (xs:decimal(cbc:Amount) + 1.00) and ((xs:decimal(cbc:BaseAmount) * (xs:decimal(cbc:MultiplierFactorNumeric) div 100) * 10 * 10) div 100) &gt;= (xs:decimal(cbc:Amount) - 1.00))"/> 
  <param name="DT-CIUS-PT-170" value="(not(exists(cac:AllowanceCharge/xs:decimal(cbc:BaseAmount))) and not(exists(cac:AllowanceCharge/xs:decimal(cbc:Amount)))) or ((cac:AllowanceCharge/xs:decimal(cbc:BaseAmount) - (cac:AllowanceCharge/xs:decimal(cbc:Amount))) &lt;= (xs:decimal(cbc:PriceAmount) + 1.00) and (cac:AllowanceCharge/xs:decimal(cbc:BaseAmount) - (cac:AllowanceCharge/xs:decimal(cbc:Amount)))  &gt;= (xs:decimal(cbc:PriceAmount) - 1.00))"/> 
  <param name="DT-CIUS-PT-160" value="((round(sum(//cac:InvoiceLine/xs:decimal(cbc:LineExtensionAmount)) * 100) div 100) &lt;= (xs:decimal(cbc:LineExtensionAmount) + 1.00) and (round(sum(//cac:InvoiceLine/xs:decimal(cbc:LineExtensionAmount)) * 100) div 100) &gt;= (xs:decimal(cbc:LineExtensionAmount) - 1.00)) or ((round(sum(//cac:CreditNoteLine/xs:decimal(cbc:LineExtensionAmount)) * 100) div 100) &lt;= (xs:decimal(cbc:LineExtensionAmount) + 1.00) and (round(sum(//cac:CreditNoteLine/xs:decimal(cbc:LineExtensionAmount)) * 100) div 100) &gt;= (xs:decimal(cbc:LineExtensionAmount) - 1.00))"/>  
  <param name="DT-CIUS-PT-161" value="(exists(../cac:AllowanceCharge[cbc:ChargeIndicator='false']) and (round(sum(../cac:AllowanceCharge[cbc:ChargeIndicator='false']/xs:decimal(cbc:Amount)) * 10 * 10) div 100) &lt;= (xs:decimal(cbc:AllowanceTotalAmount) + 1.00) and (round(sum(../cac:AllowanceCharge[cbc:ChargeIndicator='false']/xs:decimal(cbc:Amount)) * 10 * 10) div 100) &gt;= (xs:decimal(cbc:AllowanceTotalAmount) - 1.00)) or (not(exists(../cac:AllowanceCharge[cbc:ChargeIndicator='false'])) and xs:decimal(cbc:AllowanceTotalAmount) = 0.00) or not(cbc:AllowanceTotalAmount)"/>
  <param name="DT-CIUS-PT-162" value="(exists(../cac:AllowanceCharge[cbc:ChargeIndicator='true']) and ((round(sum(../cac:AllowanceCharge[cbc:ChargeIndicator='true']/xs:decimal(cbc:Amount)) * 10 * 10) div 100) &lt;= (xs:decimal(cbc:ChargeTotalAmount) + 1.00) and (round(sum(../cac:AllowanceCharge[cbc:ChargeIndicator='true']/xs:decimal(cbc:Amount)) * 10 * 10) div 100) &gt;= (xs:decimal(cbc:ChargeTotalAmount) - 1.00))) or (not(exists(../cac:AllowanceCharge[cbc:ChargeIndicator='true'])) and xs:decimal(cbc:ChargeTotalAmount) = 0.00) or not(cbc:ChargeTotalAmount)"/>  
  <param name="DT-CIUS-PT-163" value="(exists(../cac:InvoiceLine) and ((cbc:ChargeTotalAmount) and (cbc:AllowanceTotalAmount) and (round((sum(../cac:InvoiceLine/xs:decimal(cbc:LineExtensionAmount)) + xs:decimal(cbc:ChargeTotalAmount) - xs:decimal(cbc:AllowanceTotalAmount)) * 10 * 10) div 100 ) &lt;= (xs:decimal(cbc:TaxExclusiveAmount) + 1.00) and (round((sum(../cac:InvoiceLine/xs:decimal(cbc:LineExtensionAmount)) + xs:decimal(cbc:ChargeTotalAmount) - xs:decimal(cbc:AllowanceTotalAmount)) * 10 * 10) div 100 ) &gt;= (xs:decimal(cbc:TaxExclusiveAmount) - 1.00)) or ( not(cbc:ChargeTotalAmount) and (cbc:AllowanceTotalAmount) and (round((sum(../cac:InvoiceLine/xs:decimal(cbc:LineExtensionAmount)) - xs:decimal(cbc:AllowanceTotalAmount)) * 10 * 10 ) div 100) &lt;= (xs:decimal(cbc:TaxExclusiveAmount) + 1.00) and (round((sum(../cac:InvoiceLine/xs:decimal(cbc:LineExtensionAmount)) - xs:decimal(cbc:AllowanceTotalAmount)) * 10 * 10 ) div 100) &gt;= (xs:decimal(cbc:TaxExclusiveAmount) - 1.00) ) or ( (cbc:ChargeTotalAmount) and not(cbc:AllowanceTotalAmount) and (round((sum(../cac:InvoiceLine/xs:decimal(cbc:LineExtensionAmount)) + xs:decimal(cbc:ChargeTotalAmount)) * 10 * 10 ) div 100) &lt;= (xs:decimal(cbc:TaxExclusiveAmount) + 1.00) and (round((sum(../cac:InvoiceLine/xs:decimal(cbc:LineExtensionAmount)) + xs:decimal(cbc:ChargeTotalAmount)) * 10 * 10 ) div 100) &gt;= (xs:decimal(cbc:TaxExclusiveAmount) - 1.00)) or ( not(cbc:ChargeTotalAmount) and not(cbc:AllowanceTotalAmount) and sum(../cac:InvoiceLine/xs:decimal(cbc:LineExtensionAmount)) &lt;= (xs:decimal(cbc:TaxExclusiveAmount) + 1.00) and sum(../cac:InvoiceLine/xs:decimal(cbc:LineExtensionAmount)) &gt;= (xs:decimal(cbc:TaxExclusiveAmount) - 1.00))) or (exists(../cac:CreditNoteLine) and ((cbc:ChargeTotalAmount) and (cbc:AllowanceTotalAmount) and (round((sum(../cac:CreditNoteLine/xs:decimal(cbc:LineExtensionAmount)) + xs:decimal(cbc:ChargeTotalAmount) - xs:decimal(cbc:AllowanceTotalAmount)) * 10 * 10) div 100 ) &lt;= (xs:decimal(cbc:TaxExclusiveAmount) + 1.00) and (round((sum(../cac:CreditNoteLine/xs:decimal(cbc:LineExtensionAmount)) + xs:decimal(cbc:ChargeTotalAmount) - xs:decimal(cbc:AllowanceTotalAmount)) * 10 * 10) div 100 ) &gt;= (xs:decimal(cbc:TaxExclusiveAmount) - 1.00)) or ( not(cbc:ChargeTotalAmount) and (cbc:AllowanceTotalAmount) and (round((sum(../cac:CreditNoteLine/xs:decimal(cbc:LineExtensionAmount)) - xs:decimal(cbc:AllowanceTotalAmount)) * 10 * 10 ) div 100) &lt;= (xs:decimal(cbc:TaxExclusiveAmount) + 1.00) and (round((sum(../cac:CreditNoteLine/xs:decimal(cbc:LineExtensionAmount)) - xs:decimal(cbc:AllowanceTotalAmount)) * 10 * 10 ) div 100) &gt;= (xs:decimal(cbc:TaxExclusiveAmount) - 1.00) ) or ( (cbc:ChargeTotalAmount) and not(cbc:AllowanceTotalAmount) and (round((sum(../cac:CreditNoteLine/xs:decimal(cbc:LineExtensionAmount)) + xs:decimal(cbc:ChargeTotalAmount)) * 10 * 10 ) div 100) &lt;= (xs:decimal(cbc:TaxExclusiveAmount) + 1.00) and (round((sum(../cac:CreditNoteLine/xs:decimal(cbc:LineExtensionAmount)) + xs:decimal(cbc:ChargeTotalAmount)) * 10 * 10 ) div 100) &gt;= (xs:decimal(cbc:TaxExclusiveAmount) - 1.00)) or ( not(cbc:ChargeTotalAmount) and not(cbc:AllowanceTotalAmount) and sum(../cac:CreditNoteLine/xs:decimal(cbc:LineExtensionAmount)) &lt;= (xs:decimal(cbc:TaxExclusiveAmount) + 1.00) and sum(../cac:CreditNoteLine/xs:decimal(cbc:LineExtensionAmount)) &gt;= (xs:decimal(cbc:TaxExclusiveAmount) - 1.00)))"/>  
  <param name="DT-CIUS-PT-164" value="((round((sum(cac:TaxSubtotal/xs:decimal(cbc:TaxAmount)) * 10 * 10)) div 100) &lt;= (xs:decimal(child::cbc:TaxAmount) + 1.00) and (round((sum(cac:TaxSubtotal/xs:decimal(cbc:TaxAmount)) * 10 * 10)) div 100) &gt;= (xs:decimal(child::cbc:TaxAmount) - 1.00)) or not(cac:TaxSubtotal)"/>
  <param name="DT-CIUS-PT-165" value="every $Currency in cbc:DocumentCurrencyCode satisfies ((round( (cac:LegalMonetaryTotal/xs:decimal(cbc:TaxExclusiveAmount) + cac:TaxTotal/xs:decimal(cbc:TaxAmount[@currencyID=$Currency])) * 10 * 10) div 100) &lt;= (cac:LegalMonetaryTotal/xs:decimal(cbc:TaxInclusiveAmount) + 1.00) and (round( (cac:LegalMonetaryTotal/xs:decimal(cbc:TaxExclusiveAmount) + cac:TaxTotal/xs:decimal(cbc:TaxAmount[@currencyID=$Currency])) * 10 * 10) div 100) &gt;= (cac:LegalMonetaryTotal/xs:decimal(cbc:TaxInclusiveAmount) - 1.00))"/>
  <param name="DT-CIUS-PT-166" value="(xs:decimal(cbc:PrepaidAmount) and not(xs:decimal(cbc:PayableRoundingAmount)) and (round((xs:decimal(cbc:TaxInclusiveAmount) - xs:decimal(cbc:PrepaidAmount)) * 10 * 10) div 100) &lt;= (xs:decimal(cbc:PayableAmount) + 1.00) and (round((xs:decimal(cbc:TaxInclusiveAmount) - xs:decimal(cbc:PrepaidAmount)) * 10 * 10) div 100) &gt;= (xs:decimal(cbc:PayableAmount) - 1.00)) or (not(xs:decimal(cbc:PrepaidAmount)) and not(xs:decimal(cbc:PayableRoundingAmount)) and xs:decimal(cbc:TaxInclusiveAmount) &lt;= (xs:decimal(cbc:PayableAmount) + 1.00) and xs:decimal(cbc:TaxInclusiveAmount) &gt;= (xs:decimal(cbc:PayableAmount) - 1.00)) or (xs:decimal(cbc:PrepaidAmount) and xs:decimal(cbc:PayableRoundingAmount) and ((round((xs:decimal(cbc:PayableAmount) - xs:decimal(cbc:PayableRoundingAmount)) * 10 * 10) div 100) &lt;= ((round((xs:decimal(cbc:TaxInclusiveAmount) - xs:decimal(cbc:PrepaidAmount)) * 10 * 10) div 100) + 1.00)) and ((round((xs:decimal(cbc:PayableAmount) - xs:decimal(cbc:PayableRoundingAmount)) * 10 * 10) div 100) &gt;= ((round((xs:decimal(cbc:TaxInclusiveAmount) - xs:decimal(cbc:PrepaidAmount)) * 10 * 10) div 100) - 1.00))) or (not(xs:decimal(cbc:PrepaidAmount)) and xs:decimal(cbc:PayableRoundingAmount) and (round((xs:decimal(cbc:PayableAmount) - xs:decimal(cbc:PayableRoundingAmount)) * 10 * 10) div 100) &lt;= (xs:decimal(cbc:TaxInclusiveAmount) + 1.00) and (round((xs:decimal(cbc:PayableAmount) - xs:decimal(cbc:PayableRoundingAmount)) * 10 * 10) div 100) &gt;= (xs:decimal(cbc:TaxInclusiveAmount) - 1.00))"/>
  <param name="DT-CIUS-PT-167" value="(round(cac:TaxCategory/xs:decimal(cbc:Percent)) = 0 and (round(xs:decimal(cbc:TaxAmount)) = 0)) or (round(cac:TaxCategory/xs:decimal(cbc:Percent)) != 0 and ((round(xs:decimal(cbc:TaxableAmount) * (cac:TaxCategory/xs:decimal(cbc:Percent) div 100) * 10 * 10) div 100 ) &lt;= (xs:decimal(cbc:TaxAmount) + 1.00)) and ((round(xs:decimal(cbc:TaxableAmount) * (cac:TaxCategory/xs:decimal(cbc:Percent) div 100) * 10 * 10) div 100 ) &gt;= (xs:decimal(cbc:TaxAmount) - 1.00))) or (not(exists(cac:TaxCategory/xs:decimal(cbc:Percent))) and (round(xs:decimal(cbc:TaxAmount)) = 0))"/> 
  <param name="DT-CIUS-PT-158" value="(not(exists(xs:decimal(cbc:MultiplierFactorNumeric))) and not(exists(xs:decimal(cbc:BaseAmount)))) or (((xs:decimal(cbc:BaseAmount) * (xs:decimal(cbc:MultiplierFactorNumeric) div 100) * 10 * 10) div 100) &lt;= (xs:decimal(cbc:Amount) + 1.00) and ((xs:decimal(cbc:BaseAmount) * (xs:decimal(cbc:MultiplierFactorNumeric) div 100) * 10 * 10) div 100) &gt;= (xs:decimal(cbc:Amount) - 1.00))"/> 
  <param name="DT-CIUS-PT-159" value="(not(exists(xs:decimal(cbc:MultiplierFactorNumeric))) and not(exists(xs:decimal(cbc:BaseAmount)))) or (((xs:decimal(cbc:BaseAmount) * (xs:decimal(cbc:MultiplierFactorNumeric) div 100) * 10 * 10) div 100) &lt;= (xs:decimal(cbc:Amount) + 1.00) and ((xs:decimal(cbc:BaseAmount) * (xs:decimal(cbc:MultiplierFactorNumeric) div 100) * 10 * 10) div 100) &gt;= (xs:decimal(cbc:Amount) - 1.00))"/>   
  <param name="BR-CO-25" value="((. &gt; 0) and (exists(//cbc:DueDate) or exists (//cac:PaymentMeans/cbc:PaymentDueDate) or exists(//cac:PaymentTerms/cbc:Note))) or (. &lt;= 0)"/>
  <param name="DT-CIUS-PT-177" value="((cac:Price/cbc:BaseQuantity) &gt; 0) or not(exists(cac:Price/cbc:BaseQuantity))"/>

  <param name="UBL-SR-19" value="(count(cac:PartyName/cbc:Name) &lt;= 1) and ((cac:PartyName/cbc:Name) != (../cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName))"/>
  <param name="UBL-SR-20" value="(count(cac:PartyIdentification/cbc:ID) &lt;= 1) and ((cac:PartyName/cbc:Name) != (../cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName))"/>
  <param name="UBL-SR-21" value="(count(cac:PartyLegalEntity/cbc:CompanyID) &lt;= 1) and ((cac:PartyName/cbc:Name) != (../cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName))"/>

  <param name="Amount_due " value="cac:LegalMonetaryTotal/cbc:PayableAmount"/>
  <param name="Document_totals " value="cac:LegalMonetaryTotal"/>
  <param name="Payee " value="cac:PayeeParty"/>
  <param name="Invoice " value="//ubl:Invoice | //cn:CreditNote"/>  
  <param name="Invoice_Line " value="cac:InvoiceLine | cac:CreditNoteLine"/>
  <param name="Document_level_allowances " value="//ubl:Invoice/cac:AllowanceCharge[cbc:ChargeIndicator = 'false'] | //cn:CreditNote/cac:AllowanceCharge[cbc:ChargeIndicator = 'false']"/>
  <param name="Document_level_charges " value="//ubl:Invoice/cac:AllowanceCharge[cbc:ChargeIndicator = 'true'] | //cn:CreditNote/cac:AllowanceCharge[cbc:ChargeIndicator = 'true']"/>
  <param name="Invoice_line_allowances " value="cac:InvoiceLine/cac:AllowanceCharge[cbc:ChargeIndicator = 'false'] | cac:CreditNoteLine/cac:AllowanceCharge[cbc:ChargeIndicator = 'false']"/>
  <param name="Invoice_line_charges " value="cac:InvoiceLine/cac:AllowanceCharge[cbc:ChargeIndicator = 'true'] | cac:CreditNoteLine/cac:AllowanceCharge[cbc:ChargeIndicator = 'true']"/>
  <param name="Invoice_Line_Price " value="cac:InvoiceLine/cac:Price | cac:CreditNoteLine/cac:Price"/>
  <param name="Tax_Total " value="//ubl:Invoice/cac:TaxTotal | //cn:CreditNote/cac:TaxTotal"/>
  <param name="VAT_breakdown " value="cac:TaxTotal/cac:TaxSubtotal"/>
  <param name="VATAA_Allowance " value="cac:AllowanceCharge[cbc:ChargeIndicator='false']/cac:TaxCategory[normalize-space(cbc:ID)='AA' or normalize-space(cbc:ID) = 'RED' or normalize-space(cbc:ID) = 'INT']"/>
  <param name="VATAA_Charge " value="cac:AllowanceCharge[cbc:ChargeIndicator='true']/cac:TaxCategory[normalize-space(cbc:ID)='AA' or normalize-space(cbc:ID) = 'RED' or normalize-space(cbc:ID) = 'INT']"/>
  <param name="VATAA_Line " value="cac:InvoiceLine/cac:Item/cac:ClassifiedTaxCategory[normalize-space(cbc:ID) = 'AA' or normalize-space(cbc:ID) = 'RED' or normalize-space(cbc:ID) = 'INT'] | cac:CreditNoteLine/cac:Item/cac:ClassifiedTaxCategory[normalize-space(cbc:ID) = 'AA' or normalize-space(cbc:ID) = 'RED' or normalize-space(cbc:ID) = 'INT']"/>
  <param name="VATAA " value="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory[normalize-space(cbc:ID) = 'AA' or normalize-space(cbc:ID) = 'RED' or normalize-space(cbc:ID) = 'INT']"/>
  <param name="VATS_Allowance " value="cac:AllowanceCharge[cbc:ChargeIndicator='false']/cac:TaxCategory[normalize-space(cbc:ID)='S' or normalize-space(cbc:ID) = 'NOR']"/>
  <param name="VATS_Charge " value="cac:AllowanceCharge[cbc:ChargeIndicator='true']/cac:TaxCategory[normalize-space(cbc:ID)='S' or normalize-space(cbc:ID) = 'NOR']"/>
  <param name="VATS_Line " value="cac:InvoiceLine/cac:Item/cac:ClassifiedTaxCategory[normalize-space(cbc:ID) = 'S' or normalize-space(cbc:ID) = 'NOR'] | cac:CreditNoteLine/cac:Item/cac:ClassifiedTaxCategory[normalize-space(cbc:ID) = 'S' or normalize-space(cbc:ID) = 'NOR']"/>
  <param name="VATS " value="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory[normalize-space(cbc:ID) = 'S' or normalize-space(cbc:ID) = 'NOR']"/>
  <param name="VATE_Allowance " value="cac:AllowanceCharge[cbc:ChargeIndicator='false']/cac:TaxCategory[normalize-space(cbc:ID) = 'E' or normalize-space(cbc:ID) = 'ISE']"/>
  <param name="VATE_Charge " value="cac:AllowanceCharge[cbc:ChargeIndicator='true']/cac:TaxCategory[normalize-space(cbc:ID) = 'E' or normalize-space(cbc:ID) = 'ISE']"/>
  <param name="VATE_Line " value="cac:InvoiceLine/cac:Item/cac:ClassifiedTaxCategory[normalize-space(cbc:ID) = 'E' or normalize-space(cbc:ID) = 'ISE'] | cac:CreditNoteLine/cac:Item/cac:ClassifiedTaxCategory[normalize-space(cbc:ID) = 'E' or normalize-space(cbc:ID) = 'ISE']"/>
  <param name="VATE " value="cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory[normalize-space(cbc:ID) = 'E' or normalize-space(cbc:ID) = 'ISE']"/>
</pattern>