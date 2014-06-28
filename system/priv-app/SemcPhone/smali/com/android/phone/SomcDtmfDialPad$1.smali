.class Lcom/android/phone/SomcDtmfDialPad$1;
.super Ljava/lang/Object;
.source "SomcDtmfDialPad.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcDtmfDialPad;
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
    .line 120
    iput-object p1, p0, Lcom/android/phone/SomcDtmfDialPad$1;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad$1;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/phone/SomcDtmfDialPad;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
