.class public Lcom/android/settings/ApnEditor;
.super Landroid/preference/PreferenceActivity;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mApn:Landroid/preference/EditTextPreference;

.field private mApnType:Landroid/preference/EditTextPreference;

.field private mAuthType:Landroid/preference/ListPreference;

.field private mBearer:Landroid/preference/ListPreference;

.field private mCarrierEnabled:Landroid/preference/CheckBoxPreference;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mFirstTime:Z

.field private mIsTetherApn:Z

.field private mIsTetherApnEditable:Z

.field private mMcc:Landroid/preference/EditTextPreference;

.field private mMmsPort:Landroid/preference/EditTextPreference;

.field private mMmsProxy:Landroid/preference/EditTextPreference;

.field private mMmsc:Landroid/preference/EditTextPreference;

.field private mMnc:Landroid/preference/EditTextPreference;

.field private mMvnoMatchData:Landroid/preference/EditTextPreference;

.field private mMvnoType:Landroid/preference/ListPreference;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNewApn:Z

.field private mPassword:Landroid/preference/EditTextPreference;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mProtocol:Landroid/preference/ListPreference;

.field private mProxy:Landroid/preference/EditTextPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingProtocol:Landroid/preference/ListPreference;

.field private mServer:Landroid/preference/EditTextPreference;

.field private mSettingsLockCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscription:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const-class v0, Lcom/android/settings/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    .line 129
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "mvno_type"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "mvno_match_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/ApnEditor;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mSettingsLockCache:Ljava/util/HashSet;

    .line 109
    iput v1, p0, Lcom/android/settings/ApnEditor;->mSubscription:I

    .line 122
    iput-boolean v1, p0, Lcom/android/settings/ApnEditor;->mIsTetherApnEditable:Z

    return-void
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 528
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v4, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 529
    .local v1, "mBearerIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 536
    :goto_0
    return-object v3

    .line 532
    :cond_0
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 534
    .local v2, "values":[Ljava/lang/CharSequence;
    :try_start_0
    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private checkCanSaveApn(Z)Z
    .locals 2
    .param p1, "force"    # Z

    .prologue
    const/4 v0, 0x0

    .line 777
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->isCarrierLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 778
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 779
    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 787
    :cond_0
    :goto_0
    return v0

    .line 783
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 784
    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 787
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 980
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 981
    :cond_0
    const-string p1, ""

    .line 983
    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 972
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 973
    :cond_0
    sget-object p1, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 975
    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 955
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 956
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 957
    return-void
.end method

.method private fillTetherUI()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 349
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    if-nez v5, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v6}, Lcom/sonyericsson/settings/apn/TetherApnData;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 353
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v6}, Lcom/sonyericsson/settings/apn/TetherApnData;->getApn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 354
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v6}, Lcom/sonyericsson/settings/apn/TetherApnData;->getProxy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 355
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v6}, Lcom/sonyericsson/settings/apn/TetherApnData;->getPort()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 356
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v6}, Lcom/sonyericsson/settings/apn/TetherApnData;->getUser()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 357
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v6}, Lcom/sonyericsson/settings/apn/TetherApnData;->getServer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 358
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v6}, Lcom/sonyericsson/settings/apn/TetherApnData;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 359
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v6}, Lcom/sonyericsson/settings/apn/TetherApnData;->getMmsProxy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 360
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v6}, Lcom/sonyericsson/settings/apn/TetherApnData;->getMmsPort()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 361
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v6}, Lcom/sonyericsson/settings/apn/TetherApnData;->getMmsc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 362
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v6}, Lcom/sonyericsson/settings/apn/TetherApnData;->getMcc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 363
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v6}, Lcom/sonyericsson/settings/apn/TetherApnData;->getMnc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 364
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v6}, Lcom/sonyericsson/settings/apn/TetherApnData;->getTypeArray()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 366
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getAuthType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 367
    .local v2, "authtype":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v7, :cond_3

    .line 368
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 373
    :goto_1
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "authVal":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 388
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 389
    .local v1, "authValIndex":I
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 391
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f070029

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 392
    .local v4, "values":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 400
    .end local v1    # "authValIndex":I
    .end local v4    # "values":[Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v6}, Lcom/sonyericsson/settings/apn/TetherApnData;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 401
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v6}, Lcom/sonyericsson/settings/apn/TetherApnData;->getRoamingProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 402
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v6}, Lcom/sonyericsson/settings/apn/TetherApnData;->getCarrierEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 403
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getBearer()I

    move-result v3

    .line 404
    .local v3, "bearer":I
    if-eq v3, v7, :cond_5

    .line 405
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 410
    :goto_3
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v6, v7}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v6, v7}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 416
    iget-boolean v5, p0, Lcom/android/settings/ApnEditor;->mIsTetherApnEditable:Z

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->isCarrierLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 417
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 370
    .end local v0    # "authVal":Ljava/lang/String;
    .end local v3    # "bearer":I
    :cond_3
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 394
    .restart local v0    # "authVal":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    sget-object v6, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 407
    .restart local v3    # "bearer":I
    :cond_5
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private fillUi(Ljava/lang/String;)V
    .locals 12
    .param p1, "defaultOperatorNumeric"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 422
    iget-boolean v7, p0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    if-eqz v7, :cond_1

    .line 423
    iput-boolean v6, p0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    .line 425
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 426
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 427
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 428
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 429
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 430
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 431
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x7

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 432
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0xc

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 433
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0xd

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 434
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x8

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 435
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 436
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0xa

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 437
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0xf

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 438
    iget-boolean v7, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v7, :cond_0

    .line 440
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v11, :cond_0

    .line 442
    invoke-virtual {p1, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, "mcc":Ljava/lang/String;
    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, "mnc":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 447
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 448
    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 449
    iput-object v2, p0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 452
    .end local v2    # "mcc":Ljava/lang/String;
    .end local v3    # "mnc":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v8, 0xe

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 453
    .local v0, "authVal":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_3

    .line 454
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 459
    :goto_0
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x10

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 460
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x13

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 461
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x11

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v5, :cond_4

    :goto_1
    invoke-virtual {v7, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 462
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v8, 0x12

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 463
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v8, 0x14

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 464
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 465
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v8, 0x15

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 468
    .end local v0    # "authVal":I
    :cond_1
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "authVal":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 484
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 485
    .local v1, "authValIndex":I
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 487
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f070029

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 488
    .local v4, "values":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v7, v4, v1

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 493
    .end local v1    # "authValIndex":I
    .end local v4    # "values":[Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v8}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v8}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 503
    iget-boolean v5, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->isCarrierLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 504
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 506
    :cond_2
    return-void

    .line 456
    .local v0, "authVal":I
    :cond_3
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v5, v6

    .line 461
    goto/16 :goto_1

    .line 490
    .local v0, "authVal":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    sget-object v7, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private getCurrentSupportedNetwork()Ljava/lang/String;
    .locals 9

    .prologue
    .line 607
    const-string v5, ""

    .line 609
    .local v5, "supportedNetwork":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 610
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const-string v6, "com.android.phone"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 613
    .local v3, "res":Landroid/content/res/Resources;
    const-string v6, "preferred_network_mode_marshal"

    const-string v7, "string"

    const-string v8, "com.android.phone"

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 615
    .local v4, "resourceId":I
    if-eqz v4, :cond_0

    .line 616
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "resourceId":I
    :cond_0
    :goto_0
    return-object v5

    .line 618
    :catch_0
    move-exception v1

    .line 619
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v6, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v7, "No supported network found"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCustomizedSettings()V
    .locals 5

    .prologue
    .line 1075
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1076
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1077
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mSettingsLockCache:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1076
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1079
    :cond_0
    return-void
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 903
    const/4 v0, 0x0

    .line 905
    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 906
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 907
    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 908
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 910
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v5, :cond_1

    .line 911
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0424

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 922
    :cond_0
    :goto_0
    return-object v0

    .line 912
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v5, :cond_2

    .line 913
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0425

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 914
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 915
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0426

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 916
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0xfffe

    and-int/2addr v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 917
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0427

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 918
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->isCarrierLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 919
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isCarrierLocked()Z
    .locals 3

    .prologue
    .line 1056
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1057
    .local v0, "carrierName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1058
    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mSettingsLockCache:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1060
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getCustomizedSettings()V

    .line 1063
    :cond_0
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mSettingsLockCache:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1064
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mSettingsLockCache:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1065
    const/4 v1, 0x1

    .line 1068
    :cond_1
    return v1
.end method

.method private isLteNetworkSupportedByDevice()Z
    .locals 14

    .prologue
    const/4 v10, 0x0

    .line 579
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getCurrentSupportedNetwork()Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, "currentSupportedNetworks":Ljava/lang/String;
    const-string v11, ","

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 581
    .local v8, "networks":[Ljava/lang/String;
    aget-object v11, v8, v10

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 599
    :cond_0
    :goto_0
    return v10

    .line 583
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 585
    .local v5, "lteNetworkModeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f07006a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget v9, v0, v3

    .line 586
    .local v9, "type":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 589
    .end local v9    # "type":I
    :cond_2
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_0

    aget-object v7, v0, v3

    .line 591
    .local v7, "network":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 592
    .local v6, "net":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_3

    .line 593
    const/4 v10, 0x1

    goto :goto_0

    .line 595
    .end local v6    # "net":I
    :catch_0
    move-exception v2

    .line 596
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v11, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Network value can\'t be parsed as an integer value: network="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private mvnoDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 542
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v6, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 543
    .local v1, "mvnoIndex":I
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 545
    .local v3, "oldValue":Ljava/lang/String;
    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    .line 569
    :goto_0
    return-object v5

    .line 548
    :cond_0
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f07002f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 549
    .local v4, "values":[Ljava/lang/String;
    aget-object v6, v4, v1

    const-string v7, "None"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 550
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 554
    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 555
    aget-object v6, v4, v1

    const-string v7, "SPN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 556
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 567
    :cond_1
    :goto_2
    :try_start_0
    aget-object v5, v4, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 552
    :cond_2
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 557
    :cond_3
    aget-object v6, v4, v1

    const-string v7, "IMSI"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 558
    const-string v6, "gsm.sim.operator.numeric"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 560
    .local v2, "numeric":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 561
    .end local v2    # "numeric":Ljava/lang/String;
    :cond_4
    aget-object v6, v4, v1

    const-string v7, "GID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 562
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto/16 :goto_0
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;
    .locals 6
    .param p1, "raw"    # Ljava/lang/String;
    .param p2, "protocol"    # Landroid/preference/ListPreference;

    .prologue
    const/4 v3, 0x0

    .line 514
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 515
    .local v1, "protocolIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 522
    :goto_0
    return-object v3

    .line 518
    :cond_0
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f07002b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 520
    .local v2, "values":[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private removeBearer(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 629
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 631
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 635
    .local v2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 636
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 642
    :goto_0
    return-void

    .line 638
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 639
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 640
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 641
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setBearerEntries()V
    .locals 4

    .prologue
    .line 649
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 651
    .local v0, "bearerValues":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 652
    const-string v2, "lte"

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 654
    const-string v2, "\u200f4G"

    aput-object v2, v0, v1

    .line 655
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 651
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 960
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 961
    :cond_0
    sget-object v2, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 967
    :goto_0
    return-object v2

    .line 963
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 964
    .local v1, "password":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 965
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 964
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 967
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 798
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mIsTetherApn:Z

    if-eqz v0, :cond_2

    .line 799
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mIsTetherApnEditable:Z

    if-eqz v0, :cond_1

    .line 800
    invoke-direct {p0, p1}, Lcom/android/settings/ApnEditor;->validateAndSaveTetherApn(Z)Z

    move-result v1

    .line 899
    :cond_0
    :goto_0
    return v1

    .line 802
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 806
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 807
    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 808
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 809
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 812
    invoke-direct {p0, p1}, Lcom/android/settings/ApnEditor;->checkCanSaveApn(Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 813
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_3

    .line 814
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v2, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 821
    :cond_3
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v6}, Lcom/sonyericsson/settings/apn/TetherApnData;->isTetherDunValid()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v6}, Lcom/sonyericsson/settings/apn/TetherApnData;->getApn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/android/settings/ApnEditor;->mIsTetherApnEditable:Z

    if-nez v6, :cond_5

    .line 824
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 825
    if-eqz v0, :cond_4

    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 828
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 830
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 835
    :cond_5
    if-eqz p1, :cond_6

    iget-boolean v6, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v2, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v2, :cond_6

    .line 836
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 837
    iput-object v9, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_0

    .line 841
    :cond_6
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 845
    const-string v7, "name"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v2, :cond_7

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f0b0704

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const-string v0, "apn"

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v0, "proxy"

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const-string v0, "port"

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const-string v0, "mmsproxy"

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string v0, "mmsport"

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const-string v0, "user"

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const-string v0, "server"

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const-string v0, "password"

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string v0, "mmsc"

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 858
    if-eqz v0, :cond_8

    .line 859
    const-string v3, "authtype"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 862
    :cond_8
    const-string v0, "protocol"

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v0, "roaming_protocol"

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const-string v0, "type"

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    const-string v0, "mcc"

    invoke-virtual {v6, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    const-string v0, "mnc"

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const-string v0, "numeric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "multi_sim_data_call"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 882
    :goto_1
    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 883
    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/settings/ApnEditor;->mSubscription:I

    if-ne v1, v0, :cond_9

    .line 885
    const-string v0, "current"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 889
    :cond_9
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 890
    if-eqz v0, :cond_a

    .line 891
    const-string v1, "bearer"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 894
    :cond_a
    const-string v0, "mvno_type"

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const-string v0, "mvno_match_data"

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v6, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v1, v2

    .line 899
    goto/16 :goto_0

    .line 875
    :catch_0
    move-exception v0

    .line 877
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 878
    sget-object v3, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v7, "Exception Reading Multi Sim Data Subscription Value."

    invoke-static {v3, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    move v0, v1

    goto :goto_1
.end method

.method private validateAndSaveTetherApn(Z)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1005
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1006
    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 1047
    :goto_0
    return v1

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1012
    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0704

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v3, v0}, Lcom/sonyericsson/settings/apn/TetherApnData;->setName(Ljava/lang/String;)V

    .line 1014
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/settings/apn/TetherApnData;->setApn(Ljava/lang/String;)V

    .line 1015
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/settings/apn/TetherApnData;->setProxy(Ljava/lang/String;)V

    .line 1016
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/settings/apn/TetherApnData;->setPort(Ljava/lang/String;)V

    .line 1017
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/settings/apn/TetherApnData;->setMmsProxy(Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/settings/apn/TetherApnData;->setMmsPort(Ljava/lang/String;)V

    .line 1019
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/settings/apn/TetherApnData;->setUser(Ljava/lang/String;)V

    .line 1020
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/settings/apn/TetherApnData;->setServer(Ljava/lang/String;)V

    .line 1021
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/settings/apn/TetherApnData;->setPassword(Ljava/lang/String;)V

    .line 1022
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/settings/apn/TetherApnData;->setMmsc(Ljava/lang/String;)V

    .line 1024
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1025
    if-eqz v0, :cond_2

    .line 1026
    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sonyericsson/settings/apn/TetherApnData;->setAuthType(I)V

    .line 1028
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/settings/apn/TetherApnData;->setTypeArray(Ljava/lang/String;)V

    .line 1030
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/settings/apn/TetherApnData;->setMcc(Ljava/lang/String;)V

    .line 1031
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/settings/apn/TetherApnData;->setMnc(Ljava/lang/String;)V

    .line 1034
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/settings/apn/TetherApnData;->setProtocol(Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/settings/apn/TetherApnData;->setRoamingProtocol(Ljava/lang/String;)V

    .line 1036
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/settings/apn/TetherApnData;->setCarrierEnabled(Z)V

    .line 1038
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1039
    if-eqz v0, :cond_3

    .line 1040
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1042
    :goto_1
    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/settings/apn/TetherApnData;->setBearer(I)V

    .line 1044
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v0}, Lcom/sonyericsson/settings/apn/TetherApnData;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1045
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "tether_dun_apn"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move v1, v2

    .line 1047
    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 179
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    const v17, 0x7f050003

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 183
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0b0404

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 184
    const-string v17, "apn_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    .line 185
    const-string v17, "apn_apn"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    .line 186
    const-string v17, "apn_http_proxy"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    .line 187
    const-string v17, "apn_http_port"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    .line 188
    const-string v17, "apn_user"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    .line 189
    const-string v17, "apn_server"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    .line 190
    const-string v17, "apn_password"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    .line 191
    const-string v17, "apn_mms_proxy"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    .line 192
    const-string v17, "apn_mms_port"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    .line 193
    const-string v17, "apn_mmsc"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    .line 194
    const-string v17, "apn_mcc"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    .line 195
    const-string v17, "apn_mnc"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    .line 196
    const-string v17, "apn_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    .line 198
    const-string v17, "auth_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    const-string v17, "apn_protocol"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 204
    const-string v17, "apn_roaming_protocol"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 207
    const-string v17, "carrier_enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    .line 209
    const-string v17, "bearer"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 212
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const-string v18, "android.hardware.telephony.cdma"

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    .line 214
    .local v11, "isCdmaSupportedByDevice":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->isLteNetworkSupportedByDevice()Z

    move-result v12

    .line 216
    .local v12, "isLteSupportedByDevice":Z
    if-nez v11, :cond_3

    if-nez v12, :cond_3

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 230
    :cond_0
    :goto_0
    const-string v17, "mvno_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 232
    const-string v17, "mvno_match_data"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    .line 234
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    .line 236
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->setBearerEntries()V

    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 239
    .local v10, "intent":Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 241
    .local v5, "action":Ljava/lang/String;
    const-string v17, "subscription"

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/ApnEditor;->mSubscription:I

    .line 243
    sget-object v17, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ApnEditor onCreate received sub: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ApnEditor;->mSubscription:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    if-nez p1, :cond_5

    const/16 v17, 0x1

    :goto_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f090013

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->mIsTetherApnEditable:Z

    .line 248
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "tether_dun_required"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const/4 v13, 0x1

    .line 251
    .local v13, "isTetherDunRequired":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "tether_dun_apn"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, "apnDataString":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 254
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040019

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 258
    :cond_1
    new-instance v17, Lcom/sonyericsson/settings/apn/TetherApnData;

    move-object/from16 v0, v17

    invoke-direct {v0, v13, v6}, Lcom/sonyericsson/settings/apn/TetherApnData;-><init>(ZLjava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    .line 260
    const-string v17, "TetheringApn"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->mIsTetherApn:Z

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f070076

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 263
    .local v16, "numericList":[Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 264
    const-string v17, "gsm.sim.operator.numeric"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 266
    .local v15, "numeric":Ljava/lang/String;
    move-object/from16 v7, v16

    .local v7, "arr$":[Ljava/lang/String;
    array-length v14, v7

    .local v14, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_3
    if-ge v9, v14, :cond_2

    aget-object v8, v7, v9

    .line 267
    .local v8, "element":Ljava/lang/String;
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 268
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->mIsTetherApnEditable:Z

    .line 274
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v8    # "element":Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "numeric":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mIsTetherApn:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 275
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnEditor;->fillTetherUI()V

    .line 314
    :goto_4
    return-void

    .line 220
    .end local v5    # "action":Ljava/lang/String;
    .end local v6    # "apnDataString":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v13    # "isTetherDunRequired":Z
    .end local v16    # "numericList":[Ljava/lang/String;
    :cond_3
    if-nez v11, :cond_4

    .line 222
    const/16 v17, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->removeBearer(I)V

    .line 224
    :cond_4
    if-nez v12, :cond_0

    .line 226
    const/16 v17, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->removeBearer(I)V

    goto/16 :goto_0

    .line 244
    .restart local v5    # "action":Ljava/lang/String;
    .restart local v10    # "intent":Landroid/content/Intent;
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 248
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 266
    .restart local v6    # "apnDataString":Ljava/lang/String;
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v8    # "element":Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v13    # "isTetherDunRequired":Z
    .restart local v14    # "len$":I
    .restart local v15    # "numeric":Ljava/lang/String;
    .restart local v16    # "numericList":[Ljava/lang/String;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 279
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v8    # "element":Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "numeric":Ljava/lang/String;
    :cond_8
    const-string v17, "android.intent.action.EDIT"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 280
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 308
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/settings/ApnEditor;->sProjection:[Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 311
    const-string v17, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 313
    const-string v17, "operator"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/ApnEditor;->fillUi(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 281
    :cond_9
    const-string v17, "android.intent.action.INSERT"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 282
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    const-string v17, "pos"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_b

    .line 283
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 288
    :goto_6
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ApnEditor;->mNewApn:Z

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    if-nez v17, :cond_c

    .line 293
    sget-object v17, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed to insert new telephony provider into "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4

    .line 285
    :cond_b
    sget-object v17, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v18, "pos"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v17 .. v19}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_6

    .line 301
    :cond_c
    const/16 v17, -0x1

    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_5

    .line 304
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 928
    if-nez p1, :cond_0

    .line 929
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 931
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0423

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 938
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 708
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 709
    iget-boolean v2, p0, Lcom/android/settings/ApnEditor;->mIsTetherApn:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/ApnEditor;->mIsTetherApnEditable:Z

    if-nez v2, :cond_1

    .line 726
    :cond_0
    :goto_0
    return v0

    .line 713
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->isCarrierLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 718
    iget-boolean v2, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/ApnEditor;->mIsTetherApn:Z

    if-nez v2, :cond_2

    .line 719
    const v2, 0x7f0b041f

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02005c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 722
    :cond_2
    const/4 v2, 0x2

    const v3, 0x7f0b0421

    invoke-interface {p1, v0, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x108004e

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 724
    const/4 v2, 0x3

    const v3, 0x7f0b0422

    invoke-interface {p1, v0, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x1080038

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v1

    .line 726
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 752
    packed-switch p1, :pswitch_data_0

    .line 760
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 754
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->isCarrierLocked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 757
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 752
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 731
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 747
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 733
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->deleteApn()V

    goto :goto_0

    .line 736
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 737
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 741
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_1

    .line 742
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 744
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 731
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 344
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 345
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 662
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 663
    .local v3, "key":Ljava/lang/String;
    const-string v7, "auth_type"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 665
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 666
    .local v2, "index":I
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 668
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f070029

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 669
    .local v6, "values":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v9, v6, v2

    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    .end local v2    # "index":I
    .end local v6    # "values":[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v7, 0x1

    :goto_1
    return v7

    .line 670
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    move v7, v8

    .line 671
    goto :goto_1

    .line 673
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string v7, "apn_protocol"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, p2

    .line 674
    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v9}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v5

    .line 675
    .local v5, "protocol":Ljava/lang/String;
    if-nez v5, :cond_2

    move v7, v8

    .line 676
    goto :goto_1

    .line 678
    :cond_2
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 679
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 680
    .end local v5    # "protocol":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    const-string v7, "apn_roaming_protocol"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, p2

    .line 681
    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v9}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v5

    .line 682
    .restart local v5    # "protocol":Ljava/lang/String;
    if-nez v5, :cond_4

    move v7, v8

    .line 683
    goto :goto_1

    .line 685
    :cond_4
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 686
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 687
    .end local v5    # "protocol":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    const-string v7, "bearer"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v7, p2

    .line 688
    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, "bearer":Ljava/lang/String;
    if-nez v0, :cond_6

    move v7, v8

    .line 690
    goto :goto_1

    .line 692
    :cond_6
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 693
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 694
    .end local v0    # "bearer":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_7
    const-string v7, "mvno_type"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, p2

    .line 695
    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 696
    .local v4, "mvno":Ljava/lang/String;
    if-nez v4, :cond_8

    move v7, v8

    .line 697
    goto :goto_1

    .line 699
    :cond_8
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 700
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 943
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 945
    if-nez p1, :cond_0

    .line 946
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 948
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 949
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 952
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 318
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 319
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 329
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 330
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 331
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 332
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v1, Lcom/android/settings/ApnEditor;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3, v3}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 336
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 765
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 766
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mIsTetherApn:Z

    if-nez v0, :cond_0

    .line 767
    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 769
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 988
    invoke-virtual {p0, p2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 989
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 990
    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 991
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 996
    :cond_0
    :goto_0
    return-void

    .line 993
    :cond_1
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
