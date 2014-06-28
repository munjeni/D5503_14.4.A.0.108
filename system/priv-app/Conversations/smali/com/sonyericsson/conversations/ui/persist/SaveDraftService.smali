.class public Lcom/sonyericsson/conversations/ui/persist/SaveDraftService;
.super Landroid/app/IntentService;
.source "SaveDraftService.java"


# static fields
.field private static final MSG_DISPLAY_TOAST_SAVED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SaveDraftService"


# instance fields
.field public mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "SaveDraftService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftService$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/persist/SaveDraftService$1;-><init>(Lcom/sonyericsson/conversations/ui/persist/SaveDraftService;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftService;->mHandler:Landroid/os/Handler;

    .line 51
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 87
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    if-eqz p1, :cond_2

    .line 56
    const/4 v2, 0x0

    .line 57
    .local v2, "saved":Z
    const/4 v1, 0x0

    .line 58
    .local v1, "popupToast":Z
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;

    move-result-object v0

    .line 59
    .local v0, "manager":Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->pollSaveDraftTask()Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;

    move-result-object v3

    .line 60
    .local v3, "task":Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;
    :goto_0
    if-eqz v3, :cond_1

    .line 61
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->run()V

    .line 62
    if-nez v1, :cond_0

    .line 63
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->needToPopupToast()Z

    move-result v1

    .line 66
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->pollSaveDraftTask()Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;

    move-result-object v3

    .line 67
    const/4 v2, 0x1

    goto :goto_0

    .line 71
    :cond_1
    if-eqz v2, :cond_2

    .line 73
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->persistDone()V

    .line 74
    if-eqz v1, :cond_2

    .line 76
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 80
    .end local v0    # "manager":Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;
    .end local v1    # "popupToast":Z
    .end local v2    # "saved":Z
    .end local v3    # "task":Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;
    :cond_2
    return-void
.end method
