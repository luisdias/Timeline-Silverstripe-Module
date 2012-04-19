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
$(document).ready(function() {
    VMM.Element.attribute('.back-home', "title", "Retour au début");
    VMM.Element.attribute('.zoom-in', "title", "Développer la ligne du temps");
    VMM.Element.attribute('.zoom-out', "title", "Diminuer la ligne du temps");
});
VMM.Util.date.month = ["Janvier", "Février", "Mars", "Avril", "Mai", "Juin", "Juillet", "Août","Septembre", "Octobre", "Novembre","Décembre"];
VMM.Util.date.month_abbr = ["Jan.", "Fév.", "Mar.", "Avr.", "Mai.", "Juin", "Juil.", "Aôut", "Sep.", "Oct.", "Nov.", "Déc."];
VMM.Util.date.day = ["Dimanche", "Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi"];
VMM.Util.date.day_abbr = ["Dim.","Lun.", "Mar.", "Mer.", "Jeu.", "Ven.", "Sam."];