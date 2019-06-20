<h2>Step 1: System check</h2>
<table class="stepTable">
	<tr>
		<td colspan="3" class="stepHeadline">
			Operating System
		</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td class="stepLineData">Type: [STEP1_OS_TYPE]</td>
		<td class="[STEP1_OS_TYPE_STATUS]">[STEP1_OS_TYPE_RESULT]</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td class="stepLineData">Version: [STEP1_OS_VERSION]</td>
		<td class="[STEP1_OS_VERSION_STATUS]">[STEP1_OS_VERSION_RESULT]</td>
	</tr>
	<tr>
		<td colspan="3" class="stepHeadline">
			Webserver
		</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td class="stepLineData">Version: [STEP1_WEBSERVER_VERSION]</td>
		<td class="[STEP1_WEBSERVER_VERSION_STATUS]">[STEP1_WEBSERVER_VERSION_RESULT]</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td class="stepLineData">PHP Version: [STEP1_WEBSERVER_PHP]</td>
		<td class="[STEP1_WEBSERVER_PHP_STATUS]">[STEP1_WEBSERVER_PHP_RESULT]</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td class="stepLineData">PHP Session Extension: [STEP1_WEBSERVER_PHP_SESSION]</td>
		<td class="[STEP1_WEBSERVER_PHP_SESSION_STATUS]">[STEP1_WEBSERVER_PHP_SESSION_RESULT]</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td class="stepLineData">PHP <a target="_blank" href="http://php.net/mysql">MySQL</a> Extension: [STEP1_WEBSERVER_PHP_MYSQL]</td>
		<td class="[STEP1_WEBSERVER_PHP_MYSQL_STATUS]">[STEP1_WEBSERVER_PHP_MYSQL_RESULT]</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td class="stepLineData">PHP <a target="_blank" href="http://php.net/xml">XML</a> Extension: [STEP1_WEBSERVER_PHP_XML]</td>
		<td class="[STEP1_WEBSERVER_PHP_XML_STATUS]">[STEP1_WEBSERVER_PHP_XML_RESULT]</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td class="stepLineData">PHP <a target="_blank" href="http://php.net/zlib">ZLIB</a> Extension: [STEP1_WEBSERVER_PHP_ZLIB]</td>
		<td class="[STEP1_WEBSERVER_PHP_ZLIB_STATUS]">[STEP1_WEBSERVER_PHP_ZLIB_RESULT]</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td class="stepLineData">PHP <a target="_blank" href="http://php.net/gd">GD</a> Extension: [STEP1_WEBSERVER_PHP_GD]</td>
		<td class="[STEP1_WEBSERVER_PHP_GD_STATUS]">[STEP1_WEBSERVER_PHP_GD_RESULT]</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td class="stepLineData">PHP <a target="_blank" href="http://php.net/simplexml">SimpleXML</a> Extension: [STEP1_WEBSERVER_PHP_SIMPLEXML]</td>
		<td class="[STEP1_WEBSERVER_PHP_SIMPLEXML_STATUS]">[STEP1_WEBSERVER_PHP_SIMPLEXML_RESULT]</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td class="stepLineData">PHP Setting "<a href="#" onclick="document.getElementById('max_input_vars').style.display='';">max_input_vars</a>":
			[STEP1_MAX_INPUT_VARS]
		</td>
		<td class="[STEP1_MAX_INPUT_VARS_STATUS]">[STEP1_MAX_INPUT_VARS_RESULT]</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td class="stepLineData">PHP Setting "<a href="#" onclick="document.getElementById('post_max_size').style.display='';">post_max_size</a>":
			[STEP1_POST_MAX_SIZE]
		</td>
		<td class="[STEP1_POST_MAX_SIZE_STATUS]">[STEP1_POST_MAX_SIZE_RESULT]</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td class="stepLineData">PHP <a target="_blank" href="http://php.net/curl">cURL</a> Extension: [STEP1_WEBSERVER_PHP_CURL]</td>
		<td class="[STEP1_WEBSERVER_PHP_CURL_STATUS]">[STEP1_WEBSERVER_PHP_CURL_RESULT]</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td class="stepLineData">PHP <a target="_blank" href="http://php.net/curl">PDO_MySQL</a> Extension: [STEP1_WEBSERVER_PHP_PDO_MYSQL]</td>
		<td class="[STEP1_WEBSERVER_PHP_PDO_MYSQL_STATUS]">[STEP1_WEBSERVER_PHP_PDO_MYSQL_RESULT]</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td class="stepLineData">PHP <a target="_blank" href="http://php.net/mcrypt">Mcrypt</a> Extension: [STEP1_WEBSERVER_PHP_MCRYPT]</td>
		<td class="[STEP1_WEBSERVER_PHP_MCRYPT_STATUS]">[STEP1_WEBSERVER_PHP_MCRYPT_RESULT]</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td class="stepLineData">Apache module mod_rewrite: [STEP1_WEBSERVER_REWRITE]</td>
		<td class="[STEP1_WEBSERVER_REWRITE_STATUS]">[STEP1_WEBSERVER_REWRITE_RESULT]</td>
	</tr>
	<tr>
		<td colspan="3" class="stepHeadline">
			Database Access Interface (PHP MySQL Extension)
		</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td class="stepLineData">Version: [STEP1_DATABASE_VERSION]</td>
		<td class="[STEP1_DATABASE_VERSION_STATUS]">[STEP1_DATABASE_VERSION_RESULT]</td>
	</tr>
</table>

<div id="max_input_vars" style="display:none;position:absolute;top:230px;left:40%;width:280px;border:1px solid #666; background:#fff; padding:10px;">
	<a href="#" style="float:right;" onclick="document.getElementById('max_input_vars').style.display='none';">Close</a>
	<span>
		You should set max_input_vars to at least <br /><strong>10000</strong> in order to install i-doit.<br />
		<hr />
		php.ini Setting example:
		<pre>max_input_vars = 10000</pre>
	</span>
</div>

<div id="post_max_size" style="display:none;position:absolute;top:260px;left:40%;width:280px;border:1px solid #666; background:#fff; padding:10px;">
	<a href="#" style="float:right;" onclick="document.getElementById('post_max_size').style.display='none';">Close</a>
	<span>
		You should set post_max_size<br />to at least <strong>128M</strong> in order to install i-doit.<br />
		<hr />
		php.ini Setting example:
		<pre>post_max_size = 128M</pre>
	</span>
</div>