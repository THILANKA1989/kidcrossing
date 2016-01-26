<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace hscstudio\helpers\assets;

use yii\web\AssetBundle;

/**
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class LiveStampJsAsset extends AssetBundle
{
	public $sourcePath = '@hscstudio/helpers/libraries/livestampjs/';
    public $css = [
    ];
    public $js = [
		'livestamp.min.js',
    ];
    public $depends = [
        'hscstudio\helpers\assets\MomentJsAsset',
    ];
}
