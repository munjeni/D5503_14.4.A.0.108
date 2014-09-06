.class public final Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;
.super Landroid/app/Activity;
.source "AlbumLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$1;,
        Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;
    }
.end annotation


# static fields
.field public static final EXTRA_BURST_BUCKETID:Ljava/lang/String; = "burst_bucketId"

.field public static final EXTRA_PLAYBACK:Ljava/lang/String; = "android.intent.extra.finishOnCompletion"

.field private static final EXTRA_PLAYBACK_DEFAULT:Z = false

.field public static final EXTRA_SOMCTYPE:Ljava/lang/String; = "somc_type"

.field private static final PLAYEER_PACKAGE_NAME:Ljava/lang/String; = "com.sonyericsson.android.camera3d"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    return-void
.end method

.method public static launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZ)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "bucketId"    # I
    .param p4, "isBurst"    # Z

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.REVIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-static {p2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->fromText(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->MPO:Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    if-ne v2, v3, :cond_2

    .line 153
    sget-object v2, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->PHOTO:Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    :goto_0
    if-eqz p4, :cond_0

    .line 160
    const-string v2, "burst_bucketId"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 166
    .local v1, "isActivityAvailable":Z
    if-eqz v1, :cond_1

    .line 167
    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 169
    :cond_1
    return-void

    .line 155
    .end local v1    # "isActivityAvailable":Z
    :cond_2
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static launchPlayer(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimetype"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v2, "android.intent.extra.finishOnCompletion"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 200
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 205
    .local v1, "isActivityAvailable":Z
    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 209
    :cond_0
    return-void
.end method

.method private launchPlayer(Landroid/net/Uri;Ljava/lang/String;IZ)Z
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "bucketId"    # I
    .param p4, "isBurst"    # Z

    .prologue
    const/4 v0, 0x0

    .line 175
    sget-object v1, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$1;->$SwitchMap$com$sonyericsson$cameracommon$launcher$AlbumLauncher$MimeType:[I

    invoke-static {p2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->fromText(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 187
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZ)V

    .line 188
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 179
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchPlayer(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->playMpo(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private playMpo(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimetype"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 216
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 217
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.sonyericsson.android.camera3d"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v2, "android.intent.extra.finishOnCompletion"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 225
    .local v1, "isActivityAvailable":Z
    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 228
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 124
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 130
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "mimetype":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 141
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 142
    return-void

    .line 134
    :pswitch_0
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 120
    return-void
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 84
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "mimetype":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "android.intent.extra.finishOnCompletion"

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 86
    .local v4, "playback":Z
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "somc_type"

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 89
    .local v5, "somcType":I
    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    const/4 v2, 0x1

    .line 91
    .local v2, "isBurst":Z
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "burst_bucketId"

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 103
    .local v0, "bucketId":I
    if-eqz v4, :cond_2

    .line 104
    :try_start_0
    invoke-direct {p0, v6, v3, v0, v2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchPlayer(Landroid/net/Uri;Ljava/lang/String;IZ)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 114
    :cond_1
    :goto_0
    return-void

    .line 108
    :cond_2
    invoke-static {p0, v6, v3, v0, v2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZ)V

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
