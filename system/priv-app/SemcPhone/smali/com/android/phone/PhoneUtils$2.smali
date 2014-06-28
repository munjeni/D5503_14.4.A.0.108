.class final Lcom/android/phone/PhoneUtils$2;
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
.field final synthetic val$mmiCode:Lcom/android/internal/telephony/MmiCode;

.field final synthetic val$newDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/MmiCode;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1246
    iput-object p1, p0, Lcom/android/phone/PhoneUtils$2;->val$mmiCode:Lcom/android/internal/telephony/MmiCode;

    iput-object p2, p0, Lcom/android/phone/PhoneUtils$2;->val$newDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$2;->val$mmiCode:Lcom/android/internal/telephony/MmiCode;

    invoke-interface {v0}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$2;->val$mmiCode:Lcom/android/internal/telephony/MmiCode;

    invoke-interface {v0}, Lcom/android/internal/telephony/MmiCode;->cancel()V

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$2;->val$newDialog:Landroid/app/AlertDialog;

    # invokes: Lcom/android/phone/PhoneUtils;->dismissUSSDUserInputDialog(Landroid/app/Dialog;)V
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$400(Landroid/app/Dialog;)V

    .line 1252
    return-void
.end method
