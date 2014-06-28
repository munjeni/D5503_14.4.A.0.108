.class final Lcom/android/phone/PhoneUtils$3;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$inputText:Landroid/widget/EditText;

.field final synthetic val$newDialog:Landroid/app/AlertDialog;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Phone;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1257
    iput-object p1, p0, Lcom/android/phone/PhoneUtils$3;->val$phone:Lcom/android/internal/telephony/Phone;

    iput-object p2, p0, Lcom/android/phone/PhoneUtils$3;->val$inputText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/phone/PhoneUtils$3;->val$newDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "id"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1259
    const/4 v1, 0x6

    if-ne p2, v1, :cond_1

    .line 1260
    iget-object v1, p0, Lcom/android/phone/PhoneUtils$3;->val$phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/PhoneUtils$3;->val$inputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    .line 1261
    iget-object v1, p0, Lcom/android/phone/PhoneUtils$3;->val$newDialog:Landroid/app/AlertDialog;

    # invokes: Lcom/android/phone/PhoneUtils;->dismissUSSDUserInputDialog(Landroid/app/Dialog;)V
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->access$400(Landroid/app/Dialog;)V

    .line 1274
    :cond_0
    :goto_0
    return v0

    .line 1265
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1274
    const/4 v0, 0x0

    goto :goto_0

    .line 1268
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1269
    iget-object v1, p0, Lcom/android/phone/PhoneUtils$3;->val$phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/PhoneUtils$3;->val$inputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    .line 1270
    iget-object v1, p0, Lcom/android/phone/PhoneUtils$3;->val$newDialog:Landroid/app/AlertDialog;

    # invokes: Lcom/android/phone/PhoneUtils;->dismissUSSDUserInputDialog(Landroid/app/Dialog;)V
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->access$400(Landroid/app/Dialog;)V

    goto :goto_0

    .line 1265
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
