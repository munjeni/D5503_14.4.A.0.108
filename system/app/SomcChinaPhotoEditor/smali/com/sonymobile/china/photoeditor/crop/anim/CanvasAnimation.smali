.class public abstract Lcom/sonymobile/china/photoeditor/crop/anim/CanvasAnimation;
.super Lcom/sonymobile/china/photoeditor/crop/anim/Animation;
.source "CanvasAnimation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/crop/anim/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract apply(Lcom/sonymobile/china/photoeditor/crop/ui/GLCanvas;)V
.end method

.method public abstract getCanvasSaveFlags()I
.end method
