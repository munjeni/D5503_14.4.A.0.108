.class public final Lcom/sonyericsson/cameracommon/launcher/ApplicationLauncher;
.super Ljava/lang/Object;
.source "ApplicationLauncher.java"


# static fields
.field private static final ACTION_CROP:Ljava/lang/String; = "com.android.camera.action.CROP"

.field private static final ACTION_FACE_REGISTRATION_UI:Ljava/lang/String; = "com.sonymobile.android.camera.intent.action.SHOW_FACE_REGISTRATION_UI"

.field private static final CROP_RETURN_DATA_REQUIRE:Ljava/lang/String; = "return-data"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/sonyericsson/cameracommon/launcher/ApplicationLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/launcher/ApplicationLauncher;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static launchAlbum(Landroid/app/Activity;Ljava/lang/String;Landroid/net/Uri;II)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mimetype"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "bucketId"    # I
    .param p4, "somcType"    # I

    .prologue
    .line 101
    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    const/4 v0, 0x1

    .line 103
    .local v0, "isBurst":Z
    :goto_0
    invoke-static {p0, p2, p1, p3, v0}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZ)V

    .line 104
    return-void

    .line 101
    .end local v0    # "isBurst":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static launchLocationSourceSettings(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 138
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    .line 144
    .local v2, "isActivityAvailable":Z
    if-eqz v2, :cond_0

    .line 146
    const/4 v3, 0x6

    :try_start_0
    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v3, Lcom/sonyericsson/cameracommon/launcher/ApplicationLauncher;->TAG:Ljava/lang/String;

    const-string v4, "launchLocationSourceSettings: failed."

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static launchOneShotCrop(Landroid/app/Activity;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extraOutput"    # Landroid/net/Uri;
    .param p3, "cropValue"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 108
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v1, "extras":Landroid/os/Bundle;
    const-string v5, "circle"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 110
    const-string v5, "circleCrop"

    const-string v6, "true"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    if-eqz p2, :cond_2

    .line 113
    const-string v5, "output"

    invoke-virtual {v1, v5, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 118
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.CROP"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 120
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    .line 125
    .local v3, "isActivityAvailable":Z
    if-eqz v3, :cond_1

    .line 127
    const/4 v5, 0x7

    :try_start_0
    invoke-virtual {p0, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_1
    :goto_1
    return v4

    .line 115
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "isActivityAvailable":Z
    :cond_2
    const-string v5, "return-data"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 129
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "isActivityAvailable":Z
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/sonyericsson/cameracommon/launcher/ApplicationLauncher;->TAG:Ljava/lang/String;

    const-string v5, "launchOneShotCrop failed."

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static launchPhotoAnalyzer(Landroid/app/Activity;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 156
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sonymobile.android.camera.intent.action.SHOW_FACE_REGISTRATION_UI"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sonyericsson/cameracommon/R$drawable;->cam_application_icn_common:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 162
    .local v1, "icon":Landroid/graphics/drawable/BitmapDrawable;
    const-string v4, "extra_app_icon"

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    .line 167
    .local v3, "isActivityAvailable":Z
    if-eqz v3, :cond_0

    .line 169
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x800

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 170
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 171
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/sonyericsson/cameracommon/launcher/ApplicationLauncher;->TAG:Ljava/lang/String;

    const-string v5, "launchPhotoAnalyzer: failed."

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static playback(Landroid/app/Activity;Ljava/lang/String;Landroid/net/Uri;II)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mimetype"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "bucketId"    # I
    .param p4, "somcType"    # I

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-class v2, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 73
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v2, "android.intent.extra.finishOnCompletion"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    const-string v2, "burst_bucketId"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    const-string v2, "somc_type"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 81
    .local v1, "isActivityAvailable":Z
    if-eqz v1, :cond_0

    .line 82
    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 86
    :cond_0
    return-void
.end method

.method public static startResolvedActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 182
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 183
    .local v3, "resolvedIntent":Landroid/content/Intent;
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 184
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 188
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    .line 191
    .local v2, "isActivityAvailable":Z
    if-eqz v2, :cond_0

    .line 193
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    .line 194
    :catch_0
    move-exception v1

    .line 195
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/sonyericsson/cameracommon/launcher/ApplicationLauncher;->TAG:Ljava/lang/String;

    const-string v5, "startResolvedActivity failed."

    invoke-static {v4, v5, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    const/4 v4, 0x0

    goto :goto_0
.end method
