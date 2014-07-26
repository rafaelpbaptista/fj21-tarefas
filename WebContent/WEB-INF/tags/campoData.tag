<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ attribute name="id" required="true"%>
<%@ attribute name="nome" required="true"%>
<%@ attribute name="valor" required="false" type="java.util.Date"%>

<input type="text" id="${id}" name="${nome}" value="<fmt:formatDate value="${valor}" pattern="dd/MM/yyyy"/>" /> 

<script type="text/javascript">
	$(function(){
		$("#${id}").datepicker({
			showButtonPanel : true,
			changeMonth : true,
			changeYear : true,
			showWeek : true,
			firstDay : 1,
			dateFormat : 'dd/mm/yy',
		    dayNames: ['Domingo','Segunda','Terça','Quarta','Quinta','Sexta','Sábado'],
		    dayNamesMin: ['D','S','T','Q','Q','S','S','D'],
		    dayNamesShort: ['Dom','Seg','Ter','Qua','Qui','Sex','Sáb','Dom'],
		    monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'],
		    monthNamesShort: ['Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez'],
		    nextText: 'Próximo',
		    prevText: 'Anterior'
		});
	});
</script>
