.class public Lcom/sonyericsson/cameracommon/mediasaving/StorageController$DialogDismissListener;
.super Ljava/lang/Object;
.source "StorageController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/StorageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DialogDismissListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$DialogDismissListener;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$DialogDismissListener;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->closeDialog(Z)V

    .line 155
    return-void
.end method
