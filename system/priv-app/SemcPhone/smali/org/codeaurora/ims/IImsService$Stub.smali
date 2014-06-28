.class public abstract Lorg/codeaurora/ims/IImsService$Stub;
.super Landroid/os/Binder;
.source "IImsService.java"

# interfaces
.implements Lorg/codeaurora/ims/IImsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/IImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/IImsService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "org.codeaurora.ims.IImsService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/IImsService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "org.codeaurora.ims.IImsService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/codeaurora/ims/IImsService;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lorg/codeaurora/ims/IImsService;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lorg/codeaurora/ims/IImsService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/codeaurora/ims/IImsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v8, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v0, "org.codeaurora.ims.IImsService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "org.codeaurora.ims.IImsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/IImsServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/IImsServiceListener;

    move-result-object v1

    .line 55
    .local v1, "_arg0":Lorg/codeaurora/ims/IImsServiceListener;
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/IImsService$Stub;->registerCallback(Lorg/codeaurora/ims/IImsServiceListener;)I

    move-result v7

    .line 56
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 58
    goto :goto_0

    .line 62
    .end local v1    # "_arg0":Lorg/codeaurora/ims/IImsServiceListener;
    .end local v7    # "_result":I
    :sswitch_2
    const-string v0, "org.codeaurora.ims.IImsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/IImsServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/IImsServiceListener;

    move-result-object v1

    .line 65
    .restart local v1    # "_arg0":Lorg/codeaurora/ims/IImsServiceListener;
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/IImsService$Stub;->deregisterCallback(Lorg/codeaurora/ims/IImsServiceListener;)I

    move-result v7

    .line 66
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 68
    goto :goto_0

    .line 72
    .end local v1    # "_arg0":Lorg/codeaurora/ims/IImsServiceListener;
    .end local v7    # "_result":I
    :sswitch_3
    const-string v0, "org.codeaurora.ims.IImsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/IImsService$Stub;->setRegistrationState(I)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 77
    goto :goto_0

    .line 81
    .end local v1    # "_arg0":I
    :sswitch_4
    const-string v0, "org.codeaurora.ims.IImsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lorg/codeaurora/ims/IImsService$Stub;->getRegistrationState()I

    move-result v7

    .line 83
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 85
    goto :goto_0

    .line 89
    .end local v7    # "_result":I
    :sswitch_5
    const-string v0, "org.codeaurora.ims.IImsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 93
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 99
    .local v2, "_arg1":Landroid/os/Messenger;
    :goto_1
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/IImsService$Stub;->queryImsServiceStatus(ILandroid/os/Messenger;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 101
    goto :goto_0

    .line 97
    .end local v2    # "_arg1":Landroid/os/Messenger;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Messenger;
    goto :goto_1

    .line 105
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/Messenger;
    :sswitch_6
    const-string v0, "org.codeaurora.ims.IImsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 109
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 111
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 113
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 115
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 117
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Messenger;

    .local v6, "_arg5":Landroid/os/Messenger;
    :goto_2
    move-object v0, p0

    .line 123
    invoke-virtual/range {v0 .. v6}, Lorg/codeaurora/ims/IImsService$Stub;->setServiceStatus(IIIIILandroid/os/Messenger;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 125
    goto/16 :goto_0

    .line 121
    .end local v6    # "_arg5":Landroid/os/Messenger;
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/os/Messenger;
    goto :goto_2

    .line 129
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/os/Messenger;
    :sswitch_7
    const-string v0, "org.codeaurora.ims.IImsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 132
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/IImsService$Stub;->getCallDetailsExtrasinCall(I)[Ljava/lang/String;

    move-result-object v7

    .line 133
    .local v7, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v0, v8

    .line 135
    goto/16 :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
