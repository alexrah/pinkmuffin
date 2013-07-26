<?php
/**
 * @version		$Id: mod_k2_nivoslider.php 1492 2012-02-22 17:40:09Z joomlaworks@gmail.com $
 * @package		K2
 * @author		JoomlaWorks http://www.joomlaworks.net
 * @copyright	Copyright (c) 2006 - 2012 JoomlaWorks Ltd. All rights reserved.
 * @license		GNU/GPL license: http://www.gnu.org/copyleft/gpl.html
 */

// no direct access
defined('_JEXEC') or die('Restricted access');

if(K2_JVERSION == '16'){
	$language = &JFactory::getLanguage();
	$language->load('mod_k2.j16', JPATH_ADMINISTRATOR, null, true);
}

require_once(dirname(__FILE__).DS.'helper.php');

// Params
$moduleclass_sfx = $params->get('moduleclass_sfx','');
$getTemplate = $params->get('getTemplate','default');
$itemAuthorAvatarWidthSelect = $params->get('itemAuthorAvatarWidthSelect','custom');
$itemAuthorAvatarWidth = $params->get('itemAuthorAvatarWidth',50);
$itemCustomLinkTitle = $params->get('itemCustomLinkTitle','');
if($params->get('itemCustomLinkMenuItem')) {
	$menu = &JMenu::getInstance('site');
	$menuLink = $menu->getItem($params->get('itemCustomLinkMenuItem'));
	if(!$itemCustomLinkTitle){
		$itemCustomLinkTitle = (K2_JVERSION == '16') ? $menuLink->title : $menuLink->name;
	}
	$params->set('itemCustomLinkURL', JRoute::_($menuLink->link.'&Itemid='.$menuLink->id));
}

// Get component params
$componentParams = & JComponentHelper::getParams('com_k2');

// User avatar
if($itemAuthorAvatarWidthSelect=='inherit'){
	$avatarWidth = $componentParams->get('userImageWidth');
} else {
	$avatarWidth = $itemAuthorAvatarWidth;
}

$items = modK2NivoSliderHelper::getItems($params);

if(count($items)){require(JModuleHelper::getLayoutPath('mod_k2_nivoslider', $getTemplate.DS.'default'));}

//Attach styles and scripts

$document =& JFactory::getDocument();
$app = JFactory::getApplication();
$templateDir = JURI::base() . 'templates/' . $app->getTemplate();

$document->addStyleSheet('modules/mod_k2_nivoslider/css/nivo-slider.css');

switch($params->get("theme")){
	case 'default':
		$document->addStyleSheet('modules/mod_k2_nivoslider/css/default.css');
		break;
	case 'custom':
		$document->addStyleSheet($templateDir.'/css/nivo-slider.css');
		break;};

switch($params->get("script")){
	case 'default':
		$document->addScript('modules/mod_k2_nivoslider/js/jquery.nivo.slider.js');
		break;
	case 'minified':
		$document->addScript('modules/mod_k2_nivoslider/js/jquery.nivo.slider.pack.js');
		break;
	case 'custom':
		$document->addScript($templateDir.'/js/jquery.nivo.slider.js');
		break;}; 


//NivoSlider script settings ?>

<script type="text/javascript">
(function($){ 
   $(window).load(function(){

	var $slider_ul_id = $('#slider'); //Please define slider items list ID

	$slider_ul_id.nivoSlider({
		effect: '<?php echo $params->get("effect"); ?>',		
		slices: <?php echo $params->get("slices"); ?>,
		boxCols: <?php echo $params->get("boxCols"); ?>,
		boxRows: <?php echo $params->get("boxRows"); ?>,
		animSpeed: <?php echo $params->get("animSpeed"); ?>,
		pauseTime: <?php echo $params->get("pauseTime"); ?>,
		startSlide: <?php echo $params->get("startSlide"); ?>,
		directionNav: <?php echo $params->get("directionNav"); ?>,
		directionNavHide: <?php echo $params->get("directionNavHide"); ?>,
		controlNav:<?php echo $params->get("controlNav"); ?>,
		controlNavThumbs: <?php echo $params->get("controlNavThumbs"); ?>,
        controlNavThumbsFromRel: <?php echo $params->get("controlNavThumbsFromRel"); ?>,
		controlNavThumbsSearch: '<?php echo $params->get("controlNavThumbsSearch"); ?>',	
		controlNavThumbsReplace:'<?php echo $params->get("controlNavThumbsReplace"); ?>',	
		keyboardNav: <?php echo $params->get("keyboardNav"); ?>,
		pauseOnHover: <?php echo $params->get("pauseOnHover"); ?>,
		manualAdvance: <?php echo $params->get("manualAdvance"); ?>,
		captionOpacity: <?php echo $params->get("captionOpacity"); ?>,
		prevText: '<?php echo $params->get("prevText"); ?>',
		nextText: '<?php echo $params->get("nextText"); ?>',
		beforeChange: function(){},
		afterChange: function(){},
		slideshowEnd: function(){},
        lastSlide: function(){},
        afterLoad: function(){}
	});
});
})(jQuery);     </script>

