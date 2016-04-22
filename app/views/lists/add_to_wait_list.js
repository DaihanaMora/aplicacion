
<% if @list.persisted? %>
	$('#respuesta').html('su urgencia ha sido registrada y enviada');
<% else %>
	$('#respuesta').html("<%= @list.errors.full_messages.join(', ') %>");
<% end %>