.class public abstract Lcom/sonyericsson/cameracommon/status/ResolutionValue;
.super Ljava/lang/Object;
.source "ResolutionValue.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/CameraStatusValue;


# instance fields
.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/sonyericsson/cameracommon/status/ResolutionValue;->mWidth:I

    .line 41
    iput p2, p0, Lcom/sonyericsson/cameracommon/status/ResolutionValue;->mHeight:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/status/ResolutionValue;->mWidth:I

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/status/ResolutionValue;->mHeight:I

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera$Size;)V
    .locals 1
    .param p1, "size"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/status/ResolutionValue;->mWidth:I

    .line 33
    iget v0, p1, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/status/ResolutionValue;->mHeight:I

    .line 34
    return-void
.end method


# virtual methods
.method public getValueForDebug()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/ResolutionValue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putInto(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/ResolutionValue;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/ResolutionValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/status/ResolutionValue;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/status/ResolutionValue;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
