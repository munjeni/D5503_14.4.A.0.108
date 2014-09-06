.class public final Lcom/sonymobile/cameracommon/opengl/FrameData;
.super Ljava/lang/Object;
.source "FrameData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/opengl/FrameData$1;,
        Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;
    }
.end annotation


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private final mFormat:Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

.field private final mFrameHeight:I

.field private final mFrameWidth:I


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;II)V
    .locals 2
    .param p1, "format"    # Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;
    .param p2, "frameWidth"    # I
    .param p3, "frameHeight"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mBuffer:Ljava/nio/ByteBuffer;

    .line 44
    iput-object p1, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFormat:Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

    .line 45
    iput p2, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameWidth:I

    .line 46
    iput p3, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameHeight:I

    .line 48
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/FrameData$1;->$SwitchMap$com$sonymobile$cameracommon$opengl$FrameData$ImageFormat:[I

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFormat:Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameWidth:I

    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 55
    :pswitch_1
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameWidth:I

    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;IILjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "format"    # Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;
    .param p2, "frameWidth"    # I
    .param p3, "frameHeight"    # I
    .param p4, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mBuffer:Ljava/nio/ByteBuffer;

    .line 74
    iput-object p1, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFormat:Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

    .line 75
    iput p2, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameWidth:I

    .line 76
    iput p3, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameHeight:I

    .line 77
    iput-object p4, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mBuffer:Ljava/nio/ByteBuffer;

    .line 78
    return-void
.end method


# virtual methods
.method public getBufferVu()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 131
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 134
    .local v0, "vuBuf":Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameWidth:I

    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameHeight:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 135
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 137
    return-object v0
.end method

.method public getBufferY()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 119
    .local v0, "yBuf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 120
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameWidth:I

    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameHeight:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 122
    return-object v0
.end method

.method public getBufferYvu()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getFrameHeight()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameHeight:I

    return v0
.end method

.method public getFrameWidth()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFrameWidth:I

    return v0
.end method

.method public getImageFormat()Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mFormat:Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

    return-object v0
.end method

.method public getRgb888()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameData;->mBuffer:Ljava/nio/ByteBuffer;

    .line 157
    :cond_0
    return-void
.end method
