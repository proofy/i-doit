<?php

namespace idoit\Component\Document;

use Knp\Snappy\Pdf as SnappyPdf;

/**
 * i-doit Pdf Document Component
 *
 * @author      kmauel <kmauel@i-doit.com>
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
class Pdf extends SnappyPdf
{
    public function enableTableOfContents()
    {
        $this->setOption('toc', true);
    }

    public function disableTableOfContents()
    {
        $this->setOption('toc', false);
    }

    /**
     * Adds cover page with either html string or path to a html file
     *
     * @param string $coverHtml
     */
    public function addCover($coverHtml)
    {
        $this->setOption('cover', $coverHtml);
    }

    /**
     * Add header as html and ensure necessary format is met
     * Style/Script can either be provided as path to file or string
     *
     * @param string $headerHtml
     * @param null $style
     * @param null $script
     */
    public function addHeader($headerHtml, $style = null, $script = null)
    {
        if ($script !== null && stripos($script, '<script>') === false) {
            $script = '<script>' . $script . '</script>';
        }

        if ($style !== null && file_exists($style)) {
            $style = file_get_contents($style);
        }

        if (stripos($style, '<style>') === false) {
            $style = '<style>' . $style . '</style>';
        }

        // Assuming there are missing necessary tags, we wrap the html
        if (stripos($headerHtml, '<!DOCTYPE html>') === false && stripos($headerHtml, '<html><head>') === false) {
            $headerHtml = '<!DOCTYPE html><html><head><meta charset="utf-8">' . $style . $script . '</head>'.$headerHtml.'</html>';
        }

        $this->setOption('header-html', $headerHtml);
    }

    /**
     * Add header as html and ensure necessary format is met
     * Style/Script can either be provided as path to file or string
     *
     * @param string $footerHtml
     * @param null $style
     * @param null $script
     */
    public function addFooter($footerHtml, $style = null, $script = null)
    {
        if ($script !== null && stripos($script, '<script>') === false) {
            $script = '<script>' . $script . '</script>';
        }

        if ($style !== null && file_exists($style)) {
            $style = file_get_contents($style);
        }

        if (stripos($style, '<style>') === false) {
            $style = '<style>' . $style . '</style>';
        }

        // Assuming there are missing necessary tags, we wrap the html
        if (stripos($footerHtml, '<!DOCTYPE html>') === false && stripos($footerHtml, '<html><head>') === false) {
            $footerHtml = '<!DOCTYPE html><html><head><meta charset="utf-8">' . $style . $script . '</head>'.$footerHtml.'</html>';
        }

        $this->setOption('footer-html', $footerHtml);
    }

    public function provideScriptReplaceVariables(
        array $cssVariables,
        array $textVariables,
        array $variableMapping
    ) {
        // Appending default variables of wkhtmltopdf
        $textVariables = array_merge($textVariables, [
            'page',
            'frompage',
            'topage',
            'webpage',
            'section',
            'subsection',
            'date',
            'isodate',
            'time',
            'title',
            'doctitle',
            'sitepage',
            'sitepages'
        ]);

        $variableMappingObject = new \stdClass();

        foreach ($variableMapping as $key => $value) {
            $variableMappingObject->{$key} = $value;
        }

        return '<script>
          function loadVariables() {
              var vars = {};
              var query_strings_from_url = document.location.search.substring(1).split(\'&\');
              for (var query_string in query_strings_from_url) {
                  if (query_strings_from_url.hasOwnProperty(query_string)) {
                      var temp_var = query_strings_from_url[query_string].split(\'=\', 2);
                      vars[temp_var[0]] = decodeURI(temp_var[1]);
                  }
              }
              
              var cssVariables = '.json_encode($cssVariables).',
              textVariables = '.json_encode($textVariables).',
              variableMapping = '.json_encode($variableMappingObject).';
              
              for (var textVariable in textVariables) {
                  if (textVariables.hasOwnProperty(textVariable)) {
                      var element = document.getElementsByClassName(textVariables[textVariable]);
                      for (var j = 0; j < element.length; ++j) {
                          element[j].textContent = vars[textVariables[textVariable]];
                      }
                  }
              }
              
              var style = document.createElement(\'style\');
              
              for (var cssVariable in cssVariables) {
                  if (cssVariables.hasOwnProperty(cssVariable)) {
                      style.innerHTML += vars[cssVariables[cssVariable]];
                  }
              }
              
              var htmlNode = document.querySelector(\'body\');
              var html = htmlNode.innerHTML;
              
              var objectProperties = Object.getOwnPropertyNames(variableMapping);
              
              objectProperties.forEach(function(variable, index) {
                  html = html.replace(new RegExp(variable, \'g\'), vars[variableMapping[variable]]);    
              });
              
              document.querySelector(\'body\').innerHTML = html;
              
              // Get the first script tag
        var ref = document.querySelector(\'script\');
        
        // Insert our new styles before the first script tag
        ref.parentNode.insertBefore(style, ref);
              
          }
        </script>';
    }
}
