<?php
/*
MIT license

Copyright (c) 2012 Luis E. S. Dias - smartbyte.systems@gmail.com

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

class TimelinePage extends Page {
    
    static $can_be_root = false;
    static $allowed_children = "none";
    static $default_parent = "TimelineHolder";        
    
    static $db = array(
        'BeginDate' => 'Date',
        'EndDate' => 'Date',
        'Article' => 'Varchar(255)',
        'MediaCredit' => 'Varchar(100)',
        'MediaCaption' => 'Varchar(100)'
    );
    
    function getCMSFields() 
    { 
        $fields = parent::getCMSFields();

        $BeginDate = new Datefield('BeginDate', 'Event Date (dd-mm-yyyy)');
        $BeginDate->setConfig('showcalendar', true);
        $BeginDate->setConfig('dateformat', 'dd-MM-YYYY');

        $EndDate = new Datefield('EndDate', 'End of Event (optional)');
        $EndDate->setConfig('showcalendar', true);
        $EndDate->setConfig('dateformat', 'dd-MM-YYYY');
        
        $fields->addFieldToTab('Root.Content.Main', $BeginDate, 'Content');
        $fields->addFieldToTab('Root.Content.Main', $EndDate, 'Content');
        $fields->addFieldToTab('Root.Content.Main', new TextField('Article','Article (Main text)'), 'Content');
        $fields->addFieldsToTab('Root.Content.Main',
            array(
                new TextField('MediaCredit','Credit for media (optional)'),
                new TextField('MediaCaption','Caption for media (optional)')
                )
        );
        return $fields;
    }
    
    function getCMSValidator() 
    { 
      return new RequiredFields('BeginDate','Title','Content'); 
    }
}

class TimelinePage_Controller extends Page_Controller {

}