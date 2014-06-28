.class Lcom/sonyericsson/conversations/ui/persist/SaveDraftService$1;
.super Landroid/os/Handler;
.source "SaveDraftService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/persist/SaveDraftService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/persist/SaveDraftService;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/persist/SaveDraftService;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftService$1;->this$0:Lcom/sonyericsson/conversations/ui/persist/SaveDraftService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 30
    const/4 v1, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_1

    .line 33
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftService$1;->this$0:Lcom/sonyericsson/conversations/ui/persist/SaveDraftService;

    const v2, 0x7f070070

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 37
    .local v0, "toast":Landroid/widget/Toast;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSaveDraftDialogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 41
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 43
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_1
    return-void
.end method
