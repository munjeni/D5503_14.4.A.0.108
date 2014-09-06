.class Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;
.super Ljava/lang/Object;
.source "VideoSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mInOutputFormat:Ljava/lang/Integer;

.field private mInQuality:Ljava/lang/Integer;

.field private mIsProfileLoaded:Z

.field private mPreloadProfile:Landroid/media/CamcorderProfile;

.field private mResultExt:Ljava/lang/String;

.field private mResultMimeType:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mInQuality:Ljava/lang/Integer;

    .line 243
    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mInOutputFormat:Ljava/lang/Integer;

    .line 244
    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mPreloadProfile:Landroid/media/CamcorderProfile;

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mIsProfileLoaded:Z

    return-void
.end method

.method private setupOutputFormatWithFormat(I)V
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 348
    packed-switch p1, :pswitch_data_0

    .line 355
    const-string v0, ".mp4"

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mResultExt:Ljava/lang/String;

    .line 356
    const-string v0, "video/mp4"

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mResultMimeType:Ljava/lang/String;

    .line 359
    :goto_0
    return-void

    .line 350
    :pswitch_0
    const-string v0, ".3gp"

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mResultExt:Ljava/lang/String;

    .line 351
    const-string v0, "video/3gpp"

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mResultMimeType:Ljava/lang/String;

    goto :goto_0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private setupOutputFormatWithQuality(I)V
    .locals 1
    .param p1, "quality"    # I

    .prologue
    .line 332
    packed-switch p1, :pswitch_data_0

    .line 341
    :pswitch_0
    const-string v0, ".mp4"

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mResultExt:Ljava/lang/String;

    .line 342
    const-string v0, "video/mp4"

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mResultMimeType:Ljava/lang/String;

    .line 345
    :goto_0
    return-void

    .line 336
    :pswitch_1
    const-string v0, ".3gp"

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mResultExt:Ljava/lang/String;

    .line 337
    const-string v0, "video/3gpp"

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mResultMimeType:Ljava/lang/String;

    goto :goto_0

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method build()Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile;
    .locals 5

    .prologue
    const/4 v3, 0x6

    .line 285
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mInQuality:Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 286
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Don\'t set parameters."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 289
    :cond_0
    const/4 v0, 0x0

    .line 290
    .local v0, "profile":Landroid/media/CamcorderProfile;
    iget-boolean v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mIsProfileLoaded:Z

    if-eqz v2, :cond_1

    .line 291
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mPreloadProfile:Landroid/media/CamcorderProfile;

    .line 292
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mPreloadProfile:Landroid/media/CamcorderProfile;

    .line 322
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mInOutputFormat:Ljava/lang/Integer;

    if-nez v2, :cond_2

    .line 323
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mInQuality:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->setupOutputFormatWithQuality(I)V

    .line 328
    :goto_1
    new-instance v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mResultExt:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mResultMimeType:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v4}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile;-><init>(Landroid/media/CamcorderProfile;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 295
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mInQuality:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 296
    .local v1, "quality":I
    packed-switch v1, :pswitch_data_0

    .line 317
    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    goto :goto_0

    .line 298
    :pswitch_0
    invoke-static {v3}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 299
    const/16 v2, 0xf00

    iput v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 300
    const/16 v2, 0x870

    iput v2, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 301
    const v2, 0x3473bc0

    iput v2, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    goto :goto_0

    .line 305
    :pswitch_1
    invoke-static {v3}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 306
    const v2, 0x1c9c380

    iput v2, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 307
    const/16 v2, 0x3c

    iput v2, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    goto :goto_0

    .line 311
    :pswitch_2
    const/4 v2, 0x5

    invoke-static {v2}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 312
    const v2, 0x2faf080

    iput v2, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 313
    const/16 v2, 0x78

    iput v2, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    goto :goto_0

    .line 325
    .end local v1    # "quality":I
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mInOutputFormat:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->setupOutputFormatWithFormat(I)V

    goto :goto_1

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method outputFormat(I)Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 280
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mInOutputFormat:Ljava/lang/Integer;

    .line 281
    return-object p0
.end method

.method quality(II)Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;
    .locals 1
    .param p1, "quality"    # I
    .param p2, "defaultQuality"    # I

    .prologue
    .line 252
    invoke-static {p1}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mInQuality:Ljava/lang/Integer;

    .line 269
    :goto_0
    return-object p0

    .line 255
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 265
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mInQuality:Ljava/lang/Integer;

    goto :goto_0

    .line 261
    :pswitch_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mInQuality:Ljava/lang/Integer;

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method quality(ILandroid/media/CamcorderProfile;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;
    .locals 1
    .param p1, "quality"    # I
    .param p2, "preloadProfile"    # Landroid/media/CamcorderProfile;

    .prologue
    .line 273
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mInQuality:Ljava/lang/Integer;

    .line 274
    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mPreloadProfile:Landroid/media/CamcorderProfile;

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize$VideoProfile$Builder;->mIsProfileLoaded:Z

    .line 276
    return-object p0
.end method
