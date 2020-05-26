<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define( 'DB_NAME', 'db_projetoarquitetura' );

/** Usuário do banco de dados MySQL */
define( 'DB_USER', 'root' );

/** Senha do banco de dados MySQL */
define( 'DB_PASSWORD', '' );

/** Nome do host do MySQL */
define( 'DB_HOST', 'localhost' );

/** Charset do banco de dados a ser usado na criação das tabelas. */
define( 'DB_CHARSET', 'utf8mb4' );

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define( 'DB_COLLATE', '' );

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'twt!P:Xu0jP$cqEC:=o8Z?dMC6oool[ZlN<- iP9Q]J1H{DJcMPV9l/GY-|wTh-s' );
define( 'SECURE_AUTH_KEY',  ' wWbN]&sZ?]5*G9vyBJ^*zJzf(c5lq/VwKa(n|cFcYpu>(voSK]T16HpoqSztgTX' );
define( 'LOGGED_IN_KEY',    'KD#u;L[i$<8 ?Uo`C!VwJMC::P~RX?LE]i,2#1LL-ZzyY%w#U1S7+#R=6]OJ$<(`' );
define( 'NONCE_KEY',        '-h19;B?Ht^87lx~jn!EvbQ7u5!7r 5V5x$9Oh5~|#cXWTOOU~++Gnd:Z^v t|TU^' );
define( 'AUTH_SALT',        'z$! ##N:7vy6O{#d$)CSKcPA/@oTxxX v5bSXXmXe+x8&ri%-q)l[Nq,AZV$Z*y0' );
define( 'SECURE_AUTH_SALT', 'p5NFtG;}zaYa*hYVARS~2C&0JLRIVA:QfQk2vs$bQZVqC`QZOo$P|A$h%Slx,Xd*' );
define( 'LOGGED_IN_SALT',   'mr*1^t]Tt<Lxk!wZKkRo%{39>eqtL`U 8X^^K mcF*wuN^L@QUa9v+ kD,*U>}n7' );
define( 'NONCE_SALT',       '46u{a60ikZ1oB4D_LN8zI9UbRmHz8ZokJM/<Pv}ux.rz9^a,]ikpf;>CS8z?0]6E' );

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix = 'wp_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Configura as variáveis e arquivos do WordPress. */
require_once ABSPATH . 'wp-settings.php';
