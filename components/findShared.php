<?php
namespace app\components;
use Yii;
use yii\base\Component;
use yii\base\InvalidConfigException;

class findShared extends Component {
    public function isShared($shared_with,$id){
        if(in_array(Yii::$app->user->id, explode(',', $shared_with)) == false && $id != Yii::$app->user->id){
            return false;
        }else{
            return true;
        }
    }
}