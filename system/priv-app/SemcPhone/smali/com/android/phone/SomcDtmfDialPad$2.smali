.class Lcom/android/phone/SomcDtmfDialPad$2;
.super Ljava/lang/Object;
.source "SomcDtmfDialPad.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 128
    iput-object p1, p0, Lcom/android/phone/SomcDtmfDialPad$2;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad$2;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    # invokes: Lcom/android/phone/SomcDtmfDialPad;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1, p2}, Lcom/android/phone/SomcDtmfDialPad;->access$000(Lcom/android/phone/SomcDtmfDialPad;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
