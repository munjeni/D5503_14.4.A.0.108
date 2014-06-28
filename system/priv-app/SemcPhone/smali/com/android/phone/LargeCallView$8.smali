.class Lcom/android/phone/LargeCallView$8;
.super Ljava/lang/Object;
.source "LargeCallView.java"

# interfaces
.implements Lcom/android/phone/SomcSlidingDrawer$OnDrawerCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LargeCallView;->initMsgListComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LargeCallView;


# direct methods
.method constructor <init>(Lcom/android/phone/LargeCallView;)V
    .locals 0

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/phone/LargeCallView$8;->this$0:Lcom/android/phone/LargeCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 2

    .prologue
    .line 656
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LargeCallView$8;->this$0:Lcom/android/phone/LargeCallView;

    const-string v1, "reject messages list is closed"

    # invokes: Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/LargeCallView;->access$500(Lcom/android/phone/LargeCallView;Ljava/lang/String;)V

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView$8;->this$0:Lcom/android/phone/LargeCallView;

    # invokes: Lcom/android/phone/LargeCallView;->triggerDrawerStateChanged()V
    invoke-static {v0}, Lcom/android/phone/LargeCallView;->access$400(Lcom/android/phone/LargeCallView;)V

    .line 658
    return-void
.end method
