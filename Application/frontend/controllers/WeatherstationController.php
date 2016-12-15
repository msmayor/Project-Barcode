<?php

namespace frontend\controllers;

use Yii;
use common\models\Weatherstation;
use common\models\WeatherstationSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use yii\web\ForbiddenHttpException;
/**
 * WeatherstationController implements the CRUD actions for Weatherstation model.
 */
class WeatherstationController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access'=>[
                        'class'=>AccessControl::classname(),
                        'rules'=>[
                            [
                                'allow'=>true,
                                'roles'=>['@']
                            ],
                        ]
                    ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Weatherstation models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new WeatherstationSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Weatherstation model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Weatherstation model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        if ( Yii::$app->user->can( 'Create Weather Station' ) )
        {
        $model = new Weatherstation();

                if ($model->load(Yii::$app->request->post()) && $model->save()) {
                    return $this->redirect(['view', 'id' => $model->id]);
                } else {
                    return $this->renderAjax('create', [
                        'model' => $model,
                    ]);

             }
        }else
        {
             throw new ForbiddenHttpException;
        }
    }

    /**
     * Updates an existing Weatherstation model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Weatherstation model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        if ( Yii::$app->user->can( 'Delete Weather Station' ) )
        {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }else{
        throw new ForbiddenHttpException;
    }
    }

    /**
     * Finds the Weatherstation model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Weatherstation the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Weatherstation::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}