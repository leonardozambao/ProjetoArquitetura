<?php
require_once('controller/control-meu-perfil.php');
get_header();
?>
<div class="container meu-perfil">
    <div class="flex">
        <section class="meus-animais">
            <h2 class="title_section">Meus animais cadastrados</h2>
            <p>Remova ou visualize os animais que você cadastrou em nosso site (lembre-se de remover após fechar negócio com outro usuário)</p>
            <div class="flex-wrap list_vitrine">
                <?php
                $i = 0;
                while ($registro = mysqli_fetch_assoc($animais)) {
                ?>
                    <article class="item_vitrine item_double">
                        <a href="<?php echo get_site_url(); ?>/detalhe?id=<?php echo $registro['ID']; ?>">
                            <figure>
                                <img src="<?php echo get_site_url() . '/' . $registro['Foto'] ?>" alt="">
                            </figure>
                            <h3 class="item_name"><?php echo $registro["Nome"]; ?></h3>
                        </a>
                        <a href="javascript:void(0);" onclick="removerAnimal(<?php echo $registro['ID']; ?>, 'animais');" class="remover" title="Remover animal da listagem">Remover animal</a>
                    </article>
                <?php
                    $i++;
                }
                if ($i == 0) { ?>
                    <p>Você ainda não tem nenhum animal cadastrado em nosso site</p>
                    <a href="<?php echo get_site_url(); ?>/doar" class="cadastre">Cadastre clicando aqui</a>
                <?php } ?>
            </div>
            <h2 class="title_section">Meus animais em emergência</h2>
            <p>Remova ou visualize os animais em situação de emergência que você cadastrou em nosso site (lembre-se de remover após ter a emergência resolvida)</p>
            <div class="flex-wrap list_vitrine">
                <?php
                $i = 0;
                while ($registro = mysqli_fetch_assoc($animais2)) {
                ?>
                    <article class="item_vitrine item_double">
                        <a href="<?php echo get_site_url(); ?>/detalhe?id=<?php echo $registro['ID']; ?>">
                            <figure>
                                <img src="<?php echo get_site_url() . '/' . $registro['Foto'] ?>" alt="">
                            </figure>
                            <h3 class="item_name"><?php echo $registro["Nome"]; ?></h3>
                        </a>
                        <a href="javascript:void(0);" onclick="removerAnimal(<?php echo $registro['ID']; ?>, 'emergencia');" class="remover" title="Remover animal da listagem">Remover animal</a>
                    </article>
                <?php
                    $i++;
                }
                if ($i == 0) { ?>
                    <p>Você não tem nenhum animal em situação de emergência</p>
                <?php } ?>
            </div>
        </section>
        <section class="meus-dados">
            <h2 class="title_section">Meus dados</h2>
            <p>Mantenha seus dados atualizados, os interessados usarão eles para entrar em contato com você</p>
            <div class="box_login cadastro">
                <form action="<?php echo $url; ?>" method="POST" class="flex-column">
                    <input type="text" name="nome" id="nome" placeholder="nome" required value="<?php echo $_SESSION["usuario"]; ?>">
                    <input type="email" name="usuario" id="usuario" placeholder="e-mail" required value="<?php echo $_SESSION["email"]; ?>">
                    <input type="password" name="senha" id="senha" placeholder="senha" required value="<?php echo $_SESSION["senha"]; ?>">
                    <input type="tel" name="telefone" id="telefone" placeholder="telefone" required value="<?php echo $_SESSION["telefone"]; ?>">
                    <input type="text" name="estado" id="estado" placeholder="estado" required value="<?php echo $_SESSION["estado"]; ?>">
                    <input type="text" name="cidade" id="cidade" placeholder="cidade" required value="<?php echo $_SESSION["cidade"]; ?>">
                    <input type="text" name="bairro" id="bairro" placeholder="bairro" required value="<?php echo $_SESSION["bairro"]; ?>">
                    <input type="text" name="rua" id="rua" placeholder="rua" required value="<?php echo $_SESSION["rua"]; ?>">
                    <?php if (isset($mensagem)) echo '<p class="text-center">' . $mensagem . '</p>'; ?>
                    <input type="submit" value="Salvar alterações" class="btn btn--green">
                </form>
            </div>
        </section>
    </div>
</div>

<script>
    function removerAnimal(id, type) {
        $.ajax({
            url: "<?php echo get_template_directory_uri(); ?>/controller/control-remover-animal.php?type=" + type + "&animal=" + id,
        }).done(function() {
            console.log('já era');
            location.reload();
        });
    }
</script>

<?php
get_footer();
?>