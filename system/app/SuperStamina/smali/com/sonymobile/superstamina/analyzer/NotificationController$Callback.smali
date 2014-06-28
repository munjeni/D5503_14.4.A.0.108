.class public interface abstract Lcom/sonymobile/superstamina/analyzer/NotificationController$Callback;
.super Ljava/lang/Object;
.source "NotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/analyzer/NotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract getBuilder(I)Landroid/app/Notification$Builder;
.end method

.method public abstract onAction(I)Z
.end method

.method public abstract onContent(I)Z
.end method
