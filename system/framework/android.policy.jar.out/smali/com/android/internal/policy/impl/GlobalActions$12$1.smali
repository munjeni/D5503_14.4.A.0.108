.class Lcom/android/internal/policy/impl/GlobalActions$12$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$12;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/GlobalActions$12;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$12;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$12$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createRebootRecoveryFile()V
    .locals 3

    .prologue
    .line 62
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/cache/recovery/boot"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$12$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$12;->mRebootAction:Ljava/lang/String;

    const-string v1, "recovery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions$12$1;->createRebootRecoveryFile()V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$12$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$12;->mRebootAction:Ljava/lang/String;

    const-string v1, "safemode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$12$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$12;->mRebootAction:Ljava/lang/String;

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$12$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$12;->mRebootAction:Ljava/lang/String;

    const-string v1, "bootloader"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$12$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$12;->mRebootAction:Ljava/lang/String;

    const-string v1, "oem-53"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$12$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$12;->mRebootAction:Ljava/lang/String;

    const-string v1, "enl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$12$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$12;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$12$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$12;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$12;->mRebootAction:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 82
    :goto_1
    return-void

    .line 246
    :cond_1
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$12$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$12;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$600(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    .line 247
    goto :goto_1

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$12$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$12;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$12$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$12;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$12;->mRebootAction:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$12$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$12;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$12$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$12;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$12;->mRebootAction:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$12$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$12;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$12$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$12;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$12;->mRebootAction:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$12$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$12;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$12$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$12;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$12;->mRebootAction:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1
.end method
