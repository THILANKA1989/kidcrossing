<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace app\components;

use app\models\User;

class AccessRule extends \yii\filters\AccessRule {

    /**
     * @inheritdoc
     * @param User $user the user object
     * @return boolean whether the rule applies to the role
     */
    protected function matchRole($user) {

        if (empty($this->roles)) {
            return true;
        }
        foreach ($this->roles as $role) {
            
            if ($role === '?') {
                if ($user->getIsGuest()) {
                    return true;
                }
            } elseif ($role === '@') {
                if (!$user->getIsGuest()) {
                    return true;
                }
            } elseif ($role === \Yii::$app->user->identity->level) {
                return true;
            }
        }

        return false;
    }

}
