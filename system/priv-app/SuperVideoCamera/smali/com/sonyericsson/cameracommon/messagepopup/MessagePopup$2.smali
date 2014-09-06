.class Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$2;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->lazyAbort()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V
    .locals 0

    .prologue
    .line 1420
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$2;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$2;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    # getter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mTerminateListener:Lcom/sonyericsson/cameracommon/activity/TerminateListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$1000(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Lcom/sonyericsson/cameracommon/activity/TerminateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/activity/TerminateListener;->terminateApplication()V

    .line 1425
    return-void
.end method
