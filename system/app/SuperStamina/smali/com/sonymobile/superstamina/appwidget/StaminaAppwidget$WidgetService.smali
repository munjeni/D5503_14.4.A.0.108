.class public Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget$WidgetService;
.super Landroid/app/Service;
.source "StaminaAppwidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetService"
.end annotation


# instance fields
.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 88
    new-instance v0, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget$EstimatesObserver;

    invoke-direct {v0, p0}, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget$EstimatesObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget$WidgetService;->mObserver:Landroid/database/ContentObserver;

    .line 89
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget;->CONTENT_URI_ESTIMATES:Landroid/net/Uri;
    invoke-static {}, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget;->access$000()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget$WidgetService;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 93
    invoke-static {p0}, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget;->updateWidget(Landroid/content/Context;)V

    .line 94
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 99
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget$WidgetService;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget$WidgetService;->mObserver:Landroid/database/ContentObserver;

    .line 101
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 82
    const/4 v0, 0x1

    return v0
.end method
