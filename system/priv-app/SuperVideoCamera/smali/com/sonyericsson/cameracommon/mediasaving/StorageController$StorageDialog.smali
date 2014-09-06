.class public Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialog;
.super Ljava/lang/Object;
.source "StorageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/StorageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "StorageDialog"
.end annotation


# instance fields
.field protected final mDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field protected final mIsError:Z

.field protected final mTextId:I


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;IZ)V
    .locals 0
    .param p1, "dialog"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .param p2, "textId"    # I
    .param p3, "isError"    # Z

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialog;->mDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 145
    iput p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialog;->mTextId:I

    .line 146
    iput-boolean p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialog;->mIsError:Z

    .line 147
    return-void
.end method
