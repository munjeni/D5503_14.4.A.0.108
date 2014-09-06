.class public Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;
.super Ljava/lang/Object;
.source "PhotoSavingRequest.java"


# instance fields
.field public final mAddToMediaStore:Z

.field public final mExtraOutput:Landroid/net/Uri;

.field public mImage:[B

.field public final mPostProcessing:Z

.field public final mStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;)V
    .locals 6
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;

    .prologue
    .line 30
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mImage:[B

    iget-object v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    iget-boolean v3, p1, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mPostProcessing:Z

    iget-object v4, p1, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mExtraOutput:Landroid/net/Uri;

    iget-boolean v5, p1, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mAddToMediaStore:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;-><init>([BLcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ZLandroid/net/Uri;Z)V

    .line 36
    return-void
.end method

.method public constructor <init>([BLcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ZLandroid/net/Uri;Z)V
    .locals 0
    .param p1, "image"    # [B
    .param p2, "status"    # Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    .param p3, "postProcessing"    # Z
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "addToMediaStore"    # Z

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mImage:[B

    .line 23
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    .line 24
    iput-boolean p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mPostProcessing:Z

    .line 25
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mExtraOutput:Landroid/net/Uri;

    .line 26
    iput-boolean p5, p0, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mAddToMediaStore:Z

    .line 27
    return-void
.end method
