/**
 * Import function triggers from their respective submodules:
 *
 * const {onCall} = require("firebase-functions/v2/https");
 * const {onDocumentWritten} = require("firebase-functions/v2/firestore");
 *
 * See a full list of supported triggers at https://firebase.google.com/docs/functions
 */

const functions = require("firebase-functions");
//const {onRequest} = require("firebase-functions/v2/https");
const logger = require("firebase-functions/logger");
const admin = require('firebase-admin');
admin.initializeApp();

// Set the maximum number of instances for the function
const runtimeOpts = {
  maxInstances: 10,
};


// Cloud functions テスト
exports.helloWorld = functions
  .region('asia-northeast1')
  .runWith(runtimeOpts)
  .https
  .onRequest((request, response) => {
    logger.info("Hello logs!", {structuredData: true});
    response.send({
    "status" : "success",
    "data" : "Hello from Firebase!"
    });
});


// プッシュ通知
exports.sendReservationNotification = functions
    .region('asia-northeast1')
    .firestore
    .document('reservations/{reservationId}')
    .onCreate(async (snapshot, context) => {
        // 予約データを取得
        const reservation = snapshot.data();
        const userEmail = reservation.email;

        // ユーザーのドキュメントからFCMトークンを取得
        const usersRef = admin.firestore().collection('users');
        const querySnapshot = await usersRef.where('email', '==', userEmail).get();

        if (querySnapshot.empty) {
            console.log(`No user found with email: ${userEmail}`);
            return null;
        }

        // ユーザーのFCMトークンを取得
        const userDoc = querySnapshot.docs[0];
        const user = userDoc.data();

        // ここでuserオブジェクトからfcmTokenを取得していることを確認
        if (!user || !user.fcmToken) {
            console.log(`No FCM token found for user with email: ${userEmail}`);
            return null;
        }

        // プッシュ通知のメッセージを構築
        const message = {
            notification: {
                title:'予約完了',
                body: '予約を承りました。'
            },
            token: user.fcmToken
        };

    // プッシュ通知を送信
    try {
      await admin.messaging().send(message);
      console.log('正常に通知を送りました。', response);
    } catch (error) {
      console.error('通知の送信に失敗しました:', error);
    }
});


const stripe = require("stripe")(process.env.STRIPE_SECRET_KEY);

// Stripeメソッド
exports.createPaymentIntent = functions
    .region('asia-northeast1')
    .https
    .onCall(async (_, __) => {

    try {
        const customer = await stripe.customers.create();
        const ephemeralKey = await stripe.ephemeralKeys.create(
            {customer: customer.id},
            {apiVersion: '2020-08-27'}
        );

        const paymentIntent = await stripe.paymentIntents.create({
            amount: 1000,
            currency: 'jpy',
            customer: customer.id,
            automatic_payment_methods: {
                enabled: true,
            },
        });

        return {
            paymentIntent: paymentIntent.client_secret,
            ephemeralKey: ephemeralKey.secret,
            customer: customer.id,
        };
    } catch (error) {
        console.error('error: %j', error);
        return {
            title: 'エラーが発生しました',
            message: error,
        }
    }
});















