.class public final Landroid/app/admin/PolicyNotification;
.super Ljava/lang/Object;
.source "PolicyNotification.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearNotification(Landroid/content/Context;I)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 61
    const-string/jumbo v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 65
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 67
    .local v1, "token":J
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    return-void

    .line 69
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public static showApplicationPolicyNotification(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 25
    const v3, 0x104061d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "title":Ljava/lang/String;
    const v3, 0x104061e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "info":Ljava/lang/String;
    const v0, 0x108083a

    .line 31
    .local v0, "iconId":I
    invoke-static {p0, v2, v1, v0}, Landroid/app/admin/PolicyNotification;->showPolicyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    return-void
.end method

.method public static showPolicyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "iconId"    # I

    .prologue
    .line 38
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v4, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Style;->build()Landroid/app/Notification;

    move-result-object v1

    .line 45
    .local v1, "notification":Landroid/app/Notification;
    const-string/jumbo v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 49
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 51
    .local v2, "token":J
    :try_start_0
    invoke-virtual {v0, p3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    return-void

    .line 53
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
