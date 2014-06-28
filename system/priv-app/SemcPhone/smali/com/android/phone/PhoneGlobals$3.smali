.class final Lcom/android/phone/PhoneGlobals$3;
.super Ljava/lang/Object;
.source "PhoneGlobals.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 992
    invoke-static {p2}, Lorg/codeaurora/ims/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/IImsService;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneGlobals;->mImsService:Lorg/codeaurora/ims/IImsService;

    .line 993
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "Ims Service Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 997
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "Ims Service onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneGlobals;->mImsService:Lorg/codeaurora/ims/IImsService;

    .line 999
    return-void
.end method
