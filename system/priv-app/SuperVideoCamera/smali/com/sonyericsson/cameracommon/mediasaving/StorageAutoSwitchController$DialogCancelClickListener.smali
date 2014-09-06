.class Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogCancelClickListener;
.super Ljava/lang/Object;
.source "StorageAutoSwitchController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogCancelClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogCancelClickListener;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogCancelClickListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogCancelClickListener;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->closeDialog(Z)V

    .line 50
    return-void
.end method
