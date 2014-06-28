.class public Lcom/sonyericsson/conversations/ui/IMETextInputInfoBoxHandler;
.super Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;
.source "IMETextInputInfoBoxHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IMETextInputInfoBoxHandler"

.field private static final TEXT_INPUT_COMMAND_SET_INFO:Ljava/lang/String; = "com.sonyericsson.android.textinput.SetInfo"


# instance fields
.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/Composer;Landroid/widget/TextView;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;
    .param p3, "textInput"    # Landroid/widget/TextView;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/Composer;Landroid/widget/TextView;Landroid/os/Handler;)V

    .line 40
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/IMETextInputInfoBoxHandler;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 42
    return-void
.end method


# virtual methods
.method protected forceRefreshInfoBoxes()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/IMETextInputInfoBoxHandler;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method protected updateTextInputInfoBoxes(Z)V
    .locals 6
    .param p1, "initialUpdate"    # Z

    .prologue
    .line 49
    const/4 p1, 0x1

    .line 51
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->updateTextInputCommandArgs()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "com.sonyericsson.android.textinput.SetInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, "primary_info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInputCommandArgs:Landroid/os/Bundle;

    const-string v3, "primary_info"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v2, "com.sonyericsson.android.textinput.SetInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v2, "secondary_info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInputCommandArgs:Landroid/os/Bundle;

    const-string v3, "secondary_info"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "options":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 75
    .end local v0    # "options":Ljava/lang/String;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/IMETextInputInfoBoxHandler;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    const-string v4, "com.sonyericsson.android.textinput.SetInfo"

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInputCommandArgs:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 81
    :cond_1
    return-void
.end method
