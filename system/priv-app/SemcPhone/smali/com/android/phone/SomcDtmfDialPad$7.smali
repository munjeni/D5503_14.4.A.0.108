.class Lcom/android/phone/SomcDtmfDialPad$7;
.super Ljava/lang/Object;
.source "SomcDtmfDialPad.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcDtmfDialPad;->initButtonForTablet()V
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
    .line 573
    iput-object p1, p0, Lcom/android/phone/SomcDtmfDialPad$7;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad$7;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/phone/SomcDtmfDialPad$7;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v2}, Lcom/android/phone/SomcDtmfDialPad;->getDigits()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/SomcDtmfDialPad;->fireAction(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/SomcDtmfDialPad;->access$1100(Lcom/android/phone/SomcDtmfDialPad;ILjava/lang/Object;)V

    .line 577
    return-void
.end method
