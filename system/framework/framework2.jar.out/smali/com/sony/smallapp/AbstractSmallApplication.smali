.class public abstract Lcom/sony/smallapp/AbstractSmallApplication;
.super Landroid/app/Service;
.source "AbstractSmallApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method
