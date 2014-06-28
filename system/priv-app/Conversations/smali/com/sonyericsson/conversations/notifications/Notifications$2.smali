.class final Lcom/sonyericsson/conversations/notifications/Notifications$2;
.super Ljava/lang/Object;
.source "Notifications.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/notifications/Notifications;->updateAll(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sonyericsson/conversations/notifications/Notifications$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 126
    iget-object v5, p0, Lcom/sonyericsson/conversations/notifications/Notifications$2;->val$context:Landroid/content/Context;

    # invokes: Lcom/sonyericsson/conversations/notifications/Notifications;->getNotifications(Landroid/content/Context;)[Lcom/sonyericsson/conversations/notifications/Notification;
    invoke-static {v5}, Lcom/sonyericsson/conversations/notifications/Notifications;->access$000(Landroid/content/Context;)[Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v4

    .line 128
    .local v4, "notifications":[Lcom/sonyericsson/conversations/notifications/Notification;
    move-object v0, v4

    .local v0, "arr$":[Lcom/sonyericsson/conversations/notifications/Notification;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 129
    .local v3, "n":Lcom/sonyericsson/conversations/notifications/Notification;
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/notifications/Notification;->update()V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v3    # "n":Lcom/sonyericsson/conversations/notifications/Notification;
    :cond_0
    return-void
.end method
