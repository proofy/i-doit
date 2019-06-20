<h2>i-doit Update</h2>
<table class="info">
    <colgroup>
        <col width="150" />
    </colgroup>
    [{if $isCryptKeySet}]
        <tr>
            <td colspan="2">
                <h1>Please contact the i-doit pro support Team</h1>
                <p>
                    During the installation of i-doit pro 1.9. an active undocumented function was found. <br />The update can not be continued, otherwise the data integrity
                    could be violated.<br />
                    <br />We will help you with further steps concerning your installation. Please contact us directly:
                </p>
                <p>
                    Email: <a href="mailto:help@i-doit.com">help@i-doit.com</a>
                </p>
                <p>
                    Phone: <a href="tel:+49 (0)21169931-150">+49 (0)21169931-150</a>
                </p>
            </td>
        </tr>
    [{/if}]
    <tr>
        <td colspan="2"><h3>Compatibility check</h3></td>
    </tr>
    <tr>
        <td class="key">Operating System:</td>
        <td>[{$g_os.name}]</td>
    </tr>
    <tr>
        <td class="key">Version:</td>
        <td>[{$g_os.version}]</td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
    [{if $php_version_error}]
        <tr>
            <td class="key">PHP Version</td>
            <td><p class="exception bold" style="padding:5px;">[{$php_version_error}]</p></td>
        </tr>
    [{else}]
        <tr>
            <td class="key">PHP Version</td>
            <td>[{$smarty.const.PHP_VERSION}] (PHP [{$smarty.const.UPDATE_PHP_VERSION_MINIMUM_RECOMMENDED}] recommended)</td>
        </tr>
    [{/if}]
    [{if $sql_version_error}]
        <tr>
            <td class="key">MySQL Version</td>
            <td><p class="exception bold" style="padding:5px;">[{$sql_version_error}]</p></td>
        </tr>
    [{else}]
        <tr>
            <td class="key">[{if $dbTitle != ''}][{$dbTitle}][{else}]MySQL[{/if}] Version</td>
            <td>
                [{if $miniumDbVersion != ''}]
                [{$currentDbVersion}] ([{$dbTitle}] [{$miniumDbVersion}] recommended)
                [{else}]
                [{$smarty.const.MYSQL_VERSION_MINIMUM}] (MySQL [{$smarty.const.MYSQL_VERSION_MINIMUM_RECOMMENDED}] recommended)
                [{/if}]
            </td>
        </tr>
    [{/if}]
    [{if $addon_version_notification}]
        <tr>
            <td class="key">Add-on Versions</td>
            <td><img src="[{$dir_images}]icons/silk/error.png" style="vertical-align: middle; margin-right:5px" /><strong
                        style="color:#926c07; vertical-align: middle">[{$addon_version_notification}]</strong></td>
        </tr>
    [{/if}]
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="key" style="vertical-align: top;">PHP Settings</td>
        <td>
            <ul>
                [{foreach $php_settings as $setting => $data}]
                    <li><strong>[{$setting}]</strong> <span style="float:left; width:50px;">[{$data.value}]</span> [{if $data.check}]<img
                            src="[{$dir_images}]icons/silk/tick.png" />[{else}]<img src="[{$dir_images}]icons/silk/cross.png" /><span
                                    class="red">[{$data.message}]</span>[{/if}]</li>
                [{/foreach}]
            </ul>
        </td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="key" style="vertical-align: top;">PHP Extensions</td>
        <td>
            <ul>
                [{foreach $dependencies as $dependency => $module}]
                    [{if $dependency == "mysql" && version_compare($smarty.const.PHP_VERSION, '5.6') === 1}]
                        <li><strong>[{$dependency}] <img src="[{$dir_images}]icons/silk/information.png" class="mouse-help"
                                                         title="Used by [{$module|implode:', '}]" /></strong> [{if extension_loaded("mysqli")}]<img
                                src="[{$dir_images}]icons/silk/tick.png" />
                                <span class="green">OK</span>
                            [{else}]<img src="[{$dir_images}]icons/silk/cross.png" />
                                <span class="red">NOT FOUND</span>
                            [{/if}]</li>
                    [{else}]
                        <li><strong>[{$dependency}] <img src="[{$dir_images}]icons/silk/information.png" class="mouse-help"
                                                         title="Used by [{$module|implode:', '}]" /></strong> [{if extension_loaded($dependency)}]<img
                                src="[{$dir_images}]icons/silk/tick.png" />
                                <span class="green">OK</span>
                            [{else}]<img src="[{$dir_images}]icons/silk/cross.png" />
                                <span class="red">NOT FOUND</span>
                            [{/if}]</li>
                    [{/if}]
                [{/foreach}]
            </ul>
        </td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="key" style="vertical-align: top;">Apache modules</td>
        <td>
            <ul>
                [{foreach $apache_dependencies as $dependency => $module}]
                    <li><strong>[{$dependency}] <img src="[{$dir_images}]icons/silk/information.png" class="mouse-help"
                                                     title="Used by [{$module|implode:', '}]" /></strong> [{if isys_update::is_webserver_module_installed($dependency)}]<img
                            src="[{$dir_images}]icons/silk/tick.png" />
                            <span class="green">OK</span>
                        [{else}]<img src="[{$dir_images}]icons/silk/cross.png" />
                            <span class="red">NOT FOUND</span>
                        [{/if}]</li>
                [{/foreach}]
            </ul>
        </td>
    </tr>
    <tr>
        <td colspan="2"><h3>i-doit</h3></td>
    </tr>
    <tr>
        <td class="key">Current version</td>
        <td>[{$g_info.version|default:"<= 0.9"}]</td>
    </tr>
    <tr>
        <td class="key">Current revision</td>
        <td>[{$g_info.revision|default:"<= 2500"}]</td>
    </tr>
</table>

<style type="text/css">
    ul, li {
        margin: 0;
        padding: 0;
        list-style: none;
    }

    li strong {
        clear: both;
        width: 110px;
        display: block;
        float: left;
    }

    li strong img {
        height: 12px;
    }

    li strong,
    li span,
    li img {
        vertical-align: middle;
    }

    li strong,
    li img {
        margin-right: 5px;
    }

    .mouse-help {
        cursor: help;
    }

    span.green {
        color: #009900;
    }

    span.red {
        color: #AA0000;
    }
</style>
