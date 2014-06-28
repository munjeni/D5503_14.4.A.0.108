.class Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnProcessHandler"
.end annotation


# instance fields
.field private mRestoreApnUiHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/settings/ApnSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "restoreApnUiHandler"    # Landroid/os/Handler;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    .line 425
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 426
    iput-object p3, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    .line 427
    return-void
.end method

.method private restoreTetherApn()V
    .locals 3

    .prologue
    .line 451
    iget-object v1, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "tetherDunApn":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 455
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tether_dun_apn"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 431
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 447
    :goto_0
    return-void

    .line 433
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 434
    .local v2, "resolver":Landroid/content/ContentResolver;
    # getter for: Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/settings/ApnSettings;->access$500()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 435
    invoke-direct {p0}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->restoreTetherApn()V

    .line 437
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sonyericsson.action.APN_RESET_TO_DEFAULT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v1, "resetIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 440
    .local v0, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 441
    iget-object v3, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v3, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 443
    :cond_0
    iget-object v3, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 431
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
