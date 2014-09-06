.class public Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowOkListener"
.end annotation


# instance fields
.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p2, "ok"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "dismiss"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    const/4 v0, 0x0

    .line 1313
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1309
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1311
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1314
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1315
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1316
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1323
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$902(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1324
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 1331
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$ShowOkListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mDialogOk:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$902(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1332
    return-void
.end method
