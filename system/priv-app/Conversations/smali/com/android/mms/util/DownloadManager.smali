.class public Lcom/android/mms/util/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/DownloadManager$DownloadManagerHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFERRED_MASK:I = 0x4

.field private static final LOCAL_LOGV:Z = false

.field public static final STATE_DOWNLOADING:I = 0x81

.field public static final STATE_PERMANENT_FAILURE:I = 0x87

.field public static final STATE_TRANSIENT_FAILURE:I = 0x82

.field public static final STATE_UNSTARTED:I = 0x80

.field private static final TAG:Ljava/lang/String; = "DownloadManager"


# instance fields
.field private mAutoDownload:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private final mPreferencesChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mRoamingStateListener:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/android/mms/util/DownloadManager$1;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DownloadManager$1;-><init>(Lcom/android/mms/util/DownloadManager;)V

    iput-object v0, p0, Lcom/android/mms/util/DownloadManager;->mPreferencesChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 92
    new-instance v0, Lcom/android/mms/util/DownloadManager$2;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DownloadManager$2;-><init>(Lcom/android/mms/util/DownloadManager;)V

    iput-object v0, p0, Lcom/android/mms/util/DownloadManager;->mRoamingStateListener:Landroid/content/BroadcastReceiver;

    .line 126
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 127
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/util/DownloadManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/mms/util/DownloadManager$1;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/mms/util/DownloadManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/DownloadManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/util/DownloadManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/util/DownloadManager;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/util/DownloadManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/util/DownloadManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/util/DownloadManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static getAutoDownloadState(Landroid/content/SharedPreferences;)Z
    .locals 4
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 175
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 177
    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    if-eqz v1, :cond_1

    .line 178
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 179
    .local v0, "isRoaming":Z
    invoke-static {p0, v0}, Lcom/android/mms/util/DownloadManager;->getAutoDownloadState(Landroid/content/SharedPreferences;Z)Z

    move-result v2

    .line 181
    .end local v0    # "isRoaming":Z
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/mms/util/DownloadManager;->getAutoDownloadState(Landroid/content/SharedPreferences;Z)Z

    move-result v2

    goto :goto_0
.end method

.method static getAutoDownloadState(Landroid/content/SharedPreferences;Z)Z
    .locals 5
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "roaming"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 186
    const-string v4, "pref_key_mms_auto_retrieval"

    invoke-interface {p0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 193
    .local v1, "autoDownload":Z
    if-eqz v1, :cond_1

    .line 194
    const-string v4, "pref_key_mms_retrieval_during_roaming"

    invoke-interface {p0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 201
    .local v0, "alwaysAuto":Z
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    .line 205
    .end local v0    # "alwaysAuto":Z
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/mms/util/DownloadManager;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/android/mms/util/DownloadManager$DownloadManagerHolder;->INSTANCE:Lcom/android/mms/util/DownloadManager;

    return-object v0
.end method


# virtual methods
.method public getState(Landroid/net/Uri;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 238
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "st"

    aput-object v2, v3, v5

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 241
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 243
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    and-int/lit8 v0, v0, -0x5

    .line 247
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 250
    :goto_0
    return v0

    .line 247
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_1
    const/16 v0, 0x80

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 139
    const-string v0, "DownloadManager"

    const-string v1, "Already initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iput-object p1, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/DownloadManager;->mHandler:Landroid/os/Handler;

    .line 145
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 146
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mPreferencesChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 148
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mRoamingStateListener:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/android/mms/util/DownloadManager;->getAutoDownloadState(Landroid/content/SharedPreferences;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method public isAuto()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 169
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    goto :goto_0
.end method

.method public markState(Landroid/net/Uri;I)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "state"    # I

    .prologue
    const/4 v4, 0x0

    .line 210
    const/16 v0, 0x87

    if-ne p2, v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 219
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "st"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 222
    return-void

    .line 212
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_1
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    or-int/lit8 p2, p2, 0x4

    goto :goto_0
.end method

.method public showToastToUser(Ljava/lang/String;I)V
    .locals 2
    .param p1, "toast"    # Ljava/lang/String;
    .param p2, "lengthType"    # I

    .prologue
    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    if-nez p2, :cond_1

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/util/DownloadManager$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/util/DownloadManager$3;-><init>(Lcom/android/mms/util/DownloadManager;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    :cond_1
    return-void
.end method
