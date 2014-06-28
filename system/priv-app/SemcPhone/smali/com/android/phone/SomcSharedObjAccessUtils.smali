.class public Lcom/android/phone/SomcSharedObjAccessUtils;
.super Ljava/lang/Object;
.source "SomcSharedObjAccessUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static getNotificationMgr()Lcom/android/phone/NotificationMgr;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    return-object v0
.end method

.method public static getVdbg()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    return v0
.end method
