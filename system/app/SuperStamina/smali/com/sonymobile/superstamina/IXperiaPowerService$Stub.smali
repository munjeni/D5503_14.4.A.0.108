.class public abstract Lcom/sonymobile/superstamina/IXperiaPowerService$Stub;
.super Landroid/os/Binder;
.source "IXperiaPowerService.java"

# interfaces
.implements Lcom/sonymobile/superstamina/IXperiaPowerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/IXperiaPowerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/superstamina/IXperiaPowerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sonymobile.superstamina.IXperiaPowerService"

.field static final TRANSACTION_addPackageToOperatorWhitelist:I = 0x2

.field static final TRANSACTION_areRemindersEnabled:I = 0x4

.field static final TRANSACTION_debug:I = 0x1

.field static final TRANSACTION_enableReminders:I = 0x3

.field static final TRANSACTION_enableXssmHardwareRestriction:I = 0x7

.field static final TRANSACTION_isXssmHardwareRestrictionEnabled:I = 0x6

.field static final TRANSACTION_setReminderEnabled:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.sonymobile.superstamina.IXperiaPowerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonymobile/superstamina/IXperiaPowerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.sonymobile.superstamina.IXperiaPowerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sonymobile/superstamina/IXperiaPowerService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/sonymobile/superstamina/IXperiaPowerService;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/sonymobile/superstamina/IXperiaPowerService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sonymobile/superstamina/IXperiaPowerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 46
    :sswitch_0
    const-string v4, "com.sonymobile.superstamina.IXperiaPowerService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v4, "com.sonymobile.superstamina.IXperiaPowerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonymobile/superstamina/IXperiaPowerService$Stub;->debug(Ljava/lang/String;)I

    move-result v2

    .line 55
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 61
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_2
    const-string v4, "com.sonymobile.superstamina.IXperiaPowerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonymobile/superstamina/IXperiaPowerService$Stub;->addPackageToOperatorWhitelist(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string v5, "com.sonymobile.superstamina.IXperiaPowerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 73
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sonymobile/superstamina/IXperiaPowerService$Stub;->enableReminders(Z)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_0
    move v0, v4

    .line 72
    goto :goto_1

    .line 79
    :sswitch_4
    const-string v5, "com.sonymobile.superstamina.IXperiaPowerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/IXperiaPowerService$Stub;->areRemindersEnabled()Z

    move-result v2

    .line 81
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v2, :cond_1

    move v4, v3

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v2    # "_result":Z
    :sswitch_5
    const-string v5, "com.sonymobile.superstamina.IXperiaPowerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v1, v3

    .line 92
    .local v1, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/superstamina/IXperiaPowerService$Stub;->setReminderEnabled(IZ)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1    # "_arg1":Z
    :cond_2
    move v1, v4

    .line 91
    goto :goto_2

    .line 98
    .end local v0    # "_arg0":I
    :sswitch_6
    const-string v5, "com.sonymobile.superstamina.IXperiaPowerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/IXperiaPowerService$Stub;->isXssmHardwareRestrictionEnabled()Z

    move-result v2

    .line 100
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v2, :cond_3

    move v4, v3

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 106
    .end local v2    # "_result":Z
    :sswitch_7
    const-string v5, "com.sonymobile.superstamina.IXperiaPowerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    move v0, v3

    .line 109
    .local v0, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/sonymobile/superstamina/IXperiaPowerService$Stub;->enableXssmHardwareRestriction(Z)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_4
    move v0, v4

    .line 108
    goto :goto_3

    .line 42
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
