.class public interface abstract Lcom/sonyericsson/fmradio/service/SystemStateHandler$SystemStateListener;
.super Ljava/lang/Object;
.source "SystemStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/SystemStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SystemStateListener"
.end annotation


# virtual methods
.method public abstract onAudioBecomingNoisy()V
.end method

.method public abstract onSleep()V
.end method

.method public abstract onWake()V
.end method
