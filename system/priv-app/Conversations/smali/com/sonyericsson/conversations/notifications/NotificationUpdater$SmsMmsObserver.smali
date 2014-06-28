.class Lcom/sonyericsson/conversations/notifications/NotificationUpdater$SmsMmsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/notifications/NotificationUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsMmsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sonyericsson/conversations/notifications/NotificationUpdater;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/notifications/NotificationUpdater;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sonyericsson/conversations/notifications/NotificationUpdater$SmsMmsObserver;->this$0:Lcom/sonyericsson/conversations/notifications/NotificationUpdater;

    .line 62
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 63
    iput-object p3, p0, Lcom/sonyericsson/conversations/notifications/NotificationUpdater$SmsMmsObserver;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/conversations/notifications/NotificationUpdater$SmsMmsObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/conversations/notifications/Notifications;->updateAll(Landroid/content/Context;)V

    .line 69
    return-void
.end method
