.class Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;
.super Ljava/lang/Object;
.source "BlurViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputImageBuffer"
.end annotation


# instance fields
.field public final bufferVu:Ljava/nio/ByteBuffer;

.field public final bufferY:Ljava/nio/ByteBuffer;

.field public final format:I

.field public final size:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 2
    .param p1, "size"    # Landroid/graphics/Rect;
    .param p2, "format"    # I

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;->size:Landroid/graphics/Rect;

    .line 111
    iput p2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;->format:I

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This buffer expects image that width and height are multiple of 2."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;->bufferY:Ljava/nio/ByteBuffer;

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;->bufferVu:Ljava/nio/ByteBuffer;

    .line 127
    return-void

    .line 118
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public write([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 130
    if-nez p1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 138
    :cond_0
    iget v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;->format:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 140
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;->size:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;->size:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v0, v1, 0x2

    .line 141
    .local v0, "expectLen":I
    array-length v1, p1

    if-eq v1, v0, :cond_1

    .line 143
    # getter for: Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BlurViewFinder.request():[Invalid Data Length] [data.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] [EXPECTED = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;->bufferY:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;->bufferY:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-static {p1, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget-object v1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;->bufferY:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;->bufferVu:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$InputImageBuffer;->bufferVu:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    invoke-static {p1, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method
