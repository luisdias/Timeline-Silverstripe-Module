<?php
/*
MIT license

Copyright (c) 2012-2014 Luis E. S. Dias - smartbyte.systems@gmail.com

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

class TimelineHolder extends Page {

    static $allowed_children = array(
        'TimelinePage'
    );
    
    static $db = array(
        'CssFile' => 'Varchar'
    );
    
    public function populateDefaults() {
        parent::populateDefaults();
        $this->CssFile = 'default';
    }
    
    function getCMSFields() 
    { 
        $fields = parent::getCMSFields();
        $cssFileOptions = array(
            'default' => 'Default' ,
            'tutorialzine' => 'Tutorialzine',
        );        
        $fields->addFieldToTab('Root.Main', DropdownField::create('CssFile','Select the cascade style sheet file',$cssFileOptions));
        $fields->removeFieldFromTab('Root.Main', 'Content');        
        return $fields;
    }
    
}

class TimelineHolder_Controller extends Page_Controller {
    
public function init() { 
    parent::init();
    Requirements::themedCSS('timeline');
    if ( $this->CssFile == 'tutorialzine' )
        Requirements::themedCSS('styles');
}
}