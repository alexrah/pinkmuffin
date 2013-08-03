<?php
/**
 * @package 	mod_bt_facebooklikebox - BT Facebook Likebox Module
 * @version		1.3
 * @created		Oct 2011

 * @author		BowThemes
 * @email		support@bowthems.com
 * @website		http://bowthemes.com
 * @support		Forum - http://bowthemes.com/forum/
 * @copyright	Copyright (C) 2012 Bowthemes. All rights reserved.
 * @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 *
 */
// no direct access
defined('_JEXEC') or die('Restricted access');

$likebox = $params->get('type','likebox')=='likebox';
$href='';
$height = 0;
if($likebox){
	$href = 'http://www.facebook.com/plugins/likebox.php?href=';
	$href .= urlencode(trim($params->get('href')));
	$href .='&connections='.$params->get('connections',10);
	if($params->get('show_stream'))
	{
		$href .= "&amp;stream=".$params->get('show_stream');
	}
	if($params->get('border_color'))
	{
		$href .= "&amp;border_color=".urlencode($params->get('border_color'));
	}
	if($params->get('show_header'))
	{
		$href .= "&amp;header=".$params->get('show_header');
	}
	if($params->get('force_wall'))
	{
		$href .= "&amp;force_wall=".$params->get('force_wall');
	}
	$height = $params->get('height');
	if($height)
	{
		$href .= "&amp;height=".$height;
	}
}
else{
	$href = 'http://www.facebook.com/plugins/follow.php?href=';
	$href .= urlencode(trim($params->get('profile')));
	if($params->get('layout'))
	{
		$href .= "&amp;layout=".$params->get('layout');
	}
	if($params->get('font'))
	{
		$href .= "&amp;font=".$params->get('font');
	}
	$height = $params->get('height_follow');
}
if($params->get('show_faces'))
{
	$href .= "&amp;show_faces=".$params->get('show_faces');
}
if($params->get('width'))
{
	$href .= "&amp;width=".$params->get('width');
}
if($params->get('colorscheme'))
{
	$href .= "&amp;colorscheme=".$params->get('colorscheme');
}
$lang = JFactory::getLanguage();
$langTag = $lang->getTag();
$langTag = str_replace('-','_',$langTag);
$href .='&amp;locale='.$langTag;
?>
<div  class="bt-facebookpage<?php echo $moduleclass_sfx ?>" >
<iframe 
	src="<?php echo $href;	?>" scrolling="no" 
	frameborder="0" 
	style="border:none; overflow:hidden; width:<?php echo $params->get('width') ? $params->get('width').'px':'100%'?>;height:<?php echo $height ? $height.'px':'100%'?>; " 
	allowTransparency="true">
</iframe>
</div>
