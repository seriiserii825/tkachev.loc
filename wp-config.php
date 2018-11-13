<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('DB_NAME', 'tkachev');

/** Имя пользователя MySQL */
define('DB_USER', 'root');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', 'mysql');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8mb4');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '.XyZgwH_%Evsr`KW}~1 X6p2*)q^n(3}Qa^y^oO^Rp8l.a_E4va!6Ghe`UC=Xdna');
define('SECURE_AUTH_KEY',  '~H3-?<WqKX2lax5Oh2[O$ojtWFZGLp,1]otYzu/YwtNu|m=&?]0qHsbs3cmEo?|f');
define('LOGGED_IN_KEY',    '.OuAY<aqJ63W%GU:OzdZ$!xd=CU,*9,u`2 ssX&)0UD.`_L{1Zqy&@~<<>FuJr+7');
define('NONCE_KEY',        'HFmgT39X,6^zJq9YF?}b3%^8VFB}W&oyV}gD8[`<ILM{eLC:&2^yRV7XN%CNykv{');
define('AUTH_SALT',        'XF%PC(K]H>zHHL/X$(s1 GKNa4tS.W,=qR,^$c56GL^Vv7rW_9p,oBk]y,v<ye2F');
define('SECURE_AUTH_SALT', 'wqXj)8}eS&a%0/8c~DMK5 ~4DdC&/8)q9V5/XNEkLQCJ_.ZeT_-sVtAvhp{sX _r');
define('LOGGED_IN_SALT',   'hVMjVvDZLN$#SE?IQ)D+r+bbQL#$.89E2G]Uh0fdI-NX!>g~1lie_sdLKBm7(x6)');
define('NONCE_SALT',       ' J.92qL?F!BP6hM,~|~mZJ.d->vY.Z2Oj2*=Sy<):*>d+fY^Sf+^3)2O[]<.be/S');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
