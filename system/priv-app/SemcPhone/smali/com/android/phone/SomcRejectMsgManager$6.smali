.class Lcom/android/phone/SomcRejectMsgManager$6;
.super Ljava/lang/Object;
.source "SomcRejectMsgManager.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcRejectMsgManager;->showCustomMessageDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcRejectMsgManager;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcRejectMsgManager;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/phone/SomcRejectMsgManager$6;->this$0:Lcom/android/phone/SomcRejectMsgManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 423
    iget-object v1, p0, Lcom/android/phone/SomcRejectMsgManager$6;->this$0:Lcom/android/phone/SomcRejectMsgManager;

    # getter for: Lcom/android/phone/SomcRejectMsgManager;->mCustomResponseDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/phone/SomcRejectMsgManager;->access$300(Lcom/android/phone/SomcRejectMsgManager;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 425
    .local v0, "sendButton":Landroid/widget/Button;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 426
    return-void

    .line 425
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 417
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 420
    return-void
.end method
