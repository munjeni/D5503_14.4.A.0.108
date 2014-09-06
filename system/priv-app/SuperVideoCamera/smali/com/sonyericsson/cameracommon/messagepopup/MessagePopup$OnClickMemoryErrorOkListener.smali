.class public Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickMemoryErrorOkListener;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnClickMemoryErrorOkListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V
    .locals 0

    .prologue
    .line 675
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickMemoryErrorOkListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 678
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$OnClickMemoryErrorOkListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mStorageErrorPopup:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$702(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 679
    return-void
.end method
