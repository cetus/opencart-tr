/**
 * @license Copyright (c) 2003-2013, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.html or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here.
	// For the complete reference:
	// http://docs.ckeditor.com/#!/api/CKEDITOR.config
	config.filebrowserWindowWidth = '800';
	config.filebrowserWindowHeight = '500';
	config.resize_enabled = true;
	config.htmlEncodeOutput = false;
	config.entities = false;
	config.extraPlugins = 'wordcount,codemirror';
	config.codemirror_theme = 'rubyblue';

	config.toolbar = 'Custom';

	config.toolbar_Custom = [
		['Source', '-', 'Preview'],
		['Bold','Italic','Underline','Strike','-','Subscript','Superscript','-', 'RemoveFormat'],
		['NumberedList','BulletedList','-','Outdent','Indent', '-', 'Blockquote'],
		['JustifyLeft','JustifyCenter','JustifyRight','JustifyFull'],
		['Link', 'Unlink','Anchor'],
		['SpecialChar'],
		'/',
		['Undo','Redo'],
		['Format', 'Styles'],
		['Font','FontSize'],
		['TextColor','BGColor'],
		['Image', 'Flash','Table', 'Iframe', 'HorizontalRule'],
		['Maximize', '-', 'ShowBlocks'],
	];

};
