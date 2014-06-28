.class public Lcom/android/phone/widget/SomcCallWidgetManagerService;
.super Landroid/app/Service;
.source "SomcCallWidgetManagerService.java"


# instance fields
.field TAG:Ljava/lang/String;

.field private mCallWidgetmgr:Lcom/android/phone/widget/SomcCallWidgetManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 15
    const-string v0, "CallWidgetManagerService"

    iput-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetManagerService;->TAG:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetManagerService;->TAG:Ljava/lang/String;

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetManagerService;->mCallWidgetmgr:Lcom/android/phone/widget/SomcCallWidgetManager;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/android/phone/widget/SomcCallWidgetManager;

    invoke-virtual {p0}, Lcom/android/phone/widget/SomcCallWidgetManagerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/widget/SomcCallWidgetManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetManagerService;->mCallWidgetmgr:Lcom/android/phone/widget/SomcCallWidgetManager;

    .line 21
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 32
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetManagerService;->mCallWidgetmgr:Lcom/android/phone/widget/SomcCallWidgetManager;

    invoke-virtual {v0}, Lcom/android/phone/widget/SomcCallWidgetManager;->destroy()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetManagerService;->mCallWidgetmgr:Lcom/android/phone/widget/SomcCallWidgetManager;

    .line 34
    return-void
.end method
