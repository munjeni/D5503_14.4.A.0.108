.class public abstract Landroid/app/IAlarmManager$Stub;
.super Landroid/os/Binder;
.source "IAlarmManager.java"

# interfaces
.implements Landroid/app/IAlarmManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IAlarmManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IAlarmManager"

.field static final TRANSACTION_addWhitelistedUid:I = 0x5

.field static final TRANSACTION_firstWakelockAcquired:I = 0x7

.field static final TRANSACTION_lastWakelockReleased:I = 0x8

.field static final TRANSACTION_remove:I = 0x4

.field static final TRANSACTION_removeWhitelistedUid:I = 0x6

.field static final TRANSACTION_set:I = 0x1

.field static final TRANSACTION_setInternalWhitelist:I = 0x9

.field static final TRANSACTION_setTime:I = 0x2

.field static final TRANSACTION_setTimeZone:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;
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
    const-string v1, "android.app.IAlarmManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IAlarmManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/app/IAlarmManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/app/IAlarmManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/IAlarmManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 155
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 47
    :sswitch_0
    const-string v1, "android.app.IAlarmManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v1, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 56
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 58
    .local v3, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 60
    .local v5, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 62
    .local v7, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .line 69
    .local v9, "_arg4":Landroid/app/PendingIntent;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/WorkSource;

    .local v10, "_arg5":Landroid/os/WorkSource;
    :goto_2
    move-object v1, p0

    .line 75
    invoke-virtual/range {v1 .. v10}, Landroid/app/IAlarmManager$Stub;->set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 76
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    const/4 v1, 0x1

    goto :goto_0

    .line 66
    .end local v9    # "_arg4":Landroid/app/PendingIntent;
    .end local v10    # "_arg5":Landroid/os/WorkSource;
    :cond_0
    const/4 v9, 0x0

    .restart local v9    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_1

    .line 73
    :cond_1
    const/4 v10, 0x0

    .restart local v10    # "_arg5":Landroid/os/WorkSource;
    goto :goto_2

    .line 81
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":J
    .end local v7    # "_arg3":J
    .end local v9    # "_arg4":Landroid/app/PendingIntent;
    .end local v10    # "_arg5":Landroid/os/WorkSource;
    :sswitch_2
    const-string v1, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 84
    .local v11, "_arg0":J
    invoke-virtual {p0, v11, v12}, Landroid/app/IAlarmManager$Stub;->setTime(J)V

    .line 85
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    const/4 v1, 0x1

    goto :goto_0

    .line 90
    .end local v11    # "_arg0":J
    :sswitch_3
    const-string v1, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/app/IAlarmManager$Stub;->setTimeZone(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    const/4 v1, 0x1

    goto :goto_0

    .line 99
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string v1, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 107
    .local v2, "_arg0":Landroid/app/PendingIntent;
    :goto_3
    invoke-virtual {p0, v2}, Landroid/app/IAlarmManager$Stub;->remove(Landroid/app/PendingIntent;)V

    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 105
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_3

    .line 113
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_5
    const-string v1, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 116
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/app/IAlarmManager$Stub;->addWhitelistedUid(I)V

    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 122
    .end local v2    # "_arg0":I
    :sswitch_6
    const-string v1, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/app/IAlarmManager$Stub;->removeWhitelistedUid(I)V

    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 131
    .end local v2    # "_arg0":I
    :sswitch_7
    const-string v1, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 134
    .restart local v11    # "_arg0":J
    invoke-virtual {p0, v11, v12}, Landroid/app/IAlarmManager$Stub;->firstWakelockAcquired(J)V

    .line 135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 140
    .end local v11    # "_arg0":J
    :sswitch_8
    const-string v1, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Landroid/app/IAlarmManager$Stub;->lastWakelockReleased()V

    .line 142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 147
    :sswitch_9
    const-string v1, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 150
    .local v13, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v13}, Landroid/app/IAlarmManager$Stub;->setInternalWhitelist(Ljava/util/List;)V

    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
