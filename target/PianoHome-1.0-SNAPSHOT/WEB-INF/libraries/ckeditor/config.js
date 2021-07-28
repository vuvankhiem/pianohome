/**
 * @license Copyright (c) 2003-2021, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */
config1 = {};
config1.entities_latin = false;
config1.toolbarGroups = [
    {name: 'editing', groups: ['find', 'selection', 'spellchecker', 'editing']},
    {name: 'clipboard', groups: ['clipboard', 'undo']},
    {name: 'document', groups: ['mode', 'document', 'doctools']},
    {name: 'forms', groups: ['forms']},
    '/',
    {name: 'basicstyles', groups: ['basicstyles', 'cleanup']},
    {name: 'paragraph', groups: ['list', 'indent', 'blocks', 'align', 'bidi', 'paragraph']},
    {name: 'insert', groups: ['insert']},
    {name: 'links', groups: ['links']},
    '/',
    {name: 'styles', groups: ['styles']},
    {name: 'colors', groups: ['colors']},
    {name: 'tools', groups: ['tools']},
    {name: 'others', groups: ['others']},
    {name: 'about', groups: ['about']}
];

config1.removeButtons = 'Form,Checkbox,Radio,TextField,Textarea,Select,Button,ImageButton,HiddenField,Anchor,Image,Flash,Table,HorizontalRule,Smiley,PageBreak,Iframe,ShowBlocks,About,PasteText,PasteFromWord,RemoveFormat,CopyFormatting';
CKEDITOR.replace('editor1', config1);

config3 = {};
config3.entities_latin = false;
config3.toolbarGroups = [
    {name: 'document', groups: ['mode', 'document', 'doctools']},
    {name: 'clipboard', groups: ['clipboard', 'undo']},
    {name: 'editing', groups: ['find', 'selection', 'spellchecker', 'editing']},
    {name: 'forms', groups: ['forms']},
    {name: 'basicstyles', groups: ['basicstyles', 'cleanup']},
    {name: 'paragraph', groups: ['list', 'indent', 'blocks', 'align', 'bidi', 'paragraph']},
    '/',
    {name: 'insert', groups: ['insert']},
    {name: 'links', groups: ['links']},
    {name: 'styles', groups: ['styles']},
    {name: 'colors', groups: ['colors']},
    {name: 'tools', groups: ['tools']},
    '/',
    {name: 'others', groups: ['others']},
    {name: 'about', groups: ['about']}
];

config3.removeButtons = 'Find,Replace,SelectAll,Scayt,Form,Checkbox,Radio,TextField,Textarea,Select,Button,ImageButton,HiddenField,CopyFormatting,RemoveFormat,NumberedList,BulletedList,Outdent,Indent,Blockquote,CreateDiv,BidiLtr,BidiRtl,Language,Anchor,Unlink,Link,Image,Flash,Smiley,Iframe,ShowBlocks,About';

CKEDITOR.replace('editor3', config3);