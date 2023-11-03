class AppStrings {
  /// 共通文言_ボタン
  static const buttonSignUp = 'いますぐユーザー登録する';
  static const buttonClose = 'とじる';
  static const buttonBack = 'もどる';
  static const buttonNext = 'つぎへ';
  static const buttonYes = 'はい';
  static const buttonNo = 'いいえ';
  static const buttonReload = '再読み込み';
  static const buttonInquired = 'お問い合わせ済み';
  static const buttonUnPublish = '掲載終了';

  /// 共通文言_バリーデーション FIXME エラーメッセージが確定次第、反映
  static const emailValidationMessage = 'メールアドレスを入力してください。';
  static const passwordValidationMessage = 'パスワードを入力してください。';
  static const intValidationMessage = '0〜100,000万円の範囲で入力してください。';
  static const doubleValidationMessage = '0〜100の範囲で入力してください。';
  static const justLengthValidationMessage = '文字で入力してください。';
  static const minLengthValidationMessage = '文字以上で入力してください。';
  static const oneSelectValidationMessage = '一つ以上選択してください。';
  static const maxLengthValidationMessage = '文字以内で入力してください。';
  static const requiredValidationMessage = '必ず入力してください。';
  static const scheduleValidationMessage = '必ず入力してくださいまたは別途調整希望を選択してください';
  static const passwordValidationInputType = '英字の大文字・小文字、数字、記号それぞれ全て含めてください。';
  static const passwordValidationStrength = '安易な組み合わせ、推測されやすいパスワードは避けてください。';
  static const onlyJapaneseOrEnglishValidationMessage = '日本語または英語で入力してください。';
  static const numberValidationMessage = '半角数字で入力してください。';
  static const smsAuthValidationMessage = '6文字で入力してください。';
  static const incomeValidationMessage = '6文字以下で入力してください。';
  static const phoneNumberValidationMessage = '携帯電話番号を入力してください';
  static const phoneNumberDigitsValidationMessage = '11文字で入力してください。';
  static const textMaxValidationMessage = '20文字以下で入力してください。';
  static const passwordValidationEqualToEmail = 'E-mailと同一のパスワードは避けてください。';
  static const passwordNotMatch = 'パスワードが一致しません。';
  static const numberValidationDoubleMessage = '小数点以下2桁までの数字を入力してください。';
  static const rangeValidationMessage = '無効な範囲が設定されています。';

  /// 共通文言_エラー文言
  static const errorMessage = 'エラーが発生しました。';
  static const errorRetryMessage = 'エラーが発生しました。しばらく時間をおいてからお試しください。';
  static const authErrorFailedException = '処理が失敗しました。再度操作をやり直してください。';
  static const failedToOpenMail = 'メールアプリを開けませんでした';
  static const apiException = 'データを取得できませんでした。時間をおいて再度アクセスして下さい。';
  static const tooManyRequestException = '通信エラーが発生しました。時間をおいてから再度お試しください。';
  static const offlineError = '接続に失敗しました。通信環境を見直し再度アクセスしてください。';
  static const userCancel = '操作がキャンセルされました。必要な場合は再度操作をやり直してください。';
  static const invalidRefreshToken = '有効なトークンではありません。再度ログインしてください。';
  static const forceUpdate = '新しいアプリバージョンがあります。\n最新のバージョンをお使いください。';
  static const emailAlreadyInUse = '指定されたユーザは既に存在します。ほかのログイン方法をお試しください。';
  static const callErrorMessage = '電話をかけることができませんでした。';

  /// Firebase_エラーメッセージ
  static const firebaseAuthErrorMessageEmailAlreadyInUse =
      '指定されたユーザは既に存在します。ほかのログイン方法をお試しください。';
  static const firebaseAuthErrorMessageInvalidMail = 'メールアドレスが無効です。';
  static const firebaseAuthErrorMessageUserNotFound =
      'メールアドレスまたはパスワードが正しくありません。';
  static const firebaseAuthErrorMessageWrongPassword =
      'メールアドレスまたはパスワードが正しくありません。';
  static const firebaseAuthErrorMessageTooManyRequest =
      '通信エラーが発生しました。時間をおいてから再度お試しください。';
  static const firebaseAuthErrorMessageInvalidActionCode = '不正なURLです。';
  static const firebaseAuthErrorMessageExpiredActionCode =
      '有効なトークンではありません。再度メールアドレス再設定メールを送信し、メールに記載されているURLからアクセスしてください。';
  static const firebaseAuthErrorMessageDefault =
      'データを取得できませんでした。時間をおいて再度アクセスして下さい。';
  // Google
  static const GoogleAuthErrorMessageException =
      'Googleアカウントでのサインインが必要です。続行するにはサインインしてください。';

  /// 共通文言_記号
  static const hyphen = '-';
  static const blackCircle = '●';
  static const circle = '○';
  static const bullet = '・';
  static const readingPoint = '、';
  static const colon = ':';
  static const asterisk = '※';
  static const yearSuffix = '年';
  static const monthSuffix = '月';
  static const daySuffix = '日';
  static const percent = '%';
  static const leftParentheses = '(';
  static const rightParentheses = ')';
  static const infinity = '∞';
  static const slash = '/';
  static const tilde = '~';

  /// 共通文言_単位
  static const yen = '円';
  static const tenThousandYen = '万円';
  static const oneHundredMillionYen = '億円';
  static const year = '年';
  static const tenThousandYenPerMonth = '万円/月';
  static const oneHundredMillionYenPerMonth = '億円/月';
  static const tenThousandYenPerYear = '万円/年';
  static const oneHundredMillionYenPerYear = '億円/年';
  static const yenPerMonth = '円/月';
  static const squareMeter = '㎡';
  static const floor = '階';
  static const door = '戸';

  /// 共通文言_その他
  static const newLine = '\n';
  static const ok = 'OK';
  static const ng = 'NG';
  static const none = '';
  static const halfSpace = ' ';
  static const fullSpace = '　';
  static const comma = '、';
  static const more = '以上';
  static const mx = '様';
  static const other = '他';
  static const message = 'メッセージ';
  static const favorite = 'お気に入り';
  static const here = 'こちら';
  static const maxLoanPrice = '借入可能額';

  /// 共通文言_アカウント関連
  static const email = 'メールアドレス';
  static const emailNew = '新しいメールアドレス';
  static const password = 'パスワード';
  static const passwordConfirm = 'パスワード 確認用';
  static const passwordNew = '新しいパスワード';
  static const passwordNewConfirm = '新しいパスワード 確認用';

  /// ルートネーム(個別に必要な画面)
  static const homeScreen = 'Home';

  /// 共通コンポーネント_ボトムナビゲーション
  static const bottomNavigationSearch = '物件一覧';
  static const bottomNavigationFavorite = 'お気に入り';
  static const bottomNavigationMessage = 'メッセージ';
  static const bottomNavigationMyPage = 'マイページ';

  /// 共通コンポーネント_ドロップダウン
  static const dropDownHintText = '選択してください';

  /// 共通コンポーネント_DatePicker
  static const datePickerDone = '完了';
  static const datePickerCancel = 'キャンセル';

  /// 共通コンポーネント_ログイン時の注意文
  static const loginAttentionTextSignUp =
      '過去にモゲチェック不動産投資をご利用のお客様は、こちらの画面(新規登録)から同じメールアドレスで登録手続きを行なってください。';
  static const loginAttentionTextLogin1 = '過去にモゲチェック不動産投資をご利用のお客様は、';
  static const loginAttentionTextLogin2 = '新規登録';
  static const loginAttentionTextLogin3 = 'から同じメールアドレスで登録手続きを行なってください。';
  static const loginAttentionText1 = 'パスワードを忘れた場合は、';
  static const loginAttentionText2 = 'パスワード再設定ページ';
  static const loginAttentionText3 = 'から再設定をしてください。';
  static const loginAttentionText4 = 'メールアドレスを忘れた場合は、';
  static const loginAttentionText5 = 'までお問合せください。';
  static const loginAttentionText6 =
      'SNSアカウントでログインできない場合は、パスワード再設定ページからパスワード再設定をし、メールアドレスでログインしてください。';
  static const loginAttentionText7 = '入力に不具合が生じたり、お申し込みが完了しない場合は、お手数ですが';
  static const loginAttentionText8 = 'からご連絡ください。';

  /// 共通コンポーネント_メールが届かない場合
  static const customEmailSendAttentionTitle = 'メールが届かない場合';
  static const customEmailSendAttentionExplain1 =
      'フリーメールアドレスでご登録いただくとまれに迷惑メールフォルダやゴミ箱に振り分けられることがあります。お手数ですが、そちらもご確認ください。';
  static const customEmailSendAttentionExplain2 =
      '携帯メールアドレスの場合は、ドメイン設定によりメールが受信できない場合があります。';
  static const customEmailSendAttentionExplain3 =
      '「investment.mogecheck.jp」を受信できるように設定をお願いします。';
  static const customEmailSendAttentionExplain4 = 'その他ご不明な点がありましたら';
  static const customEmailSendAttentionExplain5 = 'よりご連絡ください。';

  /// 共通コンポーネント_会員情報登録インジケータ
  static const profileInputProgressBarUncompletedTitle = '$maxLoanPriceまで';
  static const profileInputProgressBarCompletedTitle = '$maxLoanPriceが算出されました！';
  static const profileInputProgressBarInput = '入力';
  static const profileInputProgressBarConfirm = '確認';
  static const profileInputProgressBarCompleted = '入力結果';

  /// 共通コンポーネント_物件カード
  static const propertyCardButton = 'お問い合わせ';

  /// 共通コンポーネント_バナー
  static const propertyBannerTitle = 'あなたの$maxLoanPrice';
  static const propertyBannerHigh = 'この金額を目安に物件を探そう！';
  static const propertyBannerLow = '物件お問合せ時にご確認ください';

  /// 共通コンポーネント_並び替えヘッダー
  static const sortHeaderPScore = 'おすすめ（Pスコア）';
  static const sortHeaderInitialCost = '自己資金';
  static const sortHeaderLatest = '掲載日';
  static const sortHeaderNull = '--';
  static const sortHeaderCount = '件';
  static const sortHeaderQueryPScore = 'recommend';
  static const sortHeaderQueryInitialCost = 'downPayment';
  static const sortHeaderQueryReturnRate = 'yield';
  static const sortHeaderQueryPrice = 'price';
  static const sortHeaderQueryLatest = 'newArrival';
  static const sortHeaderAsc = 'asc';
  static const sortHeaderDesc = 'desc';

  /// 共通コンポーネント_ツールチップ
  static const tooltipSuffix = 'とは';
  static const tooltipMaxLoanPriceTitle = '$maxLoanPriceの算出について';
  static const tooltipMaxLoanPriceExplain =
      'ご登録情報を踏まえてINVASE Pro独自のロジックに基づき算出しています。';
  static const tooltipInitialCostTitle = '自己資金とは';
  static const tooltipInitialCostExplain =
      '物件購入に必要な資金のうち、ローンで賄えないため、ご自身でご用意頂く金額です。';
  static const tooltipPScoreTitle = 'Pスコアとは';
  static const tooltipPScoreExplain =
      'PスコアはINVASE Proが開発した投資用不動産のリスク指標です。Pスコアは0.00〜5.00までの点数で表され、点数が高い方がリスクが低い、つまり将来賃料が安定的に入ってくる物件であることを示しています。';

  /// 共通コンポーネント_パスワードチェッカー
  static const passwordCheckerAttention =
      '半角英数字10桁以上で入力してください。\n英字の大文字・小文字、数字、記号それぞれ全て含めてください。\n安易な組み合わせ(連番等)、推測されやすいパスワード(生年月日等)E-mailと同一のパスワードは避けてください。';
  static const passwordCheckerStrength = 'パスワード強度チェッカー';

  /// A02-01_チュートリアル画面
  static const tutorialTitle1 = 'INVASE Proへようこそ';
  static const tutorialExplain1 =
      '「株や債券のように不動産投資ができたら」\nINVASE Proは不動産を金融商品として考える\n新しい不動産投資サービスです。';

  /// A02-02_チュートリアル画面
  static const tutorialTitle2 = '$maxLoanPriceが分かる！';
  static const tutorialExplain2 = 'まずはあなたが借りられる\nローンの金額（$maxLoanPrice）を計算します。';

  /// A02-03_チュートリアル画面
  static const tutorialTitle3 = '物件検索ができる！';
  static const tutorialExplain3 = '不動産購入に必要な自己資金を目安に\n物件検索ができます。';

  /// A02-04_チュートリアル画面
  static const tutorialTitle4 = 'キャッシュフロー分析ができる！';
  static const tutorialExplain4 = '毎月のキャッシュフローや\n投資利回り（IRR）のシミュレーションができます。';

  /// A02-05_チュートリアル画面
  static const tutorialTitle5 = 'リスクが分かる！';
  static const tutorialExplain5 =
      '独自のリスク指標（Pスコア）で\n各物件のリスクを可視化。\nリスクに見合ったリターンがわかります。';

  /// A02-06_チュートリアル画面
  static const tutorialTitle6 = 'チャットで問い合わせができる！';
  static const tutorialExplain6 =
      '気になる物件があれば、気軽にチャットで\nお問い合わせ下さい。\n専門のアドバイザーが説明します。\n（煩わしい電話勧誘は一切ありません。）';

  /// A02-07_トラッキング通知許可訴求
  static const tutorialNotificationMessage =
      'ポップアップの許可を押してください。新着物件情報やお知らせを受け取ることができます。';

  /// A03_会員登録関連
  static const googleLogin = 'Googleアカウントでログイン';
  static const facebookLogin = 'Facebookアカウントでログイン';
  static const appleLogin = 'Appleでサインイン';
  static const googleSignUp = 'Googleアカウントでユーザー登録';
  static const facebookSignUp = 'Facebookアカウントでユーザー登録';
  static const appleSignUp = 'Appleでサインアップ';

  /// A03-01_ログイン画面
  static const loginTitle = 'ログイン';
  static const loginEmail = 'メールアドレス';
  static const loginPassword = 'パスワード';
  static const loginWeakPwd = '''
  パスワードポリシーの要件を満たしていません。
  パスワードポリシーを満たすように変更をお願いします。
  
  ・半角英数字10桁以上で入力してください。
  ・英字の大文字・小文字、数字、記号それぞれすべて含めてください。
  ・安易な組み合わせ(連番等)、推測されやすいパスワード(生年月日等)E-mailと同一のパスワードは避けてください。
  ''';

  /// A03-02_会員登録関連_新規登録
  static const signUpTitle = '新規登録';
  static const signUpSubtitle = 'まずはアカウント登録しましょう。あなただけの特別\nなコンテンツが見れるようになります。';
  static const signUpContract1 = 'INVASE サービス利用規約';
  static const signUpContract2 = 'ユーザー情報の共同利用について';
  static const signUpContract3 = '個人情報の利用目的及び開示等のご請求について';
  static const signUpContract4 = 'アプリに関する一般的な規約';
  static const signUpContract5 = ' 同意の上会員登録してください。';
  static const signUpButton = 'ユーザー登録する(無料)';
  static const signUpLogin = 'すでにユーザー登録されている方は';
  static const signUpUserAlreadyExists = '指定されたユーザは既に存在します。ほかのログイン方法をお試しください。';

  /// A03-03_会員情報関連_新規登録_認証メール
  static const authEmailSendTitle = '認証メールを\n確認しましょう';
  static const authEmailSendSubTitle =
      'ご登録のメールアドレスに、認証メールを\n送信しました。\nメールに記載のURLをタップしてください。\n認証が完了します。';
  static const authEmailSendAgain = 'もう一度送信する';

  /// A03-04_メールアドレス認証完了画面
  static const authEmailCompletedTitle = '認証完了';
  static const authEmailCompletedSubTitle = 'メールアドレスを認証しました';
  static const authEmailFailedTitle = '認証失敗';
  static const authEmailFailedSubTitle =
      '認証メールのURLが期限切れ、または不正なURLのため認証できませんでした。\nお手数ですが最初からやり直してください。';

  /// A03-05_登録情報入力訴求モーダル
  static const profileInputAppealTitle = 'あなただけの$maxLoanPriceを瞬時に計算！';
  static const profileInputAppealSubTitle =
      '「年収」や「勤務先」からあなたの\n$maxLoanPriceを算出します。これにより、\n各投資物件を購入する際にいくら自己資金が\n必要になるかがわかります。';
  static const profileInputAppealAnnotation =
      '$maxLoanPriceが計算できない場合もあります。物件お問い合わせ時に担当者へご相談下さい。';

  /// A03-06_会員登録関連_新規登録_認証メール_再送信
  static const authEmailResendTitle = '認証メールを\n確認しましょう';
  static const authEmailResendSubtitle =
      'ご登録のメールアドレスに、認証メールを\n再送信しました。\nメールに記載のURLをタップしてください。\n認証が完了します。';
  static const authEmailResendAgain = 'もう一度送信する';

  /// A03,Z02_会員情報関連
  static const profileInputTitle = '情報入力';
  static const profileTitle = '登録情報';
  static const profileAccountInfo = 'アカウント情報';
  static const profileEmail = 'メールアドレス';
  static const profilePassword = 'パスワード';
  static const profileEmailChange = 'メールアドレスを変更';
  static const profilePasswordChange = 'パスワードを変更';
  static const profileBasicInfo = '基本情報';
  static const profileFullName = '氏名その他';
  static const profileLastName = '姓';
  static const profileFirstName = '名';
  static const profilePhone = '携帯電話番号';
  static const profileBirthday = '生年月日';
  static const profileClientInfo = 'お客様情報';
  static const profileIncome = '給与年収';
  static const profileJobCategory = '職種';
  static const profileOccupation = '業種';
  static const profileEmployment = '雇用形態';
  static const profileEmployeesNumber = '従業員数';
  static const profileWorkingLength = '勤続年数';
  static const profileSupportFamilies = '扶養家族数';
  static const profileOtherLoans = 'その他お借入金額';
  static const profileChangeInfo = '基本情報・お客様情報を変更する';
  static const profileSupportFamiliesExplain = 'あなたが扶養している子・父母・祖父母などの人数';
  static const profileOtherLoansExplain = 'あなたの借入金（住宅ローン、不動産投資ローン、カードローン等）の総額';
  static const profileAppropriateReturnRate = 'Pスコアで評価されるリスクに対応する理論的な利回りです。';

  ///A03-07 会員登録情報_入力
  static const profileInputBasicTitle = '基本情報の入力';
  static const profileInputRequiredField = '必須項目=';
  static const profileInputExplain = '基本情報を入力してください';
  static const profileInputAnnualIncomeCaption = '前年の源泉徴収票をご参照のうえ入力';
  static const profileInputNumberOfFosterFamiliesTooltip =
      'あなたが扶養している子・父母・祖父母などの人数';
  static const profileInputBorrowingAmount = 'その他お借入金額';
  static const profileInputBorrowingAmountHint = '例)100';
  static const profileInputBorrowingAmountToolTipExplain =
      'あなたの借入金総額（住宅ローン、不動産投資ローン、カードローンなど）';
  static const profileInputBirthDateHint = '例)1980-01-01';
  static const profileInputLastNameHint = '例)山田';
  static const profileInputFirstNameHint = '例)太郎';
  static const profileInputButton = '確認画面へすすむ';

  /// A03-08_会員情報登録_確認
  static const profileInputConfirmText = '入力内容を確認してください';
  static const profileInputConfirmModify = '修正する';
  static const profileInputConfirmRegister = '$maxLoanPriceを見る';
  static const profileInputConfirmAttentionText1 = '登録が完了した時点で、';
  static const profileInputConfirmAttentionTermsText = 'INVASEアプリ利用規約';
  static const profileInputConfirmAttentionText2 = 'に同意するものとします。';

  /// A03-09_会員情報登録_完了後借り換え可能額
  static const profileInputCompletedButton = 'おすすめ投資物件をみる';
  static const profileInputCompletedMainLow = '物件問い合わせ時に\nご確認ください';
  static const profileInputCompletedMessageLow1 =
      '申し訳ございません。入力内容から\n$maxLoanPriceを算出できませんでした。';
  static const profileInputCompletedMessageLow2 = '物件一覧はご利用いただけます';
  static const profileInputCompletedAttentionHigh1 =
      '借入可能額は登録情報をもとにINVASE Pro独自のロジックで推定した不動産投資ローンの借り入れの想定額です。あくまで参考値であり、実際に借りられる金額は各金融機関の審査により異なることがあります。';
  static const profileInputCompletedAttentionHigh2 = 'マイページ、物件一覧からいつでも確認できます。';
  static const profileInputCompletedAttentionHigh3 =
      '年収の変更等で$maxLoanPriceを再計算したい方はチュートリアル終了後、マイページから変更可能です。';
  static const profileInputCompletedAttentionLow1 =
      '投資用ローンのご融資を受けることが難しい可能性があります。ただし、ご登録情報に基づく簡易判定ですので、気になる物件がありましたら個別にご相談をいただくことが可能です。ご遠慮なくお問い合わせください。';
  static const profileInputCompletedAttentionLow2 =
      '年収の変更等で$maxLoanPriceを再計算したい方はチュートリアル終了後、マイページから変更可能です。';

  /// A03-10_パスワード再設定画面
  static const passwordResetTitle = 'パスワード再設定';
  static const passwordResetSubtitle =
      '入力いただいたメールアドレスに、\n認証メールを送ります。\n認証後パスワードを再設定してください。';
  static const passwordResetMail = 'メールアドレス';
  static const passwordResetHint = 'メールアドレスを入力してください';
  static const passwordResetButton = '送信する';

  /// A03-11_パスワード再設定_再設定メール画面
  static const passwordResetConfirmTitle = 'パスワード再設定\nメール送信完了';
  static const passwordResetConfirmSubtitle =
      'ご登録いただいたメールアドレスに、\n再設定メールを送信しました。\nご確認の上記載のURLをタップしてください。';
  static const passwordResetConfirmResend = 'もう一度送信する';

  /// A03-12_パスワード再設定_パスワード入力画面
  static const passwordResetPasswordInputTitle = 'パスワード再設定';
  static const passwordResetPasswordInputSubtitle =
      'メールを認証しました。下記で任意のパスワードに再設定してください。';
  static const passwordResetPasswordInputButton = 'パスワードを再設定する';

  /// A03-13_パスワード再設定_完了
  static const passwordResetCompletedTitle = 'パスワード再設定完了';
  static const passwordResetCompletedSubtitle =
      'パスワードの変更が完了しました\n再設定パスワードでログイン操作を\n行ってください';
  static const passwordResetCompletedButton = 'ログイン画面へ';

  /// A03-14_パスワード再設定_再設定メール_再送信
  static const passwordResetResendTitle = 'パスワード再設定\nメール再送信完了';
  static const passwordResetResendSubtitle =
      'ご登録いただいたメールアドレスに、\n再設定メールを再送信しました。\nご確認の上記載のURLをタップしてください。';
  static const passwordResetResendAgain = 'もう一度送信する';

  /// A03-18_SMS本人認証_電話番号
  static const smsAuthTitle = 'SMS本人認証';
  static const smsAuthSubtitle =
      '携帯電話のSMS(ショートメッセージサービス)で本人認証を行います。\nSMSの受信拒否設定がされていないことをご確認の上、携帯電話番号を入力して「認証コードを送信する」ボタンを押して下さい。';
  static const smsAuthInputPhoneNumber = '電話番号入力';
  static const smsAuthPhoneNumber = '携帯電話番号';
  static const smsAuthPhoneNumberHint = '携帯電話番号を入力してください';
  static const smsAuthSendCodePhoneNumber = '認証コードを送信する';

  /// A03-19_SMS本人認証_認証コード
  static const smsAuthInputCode = '認証コード入力';
  static const smsAuthInputCodeSubtitle =
      '入力いただいた携帯電話番号に\nSMSを送信しました。\nSMSに記載の認証コードを入力してください。';
  static const smsAuthCode = '認証コード';
  static const smsAuthCodeHint = 'SMSに記載の認証コード';
  static const smsAuth = '認証する';
  static const smsAuthResendCodeText1 = '認証コードを';
  static const smsAuthResendCodeText2 = '再送信';

  /// A03-20_SMS本人認証_認証完了
  static const smsAuthCompletedSubTitle = 'SMS本人認証が完了しました';

  /// A03-21_SMS本人認証_認証失敗
  static const smsAuthFailedSubTitle =
      '認証に失敗しました。\n認証コードが間違っているか、認証コードの有効期限が切れています。';

  /// A03-22_SMS本人認証_再送信
  static const smsAuthResendTitle = '認証コード再送信完了';
  static const smsAuthResendSubTitle = 'ご入力いただいた電話番号に、\n認証コードを再送信しました。';

  /// C0_物件系
  static const propertyInitialCost = '自己資金';
  static const propertyPrice = '販売価格';
  static const propertyReturnRate = '利回り';
  static const propertyPScore = 'Pスコア';
  static const propertyPriceUpdate = '価格更新';
  static const propertyNew = '新着';
  static const propertyTooltipTitle = '項目名';
  static const propertyFavoriteAdd = 'お気に入りに追加しました';
  static const propertyFavoriteRemove = 'お気に入りから削除しました';

  /// C01-01 投資物件一覧
  static const propertyListTitle = '物件一覧';
  static const propertyListEmptyTitle = '条件に一致する物件が\nありません';
  static const propertyListEmptyText = '絞り込み条件を変更してください';
  static const propertyListNoImage = '写真は準備中です';
  static const propertyListConsidering = '購入検討者あり';
  static const propertyListUnpublishFlag = '非掲載';
  static const propertyListUnpublish = 'この物件の掲載は終了しました';

  /// C01-02_投資物件一覧_検索
  static const propertySearchRefine = '絞り込み検索';
  static const propertySearchScore = 'Pスコア';
  static const propertySearchInitial = '自己資金';
  static const propertySearchReturnRate = '利回り';
  static const propertySearchSelling = '販売価格';
  static const propertySearchHide = 'お問い合わせ済の物件を表示しない';
  static const propertySearchClear = 'クリア';
  static const propertySearchButton = '絞り込む';
  static const propertySearchRange = '〜';
  static const propertySearchScoreInformation =
      'PスコアはINVASE Proが開発した投資用不動産のリスク指標です。Pスコアは0.00〜5.00までの点数で表され、点数が高い方がリスクが低い、つまり将来賃料が安定的に入ってくる物件であることを示しています。';
  static const propertySearchInitialInformation =
      '物件購入に必要な資金のうち、ローンで賄えないため、ご自身でご用意頂く金額です。';
  static const propertySearchSuffix = 'とは';
  static const propertySearchMinInitialCost = '例)150';
  static const propertySearchMaxInitialCost = '例)500';
  static const propertySearchMinReturnRate = '例)4.00';
  static const propertySearchMaxReturnRate = '例)4.75';
  static const propertySearchMinPrice = '例)1,500';
  static const propertySearchMaxPrice = '例)5,000';

  /// C02_収益物件詳細画面 FIXME 変数名要修正
  static const propertyDetailTitle = '物件詳細';
  static const propertyDetailBuildingName = '物件名';
  static const propertyDetailTab = '物件詳細';
  static const propertyDetailTabSimulate = '投資分析';
  static const propertyDetailCashflow = 'キャッシュフロー分析';
  static const propertyDetailInterestRate = '金利';
  static const propertyDetailRepaymentPeriod = '返済期間';
  static const propertyDetailTabExpenses = '諸費用';
  static const propertyDetailLoanAmount = 'ローン借入額';
  static const propertyDetailAppropriateReturnRate = '適正利回り';
  static const propertyDetailStation = '駅';
  static const propertyDetailStationDistance = '駅距離';
  static const propertyDetailAge = '築年数';
  static const propertyDetailOccupationArea = '専有面積';
  static const propertyDetailRentalStatus = '賃貸状況';
  static const propertyDetailFloorNumber = '所在階';
  static const propertyDetailTotalOvergroundFloor = '地上階数';
  static const propertyDetailTotalUndergroundFloor = '地下階数';
  static const propertyDetailBrand = 'ブランド';
  static const initialCostHintText = '例)290';
  static const interestRateHintText = '例)1.93';
  static const estimate = '試算する';
  static const financingPlan = '資金計画';
  static const hedgeRisk = 'リスク分析';
  static const rent = '月間賃料';
  static const loanRepayment = 'ローン返済額';
  static const managementFee = '管理費・修繕積立金';
  static const cashflow = '月次キャッシュフロー';
  static const propertyDetailIrr = '投資利回り(IRR)';
  static const propertyDetailIrrTitle = '$propertyDetailIrrとは';
  static const propertyDetailIrrExplain =
      '内部収益率と呼ばれ、投資資金がどれくらいのリターンを生み出しているのかを%で表したものです。';
  static const district = '所在区';
  static const propertyDetailButton = 'この物件のご相談・お問い合わせ';
  static const propertyDetailAnnualRentalIncome = '年間賃料';
  static const recommendPoint = 'おすすめポイント';
  static const propertyDescription = '物件概要';
  static const realEstateCompany = '不動産会社';
  static const handlingRealEstateCompany = 'お取り扱い不動産会社';
  static const businessHour = '営業時間';
  static const regularHoliday = '定休日';
  static const licenseNumber = '宅建業法による許可書番号';
  static const address = '所在地';
  static const traffic = '交通';
  static const monthlyRent = '月額賃料';
  static const annualRent = '想定年収 (年間)';
  static const managementFeeOfMonth = '管理費 (月額)';
  static const repairFund = '修繕積立金 (月額)';
  static const otherCost = 'その他費用';
  static const floorPlan = '間取り';
  static const direction = '方角';
  static const balconyArea = 'バルコニー面積';
  static const buildingStructure = '構造';
  static const livingStatus = '入居状況';
  static const tradeStyle = '取引形態';
  static const parking = '駐車場';
  static const totalRoomCount = '総戸数';
  static const managementStyle = '管理方法';
  static const delivery = '引き渡し';
  static const purposeArea = '用途地域';
  static const needNotification = '国土法届け出';
  static const landRight = '土地権利';
  static const landRightMemo = '土地権利備考';
  static const note = 'その他備考';
  static const updatedAt = '最終更新日';
  static const nextUpdatedAt = '更新予定日';
  static const publishedAt = '登録日';
  static const necessary = '必要';
  static const unnecessary = '不要';
  static const propertyDetailAttentionText1 = '※掲載情報に誤りがある場合は';
  static const propertyDetailAttentionText2 = 'からご連絡ください';
  static const propertySimulateAttentionText =
      '本シミュレーションは、諸費用及び管理費・修繕積立金以外のコストを考慮しておらず、また、ローン返済期間後に物件が販売価格と同額で売却されるといった一定の前提条件のもと行われています。実際の投資時と数字が異なる可能性がありますので、あくまでも参考値としてご利用下さい。';
  static const simulateLoanAmount = '本物件を購入するにあたり借り入れる不動産投資ローンの借入額です。';

  /// C03-01 この物件に関するお問合わせ
  static const inquiryTitle = 'この物件に関するお問合わせ';

  //お問い合わせ物件
  static const inquiryProperty = 'お問い合わせする物件';
  static const inquiryPropertyName = '【完成予定】物件名テキスト物件名テキスト物件名テキスト 6階';
  static const inquiryPropertyDetailMessage = '物件の詳細についてINVASE Pro担当よりご連絡します';
  static const inquiryRequiredField = '必須項目=';
  //気になっているポイント
  static const inquiryPoints = '気になっているポイント';
  static const inquiryOtherPointsKey = 'other';
  static const inquiryFreeEntryPlaceholder = '自由記述を選択した方は入力してください';
  //無料カウンセリングの申し込み
  static const inquiryCounselApply = '無料カウンセリングの申し込み';
  static const inquiryCounselTooltipTitle = '無料カウンセリングとは';
  static const inquiryCounselTooltipExplain =
      'この物件の詳細や、おすすめの投資方法について、オンライン面談でご案内します！';
  static const inquiryCounselMeetingCaption = '面談はZoomによるビデオミーティングとなります。';
  static const inquiryCounselAdjustCaption = '無料カウンセリング日は別途調整する';
  static const inquiryCounselSchedule = '日程';
  static const inquiryCounselTime = '時間帯';
  // カレンダー
  static const inquiryCalenderPreviousWeek = '前週';
  static const inquiryCalenderNextWeek = '次週';
  static const inquiryCalenderAttention1 = '24時間後の予約が可能です、24時間以内の予約は直接';
  static const inquiryCalenderAttention2 = 'お電話にてお問い合わせ';
  static const inquiryCalenderAttention3 = 'ください。';
  static const inquiryCalenderAttention4 = 'ご予約は１ヶ月先まで可能です。';
  static const inquiryCalendarCheckedDateTime = '選択希望日時';
  //お客様情報
  static const inquiryCustomerInfo = 'お客様情報';
  static const inquiryWorkPlace = '勤務先名';
  static const inquiryWorkPlaceholder = '例)株式会社MFS';
  static const inquiryFinancialAssets = '金融資産（預貯金や有価証券等）';
  static const inquiryFinancialPlaceholder = '例)500';
  //利用規約
  static const inquiryConfirmTerm = '利用規約をご確認ください';
  static const inquiryTermOfCoAM = 'サービス利用規約';
  static const inquiryConsentOfCoAM = '個人情報の取扱に関する同意書';
  static const inquiryUserInfo = '個人情報の第三者提供等の取扱いに関する同意書';
  static const inquiryConsentOfTerm = '利用規約に同意する';
  static const inquiryTermTitle = 'タイトルタイトル同意書';
  static const inquiryButtonTitle = '上記の内容でお問い合わせ';
  static const inquiryCaption1 = '入力に不具合が生じたり、お申し込みが完了しない場合は、お手数ですが';
  static const inquiryCaption2 = 'からお問い合わせください。';

  /// C03-02 この物件に関するお問合せ_完了
  static const inquiryCompletedTitle = 'お問合せを受け付けました';
  static const inquiryCompletedMessage =
      'お問い合わせありがとうございます。今後の連絡は、メッセージページで行います。担当からの連絡をおまちください。';
  static const inquiryCompletedCounseling = '無料カウンセリングの申し込み';
  static const inquiryCompletedAttention1 = '新着メッセージは、プッシュ通知でお知らせします。';
  static const inquiryCompletedAttention2 = '物件のお問い合わせについて、ご不明な点などあれば';
  static const inquiryCompletedAttention3 = 'からご連絡ください。';
  static const inquiryCompletedButton1 = '物件一覧へ';
  static const inquiryCompletedButton2 = 'メッセージへ';

  /// C04-01_お気に入り
  static const propertyFavoriteIsOnlyPublish = '販売中の物件のみ表示';
  static const propertyFavoriteListEmptyTitle = '$favoriteに追加された\n物件がありません';
  static const propertyFavoriteListEmptyButton = '物件一覧へ';
  static const propertyFavoriteListEmptyText =
      '気になった物件があれば物件一覧、物件詳細ページで\n「♡」アイコンをタップしましょう';

  /// D01-01_スレッド一覧
  static const messageListTitle = 'メッセージ';
  static const messageListEmptyTitle = '不動産投資のプロにメッセージで\n無料相談ができる。';
  static const messageListEmptyText =
      '物件お問い合わせ後に、\nエージェント（お客様の担当者）\nとのメッセージのやり取りが可能になります';
  static const messageListEmptyButton = '物件一覧へ';
  static const messageListImageReception = '画像が送信されました';
  static const messageListImageSent = '画像を送信しました';

  /// D02-01 スレッド詳細
  static const messageDetailSendMsgPlaceHolder = 'こちらに入力してください';

  /// Z01-01_マイページ
  static const myPageTitle = 'マイページ';
  static const myPageUser = ' 様';
  static const myPageNotice = 'お知らせ一覧';
  static const myPageColumn = 'コラム';
  static const myPageFaq = 'よくあるご質問';
  static const myPageTutorial = 'チュートリアル';
  static const myPageProfile = '登録情報';
  static const myPageNotificationSettings = '通知設定';
  static const myPageTerms = '利用規約';
  static const myPagePrivacyPolicy = 'プライバシーポリシー';
  static const myPageAboutApp = 'アプリについて';
  static const myPageCompany = '運営会社';
  static const myPageLogout = 'ログアウト';

  /// Z01-02_ログアウト確認
  static const logoutTitle = 'ログアウトしますか?';

  /// Z01-03_WEBサーバーメンテナンス
  static const maintenanceTitle = 'メンテナンス';
  static const maintenanceContent =
      'メンテナンスを実施中です。\n大変ご迷惑をお掛け致しますが\nよろしくお願いします。';

  /// Z02-01_登録情報確認
  static const registeredInfoTitle = '登録情報';
  static const registeredInfoAccountInfo = 'アカウント情報';
  static const registeredInfoEmail = 'メールアドレス';
  static const registeredInfoPassword = 'パスワード';
  static const registeredInfoEmailChange = 'メールアドレスを変更';
  static const registeredInfoPasswordChange = 'パスワードを変更';
  static const registeredInfoBasicInfo = '基本情報';
  static const registeredInfoFullName = '氏名';
  static const registeredInfoSurname = '姓';
  static const registeredInfoName = '名';
  static const registeredInfoPhone = '携帯電話番号';
  static const registeredInfoBirthday = '生年月日';
  static const registeredInfoClientInfo = 'お客様情報';
  static const registeredInfoIncome = '給与年収';
  static const registeredInfoEmployment = '雇用形態';
  static const registeredInfoEmployeesNumber = '従業員数';
  static const registeredInfoWorkingLength = '勤続年数';
  static const registeredInfoSupportFamilies = '扶養家族数';
  static const registeredInfoOtherLoans = 'その他お借入金額';
  static const registeredInfoChangeInfo = '基本情報・お客様情報を変更する';
  static const registeredInfoSendMessage = 'メッセージで変更依頼を送信する';
  static const registeredInfoSupportFamiliesExplain = 'あなたが扶養している子・父母・祖父母などの人数';
  static const registeredInfoOtherLoansExplain =
      'あなたの借入金総額（住宅ローン、不動産投資ローン、カードローンなど）';
  static const profilePasswordAsterisk = '**********';

  /// Z02-02_メールアドレス変更
  static const emailChangeTitle = 'メールアドレス変更';
  static const emailChangeSubtitle =
      'メールアドレス変更を行います。新しい\nメールアドレスに認証メールをお送りします。';
  static const emailChangeNew = '新しいメールアドレス';
  static const emailChangeHint = '例)sample@mail.jp';
  static const emailChangeButton = '認証メールを送信する';

  /// Z02-03_メールアドレス変更_送信完了
  static const emailChangeConfirmTitle = '送信完了';
  static const emailChangeConfirmSubtitle =
      'ご登録いただいたメールアドレスに、\n認証メールを送信しました。\nメールに記載のURLをタップしてください。';
  static const emailChangeConfirmResend = 'もう一度送信する';

  /// Z02-04_メールアドレス変更変更完了
  static const emailChangeCompletedTitle = 'メールアドレス\n変更完了';
  static const emailChangeCompletedButton = '登録情報へ';

  /// Z02-05_メールアドレス変更送信完了_再送信
  static const emailChangeResendTitle = '再送信完了';
  static const emailChangeResendSubtitle =
      'ご登録いただいたメールアドレスに、\n認証メールを再送信しました。\nメールに記載のURLをタップしてください。';
  static const emailChangeResendAgain = 'もう一度送信する';

  /// Z02-06_パスワード変更
  static const passwordChangeTitle = 'パスワード変更';
  static const passwordChangeSubtitle =
      'パスワード変更を行います。新しいパスワードは\n確認のため2回入力してください。';
  static const passwordChangeNowPasswordInfo = '認証のため現在のパスワードを入力してください。';
  static const passwordChangeNowPassword = '現在のパスワード';
  static const passwordChangeButton = 'パスワードを変更する';

  /// Z02-07_パスワード変更_完了
  static const passwordChangeCompletedTitle = 'パスワード\n変更完了';
  static const passwordChangeCompletedButton = '登録情報へ';

  /// Z02-08_登録情報編集
  static const profileEditTitle = '登録情報編集';
  static const profileEditRequired = '必須項目=';
  static const profileEditBasicInfo = '基本情報の入力';
  static const profileEditBasicInfoText = '基本情報を入力してください';
  static const profileEditSeiHint = '例)山田';
  static const profileEditMeiHint = '例)太郎';
  static const profileEditPhoneNumberHint = '半角数字で入力してください';
  static const profileEditYear = '年';
  static const profileEditMonth = '月';
  static const profileEditDay = '日';
  static const profileEditIncomeUnit = '万円/年';
  static const profileEditIncomeText = '前年の源泉徴収票をご参照のうえ入力';
  static const profileEditBorrowingAmountUnit = '万円';
  static const profileEditConfirmButton = '確認画面へすすむ';

  /// Z02-09_登録情報編集_確認
  static const profileEditConfirmText = '入力内容を確認してください';
  static const profileEditConfirmBasicTitle = '基本情報';
  static const profileEditConfirmModify = '修正する';
  static const profileEditConfirmRegister = '登録する';

  /// Z02-10_登録情報編集_完了
  static const profileEditCompletedTitle = '基本情報・お客様情報\n変更完了';
  static const profileEditCompletedButton = '借入可能額へ';
  static const profileEditCompleteSubTitle = '借入可能額をご確認ください';

  /// Z03_01_通知設定
  static const notificationSettingsTitle = '通知設定';
  static const notificationSettingsMassage = 'メッセージ';
  static const notificationSettingsNotice = 'お知らせ';
  static const notificationSettingsPushNotification = 'プッシュ通知';
  static const notificationSettingsEmailNotification = 'メールアドレスへ通知';

  /// Z04-01_お知らせ_一覧
  static const newsListTitle = 'お知らせ';

  /// Z05-01_ 借入可能額画面
  static const maxLoanPriceAttention = '年収の変更等で$maxLoanPriceを再計算したい方は';
  static const maxLoanPriceAttentionHigh =
      '借入可能額は登録情報をもとにINVASE Pro独自のロジックで推定した不動産投資ローンの借り入れの想定額です。あくまで参考値であり、実際に借りられる金額は各金融機関の審査により異なることがあります。';
  static const maxLoanPriceAttentionLow1 =
      '投資用ローンのご融資を受けることが難しい可能性があります。ただし、ご登録情報に基づく簡易判定ですので、気になる物件がありましたら個別にご相談をいただくことが可能です。ご遠慮なくお問い合わせください。';

  /// Z08-03_アプリについて
  static const aboutAppTitle = 'アプリについて';
  static const aboutAppVersion = 'アプリバージョン';
  static const aboutAppLicenseInfo = 'ライセンス情報';
  static const aboutAppCancelMembership = '退会手続きは';

  /// Z08-04_退会、Z08-05_退会_確認
  static const cancelMembershipTitle = '退会手続き';
  static const cancelMembershipButton = '退会する';
  static const cancelMembershipButtonCancel = 'キャンセル';
  static const cancelMembershipAttention =
      'INVASE運営事務局です。\nお客様のご要望により、INVASE Proアプリ退会の\nお手続きをさせていただきます。完了まで数日要する場合がございます。ご了承くださいませ。';
  static const cancelMembershipCaution =
      '契約状況のご確認等のため、事務局からご連絡させていただく場合がございます。';
  static const cancelMembershipMessage1 = 'また、INVASEのWebサービスの退会は、別途お手続きが必要です。';
  static const cancelMembershipMessage2 = 'マイページログイン';
  static const cancelMembershipMessage3 =
      'の上、\nメッセージよりお知らせください。\nこの度はご利用誠にありがとうございました。';
  static const cancelMembershipDialogTitle = '本当に退会しますか？';
  static const cancelMembershipDialogSubtitle =
      '一度手続きを行うと、全てのデータが\n削除されます。本当によろしいですか？';

  /// Z08-06 ライセンス情報
  static const aboutLicenseLegalese = 'は下記のオープンソース・\nソフトウェアを利用して作られています。';

  /// Webview関連 FIXME 本番URLを仮指定している。URLの変更が必要であればこちらを修正する
  static const webviewColumnTitle = 'コラム';
  static const webviewColumnPath = '/media?app=invase_pro';
  static const webviewFaqTitle = 'よくあるご質問';
  static const webviewFaqPath = '/lp/invasepro#faqs?app=invase_pro';
  static const webviewTermsTitle = '利用規約';
  static const webviewTermsPath = '/service-regulations-app?app=invase_pro';
  static const webviewPrivacyPolicyTitle = 'プライバシーポリシー';
  static const webviewPrivacyPolicyUrl =
      'https://investment.mogecheck.jp/pdf/agreement/privacy-policy.pdf';
  static const webviewCompanyTitle = '運営会社';
  static const webviewCompanyPath = 'https://www.mortgagefss.jp?app=invase_pro';
  static const webviewFormTitle = 'お問い合わせフォーム';
  static const webviewFormUrl = 'https://form.run/@invase-pro';
  static const webviewAppTermsOfUseTitle = 'アプリに関する一般的な規約';
  static const webviewAppTermsOfUsePath = '/pdf/agreement/app_termsofuse.pdf';
  static const webviewInvaseProTermsOfUseTitle = 'INVASE Pro サービス利用規約';
  static const webviewInvaseProTermsOfUsePath =
      '/pdf/agreement/invasepro_termsofuse.pdf';
  static const webviewInvaseProTermsOfUseUrl =
      'https://investment.mogecheck.jp/pdf/agreement/%E3%83%A6%E3%83%BC%E3%82%B6%E3%83%BC%E6%83%85%E5%A0%B1%E3%81%AE%E5%85%B1%E5%90%8C%E5%88%A9%E7%94%A8%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6.pdf';
  static const personalInfoUsageAndDisclosureRequestUrl =
      'https://investment.mogecheck.jp/pdf/agreement/%E5%80%8B%E4%BA%BA%E6%83%85%E5%A0%B1%E3%81%AE%E5%88%A9%E7%94%A8%E7%9B%AE%E7%9A%84%E5%8F%8A%E3%81%B3%E9%96%8B%E7%A4%BA%E7%AD%89%E3%81%AE%E3%81%94%E8%AB%8B%E6%B1%82%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6.pdf';
}
