$(document).on('turbolinks:load', function() {
  if ($( "#usuario_perfil_attributes_atuacao" ).val() != 'Outra') {
    $( "#usuario_perfil_attributes_atividade" ).hide();
  }
  $( "#usuario_perfil_attributes_atuacao" ).change(function() {
    if ($(this).val() == 'Outra') {
      $( "#usuario_perfil_attributes_atividade" ).show("slow");
    } else {
      $( "#usuario_perfil_attributes_atividade" ).hide("slow");
    }
  });
});
