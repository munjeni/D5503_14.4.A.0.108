.class public interface abstract Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;
.super Ljava/lang/Object;
.source "Composer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/Composer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ComposerListener"
.end annotation


# virtual methods
.method public abstract mediaAddedOrRemoved()V
.end method

.method public abstract messageTypeChanged(II)V
.end method

.method public abstract smsCounterInfoChanged(Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;)V
.end method
