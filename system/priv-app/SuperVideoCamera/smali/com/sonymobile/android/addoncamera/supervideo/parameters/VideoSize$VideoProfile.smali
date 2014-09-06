.class public Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile;
.super Ljava/lang/Object;
.source "VideoSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoProfile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;
    }
.end annotation


# instance fields
.field private final mCamcorderProfile:Landroid/media/CamcorderProfile;

.field public final mExt:Ljava/lang/String;

.field public final mMimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/media/CamcorderProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "camcorderProfile"    # Landroid/media/CamcorderProfile;
    .param p2, "ext"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    .line 229
    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile;->mExt:Ljava/lang/String;

    .line 230
    iput-object p3, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile;->mMimeType:Ljava/lang/String;

    .line 231
    return-void
.end method


# virtual methods
.method public getCamcorderProfile()Landroid/media/CamcorderProfile;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    return-object v0
.end method
