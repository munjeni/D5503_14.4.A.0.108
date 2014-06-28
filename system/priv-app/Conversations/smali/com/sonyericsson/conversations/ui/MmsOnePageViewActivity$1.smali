.class Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$1;
.super Landroid/os/Handler;
.source "MmsOnePageViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 108
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    # invokes: Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->showProgressDlg()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->access$000(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)V

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$1;->this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    # invokes: Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->dismissProgressDlg()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->access$100(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
