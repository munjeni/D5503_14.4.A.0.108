.class final Lcom/android/phone/PhoneUtils$1;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Lcom/android/phone/PhoneGlobals;

.field final synthetic val$inputText:Landroid/widget/EditText;

.field final synthetic val$mmiCode:Lcom/android/internal/telephony/MmiCode;

.field final synthetic val$newDialog:Landroid/app/AlertDialog;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/MmiCode;Lcom/android/internal/telephony/Phone;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/android/phone/PhoneUtils$1;->val$inputText:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/android/phone/PhoneUtils$1;->val$app:Lcom/android/phone/PhoneGlobals;

    iput-object p3, p0, Lcom/android/phone/PhoneUtils$1;->val$mmiCode:Lcom/android/internal/telephony/MmiCode;

    iput-object p4, p0, Lcom/android/phone/PhoneUtils$1;->val$phone:Lcom/android/internal/telephony/Phone;

    iput-object p5, p0, Lcom/android/phone/PhoneUtils$1;->val$newDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 1229
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$1;->val$inputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneUtils$1;->val$inputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    const/16 v1, 0xa0

    if-le v0, v1, :cond_2

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$1;->val$app:Lcom/android/phone/PhoneGlobals;

    const v1, 0x7f0b01e6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1235
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$1;->val$mmiCode:Lcom/android/internal/telephony/MmiCode;

    invoke-interface {v0}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1236
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$1;->val$mmiCode:Lcom/android/internal/telephony/MmiCode;

    invoke-interface {v0}, Lcom/android/internal/telephony/MmiCode;->cancel()V

    .line 1241
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$1;->val$newDialog:Landroid/app/AlertDialog;

    # invokes: Lcom/android/phone/PhoneUtils;->dismissUSSDUserInputDialog(Landroid/app/Dialog;)V
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$400(Landroid/app/Dialog;)V

    .line 1242
    return-void

    .line 1239
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$1;->val$phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneUtils$1;->val$inputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    goto :goto_0
.end method
