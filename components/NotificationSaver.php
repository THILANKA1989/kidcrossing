<?php
namespace app\components;
use app\models\Notification;
use Yii;
use yii\base\Component;
use yii\base\InvalidConfigException;

class NotificationSaver extends Component {
    
    public function notify($description,$type_id,$id,$user_id,$type,$shared_id = null){
        /*
         * $description ---> enter the title or entry of model
         * $type_id --->  enter lastest saved model's id
         * $id ---> owner of the model of last saved
         * $user_id ---> creater of the notification record (mostly current user)
         * $type ---> current controller name or a manualy hard coded string for comments (comment,journal,mood,event,photo,activity)
         * $shared_id ---> shared_with values if latest saved model has a column named shared_with, else need to enter customized values
         */
         //create notification record - DTR
            if($shared_id != null){
               $sharedWith = explode(',',$shared_id);
               $count = 0;
                for($j=0;$j<sizeof($sharedWith);$j++){
                    if($sharedWith[$j] != $id){
                        $count++;
                    }
                    if($count == sizeof($sharedWith)){
                        array_push($sharedWith,(string)$id);
                    }
                }
            }else{
               $sharedWith = array();
               $parents = Yii::$app->user->identity->findParents()->all();
               foreach($parents as $parent){
                   array_push($sharedWith,(string)$parent->id);
               }
               //var_dump($sharedWith); die();
            }
            if($shared_id == 'all'){
                $sharedWith = array();
               $parents = Yii::$app->user->identity->findFamily(true)->all();
               foreach($parents as $parent){
                   array_push($sharedWith,(string)$parent->id);
               }
            }
                $notify = array();
                for($i=0;$i<sizeof($sharedWith);$i++){
                    $notify[$i] = new Notification();
                    $notify[$i]->date = date("Y-m-d h:i:s");
                    $notify[$i]->shared_id = (int)$sharedWith[$i];
                    $notify[$i]->type_id = $type_id;
                    $notify[$i]->description = $description;
                    $notify[$i]->type = $type;
                    $notify[$i]->user_id = $user_id;
                    $notify[$i]->status = 0;
       
                    if($notify[$i]->save()){
                        if($i>0){
                            $notify[$i]->id++;
                        }
                    }
                } //end of notification record entry 
    }
    
    public function viewer($id){
        
        if(Yii::$app->request->get('notify')){
            $getid = Yii::$app->request->get('notify');
            //$notification = new Notification();
            $notify = Notification::findOne(['type_id' => $id,'id' => $getid,'shared_id' => Yii::$app->user->id]);
            $notify->status = 1;
            $notify->save();
        }
        if(Yii::$app->request->get('global')){
            $getid = Yii::$app->request->get('global');
            //$notification = new Notification();
            $notify = Notification::find()->where(['type_id' => $id,'type' => $getid,'shared_id' => Yii::$app->user->id, 'status' => 0])->all();
            for($i=0;$i<sizeof($notify);$i++){
                $notify[$i]->status = 1;
                $notify[$i]->save();
            }
        }
         if(Yii::$app->request->get('wishlist')){
            $getid = Yii::$app->request->get('wishlist');
            //$notification = new Notification();
            $notify = \app\models\Notification::find()->where(['user_id' => $id,'type' => $getid,'shared_id' => Yii::$app->user->id, 'status' => 0])->all();
            //var_dump($notify); die();
            for($i=0;$i<sizeof($notify);$i++){
                $notify[$i]->status = 1;
                $notify[$i]->save();
            }
        }
        
    }
}

