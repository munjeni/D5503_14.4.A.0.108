.class final Lcom/android/server/pm/RuntimeSkinManager$1;
.super Ljava/lang/Object;
.source "RuntimeSkinManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/RuntimeSkinManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 92
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 93
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 95
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 96
    .local v1, "cfg":Landroid/content/res/Configuration;
    const/4 v3, 0x1

    iget v4, v1, Landroid/content/res/Configuration;->skinPackageSeq:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Landroid/content/res/Configuration;->skinPackageSeq:I

    .line 97
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v1    # "cfg":Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v2

    .line 103
    .local v2, "re":Landroid/os/RemoteException;
    const-string v3, "RuntimeSkin"

    const-string v4, "Error updating runtime skin sequence #"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
