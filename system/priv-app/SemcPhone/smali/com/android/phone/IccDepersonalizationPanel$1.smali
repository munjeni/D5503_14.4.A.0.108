.class Lcom/android/phone/IccDepersonalizationPanel$1;
.super Ljava/lang/Object;
.source "IccDepersonalizationPanel.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IccDepersonalizationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IccDepersonalizationPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/IccDepersonalizationPanel;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/phone/IccDepersonalizationPanel$1;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "buffer"    # Landroid/text/Editable;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$1;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel$1;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    # getter for: Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/IccDepersonalizationPanel;->access$000(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 196
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "olen"    # I
    .param p4, "nlen"    # I

    .prologue
    .line 186
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "olen"    # I
    .param p4, "nlen"    # I

    .prologue
    .line 189
    return-void
.end method
