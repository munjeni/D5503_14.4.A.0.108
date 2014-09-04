.class public interface abstract Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;
.super Ljava/lang/Object;
.source "GLRoot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot$OnGLIdleListener;
    }
.end annotation


# virtual methods
.method public abstract addOnGLIdleListener(Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot$OnGLIdleListener;)V
.end method

.method public abstract hasStencil()Z
.end method

.method public abstract lockRenderThread()V
.end method

.method public abstract registerLaunchedAnimation(Lcom/sonymobile/china/photoeditor/crop/anim/CanvasAnimation;)V
.end method

.method public abstract requestLayoutContentPane()V
.end method

.method public abstract requestRender()V
.end method

.method public abstract setContentPane(Lcom/sonymobile/china/photoeditor/crop/ui/GLView;)V
.end method

.method public abstract unlockRenderThread()V
.end method
