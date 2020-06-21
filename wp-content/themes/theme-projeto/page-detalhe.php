<?php
get_header();
require_once('controller/control-detalhe.php');
?>

<section class="detalhe" id="detalhe">
    <div class="container">
        <article>
            <h1><?php echo $registro["Nome"]; ?></h1>
            <figure>
                <img src="<?php echo get_site_url() . '/' . $registro['Foto'] ?>" alt="<?php echo $registro["Nome"]; ?>">
            </figure>
            <ul>
                <?php if ($registro["Raca"] != '') { ?><li><b>Raça:</b> <?php echo $registro["Raca"]; ?></li><?php } ?>
                <?php if ($registro["Idade"] != '') { ?><li><b>Idade:</b> <?php echo $registro["Idade"]; ?></li><?php } ?>
                <?php if ($registro["Descricao"] != '') { ?><li><b>Descrição:</b> <?php echo $registro["Descricao"]; ?></li><?php } ?>
                <?php if ($registro["Documentos"] != '') { ?><li><a href="<?php echo  get_site_url() . '/' . $registro['Documentos'] ?>" download="Documentos de <?php echo $registro["Nome"]; ?>">Clique aqui para baixar a documentação do animal</a></li><?php } ?>
            </ul>
            <h2>Dados do dono:</h2>
            <ul>
                <li><b>Nome:</b> <?php echo $registroDono["Nome"]; ?></li>
                <li><b>Telefone:</b> <a title="Clique para mandar mensagem no Whatsapp" href="https://api.whatsapp.com/send?phone=<?php echo $numeroLimpo; ?>&amp;text=Ol%C3%A1,%20gostaria%20de%20saber%20mais%20sobre%20o%20seu%20animal%20<?php echo $registro["Nome"]; ?>,%20listado%20no%20site%20Assistência%20de%20Animais" target="_blank"><?php echo $registroDono["Telefone"]; ?></a></li>
                <?php if ($registroDono["RedeSocial"] != '') { ?><li><b>Link de rede social:</b> <a target="_blank" href="<?php echo $registroDono["RedeSocial"]; ?>"><?php echo $registroDono["RedeSocial"]; ?></a> </li> <?php } ?>
                <li><b>E-mail:</b> <?php echo $registroDono["Email"]; ?></li>
                <li><b>Estado:</b> <?php echo $registroDono["Estado"]; ?></li>
                <li><b>Cidade:</b> <?php echo $registroDono["Cidade"]; ?></li>
                <li><b>Bairro:</b> <?php echo $registroDono["Bairro"]; ?></li>
            </ul>
        </article>
    </div>
</section>

<?php
get_footer();
?>