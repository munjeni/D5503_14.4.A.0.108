.class public Lcom/sonymobile/china/photoeditor/DuoTone;
.super Ljava/lang/Object;
.source "DuoTone.java"


# instance fields
.field private final mBrightColor:I

.field private final mDarkColor:I

.field private final mEffectFactor:I

.field private final mImageFactor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "DuoCone"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "brightColor"    # I
    .param p2, "darkColor"    # I
    .param p3, "effectFactor"    # I
    .param p4, "imageFactor"    # I

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/sonymobile/china/photoeditor/DuoTone;->mBrightColor:I

    .line 25
    iput p2, p0, Lcom/sonymobile/china/photoeditor/DuoTone;->mDarkColor:I

    .line 26
    iput p3, p0, Lcom/sonymobile/china/photoeditor/DuoTone;->mEffectFactor:I

    .line 27
    iput p4, p0, Lcom/sonymobile/china/photoeditor/DuoTone;->mImageFactor:I

    .line 28
    return-void
.end method

.method public static native applyDuoTone([IIIII)[I
.end method


# virtual methods
.method public getPixelMap([I)[I
    .locals 5
    .param p1, "base"    # [I

    .prologue
    .line 32
    move-object v0, p1

    .line 33
    .local v0, "pixelMap":[I
    iget v1, p0, Lcom/sonymobile/china/photoeditor/DuoTone;->mBrightColor:I

    iget v2, p0, Lcom/sonymobile/china/photoeditor/DuoTone;->mDarkColor:I

    iget v3, p0, Lcom/sonymobile/china/photoeditor/DuoTone;->mEffectFactor:I

    iget v4, p0, Lcom/sonymobile/china/photoeditor/DuoTone;->mImageFactor:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sonymobile/china/photoeditor/DuoTone;->applyDuoTone([IIIII)[I

    move-result-object v0

    .line 34
    return-object v0
.end method
