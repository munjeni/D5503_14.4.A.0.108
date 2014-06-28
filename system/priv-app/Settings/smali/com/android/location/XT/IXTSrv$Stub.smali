.class public abstract Lcom/android/location/XT/IXTSrv$Stub;
.super Landroid/os/Binder;
.source "IXTSrv.java"

# interfaces
.implements Lcom/android/location/XT/IXTSrv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/XT/IXTSrv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/location/XT/IXTSrv$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.location.XT.IXTSrv"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/location/XT/IXTSrv;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.android.location.XT.IXTSrv"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/location/XT/IXTSrv;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/location/XT/IXTSrv;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/location/XT/IXTSrv$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/location/XT/IXTSrv$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v2, "com.android.location.XT.IXTSrv"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.android.location.XT.IXTSrv"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/location/XT/IXTSrv$Stub;->disable()Z

    move-result v1

    .line 49
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v1    # "_result":Z
    :sswitch_2
    const-string v4, "com.android.location.XT.IXTSrv"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/location/XT/IXTSrv$Stub;->getStatus()Z

    move-result v1

    .line 57
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v1    # "_result":Z
    :sswitch_3
    const-string v2, "com.android.location.XT.IXTSrv"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/location/XT/IXTSrv$Stub;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string v2, "com.android.location.XT.IXTSrv"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/location/XT/IXTSrv$Stub;->showDialog()V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    :sswitch_5
    const-string v2, "com.android.location.XT.IXTSrv"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/location/XT/IXTSrvCb$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/location/XT/IXTSrvCb;

    move-result-object v0

    .line 83
    .local v0, "_arg0":Lcom/android/location/XT/IXTSrvCb;
    invoke-virtual {p0, v0}, Lcom/android/location/XT/IXTSrv$Stub;->registerCallback(Lcom/android/location/XT/IXTSrvCb;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    .end local v0    # "_arg0":Lcom/android/location/XT/IXTSrvCb;
    :sswitch_6
    const-string v2, "com.android.location.XT.IXTSrv"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/location/XT/IXTSrvCb$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/location/XT/IXTSrvCb;

    move-result-object v0

    .line 92
    .restart local v0    # "_arg0":Lcom/android/location/XT/IXTSrvCb;
    invoke-virtual {p0, v0}, Lcom/android/location/XT/IXTSrv$Stub;->unregisterCallback(Lcom/android/location/XT/IXTSrvCb;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
