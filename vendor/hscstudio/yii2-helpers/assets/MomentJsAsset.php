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
class MomentJsAsset extends AssetBundle
{
	public $sourcePath = '@hscstudio/helpers/libraries/moment/';
    public $css = [
    ];
    public $js = [
		'moment.min.js',
    ];
    public $depends = [
        'yii\web\JqueryAsset',
    ];
}
