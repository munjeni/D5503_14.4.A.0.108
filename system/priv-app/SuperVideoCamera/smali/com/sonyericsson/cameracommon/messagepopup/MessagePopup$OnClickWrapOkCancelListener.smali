.class Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelListener;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnClickWrapOkCancelListener"
.end annotation


# instance fields
.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 289
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 290
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    # getter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStateListener:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$000(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    # getter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStateListener:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$000(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;->msgPopupCanceled()V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickWrapOkCancelListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mOkAndCancelPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$102(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 301
    return-void
.end method
