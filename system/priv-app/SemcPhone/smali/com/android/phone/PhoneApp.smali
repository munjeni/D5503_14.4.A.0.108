.class public Lcom/android/phone/PhoneApp;
.super Landroid/app/Application;
.source "PhoneApp.java"


# instance fields
.field mPhoneGlobals:Lcom/android/phone/PhoneGlobals;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneGlobals;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 47
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 48
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/android/phone/PhoneGlobals;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneGlobals;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    .line 38
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->onCreate()V

    .line 40
    :cond_0
    return-void
.end method
