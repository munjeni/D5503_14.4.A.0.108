.class public interface abstract Lcom/sonymobile/movablepanes/transfer/TransferTarget;
.super Ljava/lang/Object;
.source "TransferTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/movablepanes/transfer/TransferTarget$DropListener;
    }
.end annotation


# virtual methods
.method public abstract cancelHint(Lcom/sonymobile/movablepanes/animation/Renderer;)V
.end method

.method public abstract drop(Ljava/lang/Object;Landroid/view/View;Lcom/sonymobile/movablepanes/animation/Renderer;Lcom/sonymobile/movablepanes/transfer/TransferTarget$DropListener;)V
.end method

.method public abstract hint(Ljava/lang/Object;Landroid/view/View;IILcom/sonymobile/movablepanes/animation/Renderer;)Z
.end method
