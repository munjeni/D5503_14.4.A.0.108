.class public Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;
.super Ljava/lang/Object;
.source "FmRadioFeedback.java"

# interfaces
.implements Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;


# static fields
.field private static final ID_BG_INFO:I = 0x2


# instance fields
.field private mBuilder:Landroid/app/Notification$Builder;

.field private mContext:Landroid/content/Context;

.field private mFmService:Lcom/sonyericsson/fmradio/service/FmService;

.field private mLaunchIntent:Landroid/app/PendingIntent;

.field private mNextStationIntent:Landroid/app/PendingIntent;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPreviousStationIntent:Landroid/app/PendingIntent;

.field private mShutDownIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    .line 62
    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iput-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mNotificationManager:Landroid/app/NotificationManager;

    .line 65
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    const-class v5, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v0, "launch":Landroid/content/Intent;
    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mLaunchIntent:Landroid/app/PendingIntent;

    .line 68
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    const-class v5, Lcom/sonyericsson/fmradio/service/FmService;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v2, "prev":Landroid/content/Intent;
    const-string v4, "rich_notification_action"

    const/16 v5, 0xb

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mPreviousStationIntent:Landroid/app/PendingIntent;

    .line 72
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    const-class v5, Lcom/sonyericsson/fmradio/service/FmService;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v1, "next":Landroid/content/Intent;
    const-string v4, "rich_notification_action"

    const/16 v5, 0xc

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mNextStationIntent:Landroid/app/PendingIntent;

    .line 76
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    const-class v5, Lcom/sonyericsson/fmradio/service/FmService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v3, "shutDown":Landroid/content/Intent;
    const-string v4, "rich_notification_action"

    const/16 v5, 0xd

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    const/4 v5, 0x3

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mShutDownIntent:Landroid/app/PendingIntent;

    .line 79
    return-void
.end method

.method private makeDisplayString(Lcom/sonyericsson/fmradio/util/FrequencyFormatter;ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "ff"    # Lcom/sonyericsson/fmradio/util/FrequencyFormatter;
    .param p2, "frequency"    # I
    .param p3, "displayName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 112
    invoke-virtual {p1, p2}, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;->format(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "mhz":Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    const v2, 0x7f05002d

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    const v2, 0x7f05002e

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    aput-object p3, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setUpRichNotificationView(Ljava/lang/CharSequence;Z)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "channelInfo"    # Ljava/lang/CharSequence;
    .param p2, "isFavorite"    # Z

    .prologue
    .line 121
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03000c

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 123
    .local v0, "rv":Landroid/widget/RemoteViews;
    const v1, 0x7f0c0021

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 124
    const v2, 0x7f0c0020

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 126
    const v1, 0x7f0c0023

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mPreviousStationIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 127
    const v1, 0x7f0c0024

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mNextStationIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 128
    const v1, 0x7f0c0025

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mShutDownIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 130
    return-object v0

    .line 124
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 4
    .param p1, "resId"    # I

    .prologue
    const/4 v3, 0x0

    .line 144
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 145
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 146
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 147
    return-void
.end method


# virtual methods
.method public favoriteAdded()V
    .locals 1

    .prologue
    .line 140
    const v0, 0x7f050029

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->showToast(I)V

    .line 141
    return-void
.end method

.method public hideBackgroundInfo()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 89
    return-void
.end method

.method public requestAddFavorite()V
    .locals 1

    .prologue
    .line 135
    const v0, 0x7f050028

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->showToast(I)V

    .line 136
    return-void
.end method

.method public setFmService(Lcom/sonyericsson/fmradio/service/FmService;)V
    .locals 0
    .param p1, "fmService"    # Lcom/sonyericsson/fmradio/service/FmService;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mFmService:Lcom/sonyericsson/fmradio/service/FmService;

    .line 84
    return-void
.end method

.method public showBackgroundInfo(Lcom/sonyericsson/fmradio/util/FrequencyFormatter;ILjava/lang/String;Z)V
    .locals 4
    .param p1, "ff"    # Lcom/sonyericsson/fmradio/util/FrequencyFormatter;
    .param p2, "frequency"    # I
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "isFavorite"    # Z

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->makeDisplayString(Lcom/sonyericsson/fmradio/util/FrequencyFormatter;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "contentText":Ljava/lang/CharSequence;
    invoke-direct {p0, v0, p4}, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->setUpRichNotificationView(Ljava/lang/CharSequence;Z)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 98
    .local v1, "rv":Landroid/widget/RemoteViews;
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mBuilder:Landroid/app/Notification$Builder;

    if-nez v2, :cond_0

    .line 99
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mBuilder:Landroid/app/Notification$Builder;

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 102
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mLaunchIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 103
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 104
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mBuilder:Landroid/app/Notification$Builder;

    const v3, 0x7f02004b

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 106
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mFmService:Lcom/sonyericsson/fmradio/service/FmService;

    if-eqz v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mFmService:Lcom/sonyericsson/fmradio/service/FmService;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/fmradio/service/FmService;->startServiceInForeground(Landroid/app/Notification;)V

    .line 109
    :cond_1
    return-void
.end method
