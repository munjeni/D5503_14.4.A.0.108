.class public interface abstract Lcom/sonymobile/movablepanes/paneview/PaneView$DrawFilter;
.super Ljava/lang/Object;
.source "PaneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/movablepanes/paneview/PaneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DrawFilter"
.end annotation


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;)Z
.end method

.method public abstract getOffScreenCanvas()Landroid/graphics/Canvas;
.end method

.method public abstract isActive()Z
.end method

.method public abstract onSizeChanged(II)V
.end method
