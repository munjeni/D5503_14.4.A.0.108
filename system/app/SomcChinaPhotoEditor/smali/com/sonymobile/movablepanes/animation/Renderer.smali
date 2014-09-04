.class public interface abstract Lcom/sonymobile/movablepanes/animation/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"


# static fields
.field public static final COMMAND_DROP:Ljava/lang/String; = "COMMAND_DROP"

.field public static final COMMAND_PICKUP:Ljava/lang/String; = "COMMAND_PICKUP"


# virtual methods
.method public abstract draw(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z
.end method

.method public abstract draw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z
.end method

.method public abstract getCurrentRect(Landroid/graphics/Rect;)V
.end method

.method public abstract offset(IIJ)V
.end method

.method public abstract sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
.end method

.method public abstract start(Landroid/graphics/Rect;IIJ)V
.end method
