<?php
require_once('controller/control-cadastrar.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable = 0, initial-scale=1.0, maximum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php echo get_bloginfo('name'); ?> - Cadastrar</title>
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/login.css">
    <script src="<?php echo get_template_directory_uri(); ?>/js/jquery-3.4.1.min.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/js/jquery.mask.js"></script>
</head>

<body>
    <section id="login" class="login <?php if (isset($mensagem)) echo 'error'; ?>">
        <img src="<?php echo get_template_directory_uri(); ?>/images/login.jpg" class="banner">
        <div class="box_login cadastro">
            <form action="<?php echo $url; ?>" method="POST" class="flex-column">
                <img src="<?php echo get_template_directory_uri(); ?>/images/logo.png" alt="" class="logo">
                <p class="text-center">Bem vindo ao <?php echo get_bloginfo('name'); ?><br> Crie sua conta</p>
                <div class="row flex-between">
                    <input type="text" name="nome" id="nome" placeholder="nome" required>
                    <input type="email" name="usuario" id="usuario" placeholder="e-mail" required>
                </div>
                <div class="row flex-between">
                    <input type="password" name="senha" id="senha" placeholder="senha" required>
                    <input type="tel" name="telefone" id="telefone" placeholder="telefone" required>
                </div>
                <div class="row flex-between">
                    <input type="text" name="cep" id="cep" placeholder="CEP" onblur="pesquisacep(this.value);">
                    <input type="text" name="estado" id="estado" placeholder="estado" required>
                </div>
                <div class="row flex-between">
                    <input type="text" name="cidade" id="cidade" placeholder="cidade" required>
                    <input type="text" name="bairro" id="bairro" placeholder="bairro" required>
                </div>
                <input type="text" name="rua" id="rua" placeholder="rua" required>
                <?php if (isset($mensagem)) echo '<span>'.$mensagem.'</span>'; ?>
                <input type="submit" value="Cadastrar" class="btn">
                <a class="text-center sem-conta" href="<?php echo get_site_url(); ?>/login">Já tenho uma conta</a>
            </form>
        </div>
    </section>

    <script>
        $(document).ready(function(){
            $('#cep').mask('00000-000');
            $('#telefone').mask('(00) 00000-0000');
        })
        function limpa_formulário_cep() {
            //Limpa valores do formulário de cep.
            document.getElementById('rua').value = ("");
            document.getElementById('bairro').value = ("");
            document.getElementById('cidade').value = ("");
            document.getElementById('estado').value = ("");
        }

        function meu_callback(conteudo) {
            if (!("erro" in conteudo)) {
                //Atualiza os campos com os valores.
                document.getElementById('rua').value = (conteudo.logradouro);
                document.getElementById('bairro').value = (conteudo.bairro);
                document.getElementById('cidade').value = (conteudo.localidade);
                document.getElementById('estado').value = (conteudo.uf);
            } //end if.
            else {
                //CEP não Encontrado.
                limpa_formulário_cep();
                alert("CEP não encontrado.");
            }
        }

        function pesquisacep(valor) {

            //Nova variável "cep" somente com dígitos.
            var cep = valor.replace(/\D/g, '');

            //Verifica se campo cep possui valor informado.
            if (cep != "") {

                //Expressão regular para validar o CEP.
                var validacep = /^[0-9]{8}$/;

                //Valida o formato do CEP.
                if (validacep.test(cep)) {

                    //Preenche os campos com "..." enquanto consulta webservice.
                    document.getElementById('rua').value = "...";
                    document.getElementById('bairro').value = "...";
                    document.getElementById('cidade').value = "...";
                    document.getElementById('estado').value = "...";
                    // deixar comentado elementos não utilziados, senão ele dá erro no console e não retorna nada

                    //Cria um elemento javascript.
                    var script = document.createElement('script');

                    //Sincroniza com o callback.
                    script.src = 'https://viacep.com.br/ws/' + cep + '/json/?callback=meu_callback';

                    //Insere script no documento e carrega o conteúdo.
                    document.body.appendChild(script);

                } //end if.
                else {
                    //cep é inválido.
                    limpa_formulário_cep();
                    alert("Formato de CEP inválido.");
                }
            } //end if.
            else {
                //cep sem valor, limpa formulário.
                limpa_formulário_cep();
            }
        };
    </script>
</body>

</html>