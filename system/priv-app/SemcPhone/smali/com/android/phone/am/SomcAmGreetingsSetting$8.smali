.class Lcom/android/phone/am/SomcAmGreetingsSetting$8;
.super Ljava/lang/Object;
.source "SomcAmGreetingsSetting.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/am/SomcAmGreetingsSetting;->getRenameDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/am/SomcAmGreetingsSetting;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$8;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 460
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 447
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v1, -0x1

    .line 451
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$8;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    # getter for: Lcom/android/phone/am/SomcAmGreetingsSetting;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmGreetingsSetting;->access$700(Lcom/android/phone/am/SomcAmGreetingsSetting;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 456
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingsSetting$8;->this$0:Lcom/android/phone/am/SomcAmGreetingsSetting;

    # getter for: Lcom/android/phone/am/SomcAmGreetingsSetting;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmGreetingsSetting;->access$700(Lcom/android/phone/am/SomcAmGreetingsSetting;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
