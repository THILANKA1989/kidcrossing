<?php

use yii\helpers\Html;
use yii\helpers\Url;

/* @var $this \yii\web\View view component instance */
/* @var $message \yii\mail\MessageInterface the message being composed */
/* @var $content string main view render result */
?>
<?php $this->beginPage() ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=<?= Yii::$app->charset ?>" />
        <title><?= Html::encode($this->title) ?></title>
        <?php $this->head() ?>
    </head>
    <body>
        <?php $this->beginBody() ?>
        <table style="width:100% !important; min-width: 100%; margin:0; padding:0;">
            <tr>
                <td align="center" valign="top">
                    <center>
                        <table style="background: #35B5BA; padding: 0px;width: 100%;position: relative;">
                            <tr>
                                <td align="center" style="width: 100%; min-width: 580px;">

                                    <table style="width:580px;margin:0 auto;text-align:inherit">
                                        <tr>
                                            <td style="padding:10px 20px 0px 0px;padding-right:0px;text-align:left">

                                                <?= Html::img( '@web/img/logo-kc.png', ['title'=>'Logo']); ?>                                                                      

                                            </td>
                                        </tr>
                                    </table>                                                            

                                </td>
                            </tr>
                        </table>

                        <table style="width: 580px;margin: 0 auto;text-align: inherit;">
                            <tr>
                                <td>

                                    <table style="padding: 0px;width:100%;position: relative;">
                                        <tr>
                                            <td class="wrapper last" style="padding: 10px 20px 0px 0px; position: relative;">

                                                <table class="twelve columns" style="width: 580px;">
                                                    <tr>
                                                        <td>
                                                            <?= $content ?>
                                                        </td> 
                                                    </tr>
                                                </table>

                                            </td>
                                        </tr>
                                    </table>

                                    <table class="row footer" style="padding: 0px;  width: 100%; position: relative;">
                                        <tr>
                                            <td class="wrapper" style="padding: 10px 20px 0px 0px; position: relative; vertical-align:top;">

                                                <table class="six columns" style="vertical-align:top;">
                                                    <tr>
                                                        <td class="left-text-pad">

                                                            <table class="six columns">
                                                                <tr>
                                                                    <td class="last right-text-pad contact-info">                                                          
                                                                        <p><?php //echo CHtml::image(Yii::app()->getBaseUrl(true) . '/img/email-logo-admin.png', 'Logo');       ?></p>
                                                                        <p><?php //echo CHtml::image(Yii::app()->getBaseUrl(true) . '/img/email-logo-wording.png', 'Logo');       ?></p>																		
                                                                        <p style="margin-bottom:5px; margin-top:0px"> <span style="margin-right:10px;color:#F39C12; font-weight:bold;">address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Test Road,
                                                                            Anywhere,
                                                                            Country.
                                                                        </p>
                                                                        <p style="margin-bottom:5px; margin-top:0px"> <span style="margin-right:10px;color:#F39C12; font-weight:bold;">telephone&nbsp;</span>172331076</p>
                                                                        <p style="margin-bottom:5px; margin-top:0px"> <span style="margin-right:10px;color:#F39C12; font-weight:bold;">mobile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>012434566</p>
                                                                        <p style="margin-bottom:5px; margin-top:0px"> <span style="margin-right:10px;color:#F39C12; font-weight:bold;">email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><a href="mailto:info@kidcrossing.com">info@kidcrossing.com</a></p>                                                                        
                                                                        <p style="margin-bottom:5px; margin-top:0px"> <span style="margin-right:10px;color:#F39C12; font-weight:bold;">web site&nbsp;&nbsp;&nbsp;&nbsp;</span><a href="<?= Url::home() ?>">kidcrossing.com</a></p> 

                                                                    </td>
                                                                    <td class="expander"></td>
                                                                </tr>
                                                            </table>

                                                        </td>
                                                        <td class="expander"></td>
                                                    </tr>
                                                </table>

                                            </td>
                                            <td class="wrapper last" style="padding: 10px 20px 0px 0px; position: relative; vertical-align:top;"></td>
                                        </tr>
                                    </table>
                                    <!-- container end below -->
                                </td>
                            </tr>
                        </table>

                        <table style="background: #35B5BA; padding: 0px;width: 100%;position: relative;">
                            <tr>
                                <td align="center" style="width: 100%; min-width: 580px;">

                                    <table style="width:580px;margin:0 auto;text-align:inherit">
                                        <tr>
                                            <td class="wrapper last" style="padding: 10px 20px 0px 0px; position: relative; vertical-align:top; width:100%;">
                                                <table style="position: relative; vertical-align:top; width:100%;">
                                                    <tr>
                                                        <td align="center">
                                                            <center>
                                                                <p class="disclaimer" style="margin:0 0 0 5px;">Copyright © 2016 Kid Crossing.</p>
                                                            </center>
                                                        </td>
                                                        <td class="expander"></td>
                                                    </tr>
                                                </table>
                                                <table class="twelve columns" style="position: relative; vertical-align:top; width:100%;">
                                                    <tr>
                                                        <td align="center" style="position: relative; vertical-align:top; width:100%;">
                                                            <center>
                                                                <p style="text-align:center; margin:0px;text-decoration:none;">
                                                                    <a href="<?= Url::to(['site/contact']) ?>" style="margin:0px;text-decoration:none;">Contact Us</a> | <a href="<?= Url::to(['site/policy']) ?>" style="margin:0px;text-decoration:none;">Privacy Policy</a> 
                                                                </p>
                                                            </center>
                                                        </td>
                                                        <td class="expander"></td>
                                                    </tr>
                                                </table>

                                            </td>
                                        </tr>
                                    </table>

                                </td>
                            </tr>
                        </table>

                    </center>
                </td>
            </tr>
        </table>
        <?php $this->endBody() ?>
    </body>
</html>
<?php $this->endPage() ?>
