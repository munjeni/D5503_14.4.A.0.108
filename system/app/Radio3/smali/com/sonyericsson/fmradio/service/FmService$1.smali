.class Lcom/sonyericsson/fmradio/service/FmService$1;
.super Landroid/content/BroadcastReceiver;
.source "FmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/FmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/service/FmService;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/service/FmService;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/FmService$1;->this$0:Lcom/sonyericsson/fmradio/service/FmService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 360
    const-string v0, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/FmService$1;->this$0:Lcom/sonyericsson/fmradio/service/FmService;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/fmradio/service/FmService;->mUserBackground:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/fmradio/service/FmService;->access$002(Lcom/sonyericsson/fmradio/service/FmService;Z)Z

    .line 363
    :cond_0
    return-void
.end method
