.class Landroid/inputmethodservice/InputMethodService$3;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodService;->registerFocusChangeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    .prologue
    .line 1574
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$3;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1577
    const-string v1, "com.sonymobile.intent.extra.SOFTKEYBOARD_FOCUS_CHANGE"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1584
    .local v0, "hasFocus":Z
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$3;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v1, v1, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v1, :cond_0

    .line 1585
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$3;->this$0:Landroid/inputmethodservice/InputMethodService;

    # invokes: Landroid/inputmethodservice/InputMethodService;->sendFocusBroadcast(Z)V
    invoke-static {v1, v0}, Landroid/inputmethodservice/InputMethodService;->access$200(Landroid/inputmethodservice/InputMethodService;Z)V

    .line 1587
    :cond_0
    return-void
.end method
