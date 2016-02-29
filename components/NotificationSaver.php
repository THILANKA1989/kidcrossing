<?php

namespace app\components;

use app\models\Notification;
use Yii;
use yii\base\Component;
use yii\base\InvalidConfigException;

class NotificationSaver extends Component {

    /**
     * @param string $description ---> enter the title or entry of model
     * @param object $model --->  enter lastest saved model
     * @param object $user ---> creater of the notification record (mostly current user model)
     * @param string $type ---> current controller name or a manualy hard coded string for comments (comment,journal,mood,event,photo,activity)
     * @param string $shared_with ---> shared_with values if latest saved model has a column named shared_with, else need to enter customized values
     */
    public function notify($description, $model, $user, $type, $shared_with = null) {

        //create notification record - DTR
        $sharedWith = array();
        if ($shared_with != null) {
            $sharedWith = explode(',', $shared_with);
        } else if ($shared_with == '*') {
            $sharedWith = yii\helpers\ArrayHelper::getColumn($user->findFamily(true)->all(), 'id');
        } else {
            $sharedWith = yii\helpers\ArrayHelper::getColumn($user->findParents()->all(), 'id');
        }

        foreach ($sharedWith as $shared_id) {
            $notify = new Notification();
            $notify->date = date("Y-m-d h:i:s");
            $notify->shared_id = (int) $shared_id;
            $notify->type_id = $model->id;
            $notify->description = $description;
            $notify->type = $type;
            $notify->user_id = $user->id;
            $notify->status = 0;
            $notify->save();
        } //end of notification record entry 
    }

    public function viewer($id) {

        if (Yii::$app->request->get('notify')) {
            $getid = Yii::$app->request->get('notify');
            //$notification = new Notification();
            $notify = \app\models\Notification::findOne(['type_id' => $id, 'id' => $getid, 'shared_id' => Yii::$app->user->id]);
            $notify->status = 1;
            $notify->save();
        }
        if (Yii::$app->request->get('global')) {
            $getid = Yii::$app->request->get('global');
            //$notification = new Notification();
            $notify = \app\models\Notification::find()->where(['type_id' => $id, 'type' => $getid, 'shared_id' => Yii::$app->user->id, 'status' => 0])->all();
            for ($i = 0; $i < sizeof($notify); $i++) {
                $notify[$i]->status = 1;
                $notify[$i]->save();
            }
        }
        if (Yii::$app->request->get('wishlist')) {
            $getid = Yii::$app->request->get('wishlist');
            //$notification = new Notification();
            $notify = \app\models\Notification::find()->where(['user_id' => $id, 'type' => $getid, 'shared_id' => Yii::$app->user->id, 'status' => 0])->all();
            //var_dump($notify); die();
            for ($i = 0; $i < sizeof($notify); $i++) {
                $notify[$i]->status = 1;
                $notify[$i]->save();
            }
        }
    }

}
