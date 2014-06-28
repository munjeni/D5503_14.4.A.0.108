.class Lcom/android/phone/SomcDtmfDialPad$3;
.super Ljava/lang/Object;
.source "SomcDtmfDialPad.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcDtmfDialPad;->initDialpad(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcDtmfDialPad;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcDtmfDialPad;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/phone/SomcDtmfDialPad$3;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 198
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 190
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad$3;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    # invokes: Lcom/android/phone/SomcDtmfDialPad;->checkNumber()V
    invoke-static {v0}, Lcom/android/phone/SomcDtmfDialPad;->access$100(Lcom/android/phone/SomcDtmfDialPad;)V

    .line 195
    return-void
.end method
