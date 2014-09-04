.class public Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;
.super Ljava/lang/Object;
.source "GLPaint.java"


# static fields
.field public static final FLAG_ANTI_ALIAS:I = 0x1


# instance fields
.field private mColor:I

.field private mFlags:I

.field private mLineWidth:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;->mFlags:I

    .line 26
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;->mLineWidth:F

    .line 28
    iput v1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;->mColor:I

    return-void
.end method


# virtual methods
.method public getAntiAlias()Z
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;->mColor:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;->mFlags:I

    return v0
.end method

.method public getLineWidth()F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;->mLineWidth:F

    return v0
.end method

.method public setAntiAlias(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;->mFlags:I

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iget v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;->mFlags:I

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;->mColor:I

    .line 40
    return-void
.end method

.method public setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;->mFlags:I

    .line 36
    return-void
.end method

.method public setLineWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 47
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->assertTrue(Z)V

    .line 48
    iput p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/GLPaint;->mLineWidth:F

    .line 49
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
