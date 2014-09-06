.class Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapSelectionShareListener;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCancelWrapSelectionShareListener"
.end annotation


# instance fields
.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p2, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapSelectionShareListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapSelectionShareListener;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 415
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapSelectionShareListener;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 416
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapSelectionShareListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    # getter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStateListener:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$000(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapSelectionShareListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    # getter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStateListener:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$000(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;->msgPopupCanceled()V

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapSelectionShareListener;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapSelectionShareListener;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnCancelWrapSelectionShareListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mShareSelection:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$302(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 427
    return-void
.end method
