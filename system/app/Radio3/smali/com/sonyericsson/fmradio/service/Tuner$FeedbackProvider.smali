.class public interface abstract Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;
.super Ljava/lang/Object;
.source "Tuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/Tuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FeedbackProvider"
.end annotation


# static fields
.field public static final RICH_NOTIFICATION_ACTION:Ljava/lang/String; = "rich_notification_action"

.field public static final RICH_NOTIFICATION_ACTION_NEXT_STATION:I = 0xc

.field public static final RICH_NOTIFICATION_ACTION_PREV_STATION:I = 0xb

.field public static final RICH_NOTIFICATION_ACTION_SHUT_DOWN:I = 0xd


# virtual methods
.method public abstract favoriteAdded()V
.end method

.method public abstract hideBackgroundInfo()V
.end method

.method public abstract requestAddFavorite()V
.end method

.method public abstract setFmService(Lcom/sonyericsson/fmradio/service/FmService;)V
.end method

.method public abstract showBackgroundInfo(Lcom/sonyericsson/fmradio/util/FrequencyFormatter;ILjava/lang/String;Z)V
.end method
