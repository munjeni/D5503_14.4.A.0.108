.class Landroid/view/inputmethod/InputMethodManager$AsyncSendBroadcast;
.super Landroid/os/AsyncTask;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncSendBroadcast"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mHasFocus:Z

.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/content/Context;Z)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "hasFocus"    # Z

    .prologue
    .line 1266
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$AsyncSendBroadcast;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1267
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager$AsyncSendBroadcast;->mContext:Landroid/content/Context;

    .line 1268
    iput-boolean p3, p0, Landroid/view/inputmethod/InputMethodManager$AsyncSendBroadcast;->mHasFocus:Z

    .line 1269
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1262
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager$AsyncSendBroadcast;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 1273
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonymobile.intent.action.ACTION_SOFTKEYBOARD_FOCUS_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1274
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sonymobile.intent.extra.SOFTKEYBOARD_FOCUS_CHANGE"

    iget-boolean v3, p0, Landroid/view/inputmethod/InputMethodManager$AsyncSendBroadcast;->mHasFocus:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1276
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$AsyncSendBroadcast;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1285
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 1277
    :catch_0
    move-exception v0

    .line 1281
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "InputMethodManager"

    const-string v3, "Focus change intent send failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
