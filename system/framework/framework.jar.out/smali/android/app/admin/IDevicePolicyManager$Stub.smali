.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final TRANSACTION_addApplicationsToList:I = 0x44

.field static final TRANSACTION_checkCallingUid:I = 0x5b

.field static final TRANSACTION_getActiveAdmins:I = 0x33

.field static final TRANSACTION_getBluetoothPermission:I = 0x52

.field static final TRANSACTION_getCameraDisabled:I = 0x2e

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x17

.field static final TRANSACTION_getCurrentFailedPasswordAttemptsInternal:I = 0x18

.field static final TRANSACTION_getDeviceOwner:I = 0x3d

.field static final TRANSACTION_getDeviceOwnerName:I = 0x3e

.field static final TRANSACTION_getGlobalProxyAdmin:I = 0x26

.field static final TRANSACTION_getInfraredDisabled:I = 0x4c

.field static final TRANSACTION_getKeyguardDisabledFeatures:I = 0x30

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x1a

.field static final TRANSACTION_getMaximumTimeToLock:I = 0x1d

.field static final TRANSACTION_getPasswordExpiration:I = 0x15

.field static final TRANSACTION_getPasswordExpirationTimeout:I = 0x14

.field static final TRANSACTION_getPasswordHistoryLength:I = 0x12

.field static final TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final TRANSACTION_getPasswordMinimumLetters:I = 0xa

.field static final TRANSACTION_getPasswordMinimumLowerCase:I = 0x8

.field static final TRANSACTION_getPasswordMinimumNonLetter:I = 0x10

.field static final TRANSACTION_getPasswordMinimumNumeric:I = 0xc

.field static final TRANSACTION_getPasswordMinimumSymbols:I = 0xe

.field static final TRANSACTION_getPasswordMinimumUpperCase:I = 0x6

.field static final TRANSACTION_getPasswordQuality:I = 0x2

.field static final TRANSACTION_getRemoveWarning:I = 0x35

.field static final TRANSACTION_getSdcardEncryption:I = 0x2b

.field static final TRANSACTION_getSdcardEncryptionStatus:I = 0x2c

.field static final TRANSACTION_getStorageEncryption:I = 0x28

.field static final TRANSACTION_getStorageEncryptionStatus:I = 0x29

.field static final TRANSACTION_hasGrantedPolicy:I = 0x37

.field static final TRANSACTION_installCaCert:I = 0x3f

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x16

.field static final TRANSACTION_isAdminActive:I = 0x32

.field static final TRANSACTION_isApplicationDisabled:I = 0x42

.field static final TRANSACTION_isApplicationListed:I = 0x47

.field static final TRANSACTION_isAutoSyncWhenRoamingDisabled:I = 0x5a

.field static final TRANSACTION_isBrowserDisabled:I = 0x49

.field static final TRANSACTION_isDataRoamingDisabled:I = 0x58

.field static final TRANSACTION_isDeviceOwner:I = 0x3c

.field static final TRANSACTION_isLocalDesktopSyncDisabled:I = 0x56

.field static final TRANSACTION_isMountingExternalStorageDisabled:I = 0x4e

.field static final TRANSACTION_isRecoveryPasswordSaved:I = 0x1e

.field static final TRANSACTION_isSimplePasswordRestricted:I = 0x21

.field static final TRANSACTION_isTetheringDisabled:I = 0x54

.field static final TRANSACTION_isWifiDisabled:I = 0x50

.field static final TRANSACTION_lockNow:I = 0x22

.field static final TRANSACTION_packageHasActiveAdmins:I = 0x34

.field static final TRANSACTION_releasePolicies:I = 0x43

.field static final TRANSACTION_removeActiveAdmin:I = 0x36

.field static final TRANSACTION_removeAllApplicationsFromList:I = 0x46

.field static final TRANSACTION_removeApplicationsFromList:I = 0x45

.field static final TRANSACTION_reportFailedPasswordAttempt:I = 0x39

.field static final TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x3a

.field static final TRANSACTION_reportSuccessfulRecoveryPasswordAttempt:I = 0x4a

.field static final TRANSACTION_resetPassword:I = 0x1b

.field static final TRANSACTION_saveRecoveryPassword:I = 0x1f

.field static final TRANSACTION_setActiveAdmin:I = 0x31

.field static final TRANSACTION_setActivePasswordState:I = 0x38

.field static final TRANSACTION_setAutoSyncWhenRoamingDisabled:I = 0x59

.field static final TRANSACTION_setBluetoothPermission:I = 0x51

.field static final TRANSACTION_setBrowserDisabled:I = 0x48

.field static final TRANSACTION_setCameraDisabled:I = 0x2d

.field static final TRANSACTION_setDataRoamingDisabled:I = 0x57

.field static final TRANSACTION_setDeviceOwner:I = 0x3b

.field static final TRANSACTION_setGlobalProxy:I = 0x25

.field static final TRANSACTION_setInfraredDisabled:I = 0x4b

.field static final TRANSACTION_setKeyguardDisabledFeatures:I = 0x2f

.field static final TRANSACTION_setLocalDesktopSyncDisabled:I = 0x55

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x19

.field static final TRANSACTION_setMaximumTimeToLock:I = 0x1c

.field static final TRANSACTION_setMountingExternalStorageDisabled:I = 0x4d

.field static final TRANSACTION_setPasswordExpirationTimeout:I = 0x13

.field static final TRANSACTION_setPasswordHistoryLength:I = 0x11

.field static final TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final TRANSACTION_setPasswordMinimumLetters:I = 0x9

.field static final TRANSACTION_setPasswordMinimumLowerCase:I = 0x7

.field static final TRANSACTION_setPasswordMinimumNonLetter:I = 0xf

.field static final TRANSACTION_setPasswordMinimumNumeric:I = 0xb

.field static final TRANSACTION_setPasswordMinimumSymbols:I = 0xd

.field static final TRANSACTION_setPasswordMinimumUpperCase:I = 0x5

.field static final TRANSACTION_setPasswordQuality:I = 0x1

.field static final TRANSACTION_setSdcardEncryption:I = 0x2a

.field static final TRANSACTION_setSimplePasswordRestricted:I = 0x20

.field static final TRANSACTION_setStorageEncryption:I = 0x27

.field static final TRANSACTION_setTetheringDisabled:I = 0x53

.field static final TRANSACTION_setWifiDisabled:I = 0x4f

.field static final TRANSACTION_uninstallCaCert:I = 0x40

.field static final TRANSACTION_updateApplicationState:I = 0x41

.field static final TRANSACTION_wipeData:I = 0x23

.field static final TRANSACTION_wipeExternalSdCard:I = 0x24


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
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
    const-string v1, "android.app.admin.IDevicePolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 19
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 1527
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 46
    :sswitch_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v3, 0x1

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 60
    .local v4, "_arg0":Landroid/content/ComponentName;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 62
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 63
    .local v6, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;II)V

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    const/4 v3, 0x1

    goto :goto_0

    .line 57
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1

    .line 69
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_2
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 78
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 79
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v16

    .line 80
    .local v16, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    const/4 v3, 0x1

    goto :goto_0

    .line 75
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2

    .line 86
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_3
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 95
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 97
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 98
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;II)V

    .line 99
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 92
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3

    .line 104
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 107
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 113
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 114
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v16

    .line 115
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 110
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":I
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4

    .line 121
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 124
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 130
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 132
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 133
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;II)V

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 127
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5

    .line 139
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_6
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 142
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 148
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 149
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v16

    .line 150
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 145
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":I
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6

    .line 156
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 159
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 165
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 167
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 168
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;II)V

    .line 169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 162
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7

    .line 174
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_8
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 177
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 183
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 184
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v16

    .line 185
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 180
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":I
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8

    .line 191
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_9
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 194
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 200
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 202
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 203
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLetters(Landroid/content/ComponentName;II)V

    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 197
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9

    .line 209
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    .line 212
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 218
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 219
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v16

    .line 220
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 215
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":I
    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a

    .line 226
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    .line 229
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 235
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 237
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 238
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNumeric(Landroid/content/ComponentName;II)V

    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 232
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :cond_a
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b

    .line 244
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_c
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    .line 247
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 253
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 254
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v16

    .line 255
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 250
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":I
    :cond_b
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c

    .line 261
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_d
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    .line 264
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 270
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 272
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 273
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumSymbols(Landroid/content/ComponentName;II)V

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 267
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :cond_c
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d

    .line 279
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_e
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    .line 282
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 288
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 289
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v16

    .line 290
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 285
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":I
    :cond_d
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e

    .line 296
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_f
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    .line 299
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 305
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 307
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 308
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;II)V

    .line 309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 302
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :cond_e
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f

    .line 314
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_10
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    .line 317
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 323
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 324
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v16

    .line 325
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 320
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":I
    :cond_f
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10

    .line 331
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_11
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    .line 334
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 340
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 342
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 343
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistoryLength(Landroid/content/ComponentName;II)V

    .line 344
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 337
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :cond_10
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11

    .line 349
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_12
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    .line 352
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 358
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 359
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v16

    .line 360
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 355
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":I
    :cond_11
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_12

    .line 366
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_13
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    .line 369
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 375
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 377
    .local v14, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 378
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpirationTimeout(Landroid/content/ComponentName;JI)V

    .line 379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 372
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg2":I
    .end local v14    # "_arg1":J
    :cond_12
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_13

    .line 384
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_14
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    .line 387
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 393
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 394
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J

    move-result-wide v16

    .line 395
    .local v16, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 397
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 390
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":J
    :cond_13
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_14

    .line 401
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_15
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    .line 404
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 410
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 411
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpiration(Landroid/content/ComponentName;I)J

    move-result-wide v16

    .line 412
    .restart local v16    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 414
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 407
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":J
    :cond_14
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_15

    .line 418
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_16
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 421
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient(I)Z

    move-result v16

    .line 422
    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    if-eqz v16, :cond_15

    const/4 v3, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 423
    :cond_15
    const/4 v3, 0x0

    goto :goto_16

    .line 428
    .end local v4    # "_arg0":I
    .end local v16    # "_result":Z
    :sswitch_17
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 431
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts(I)I

    move-result v16

    .line 432
    .local v16, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 438
    .end local v4    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_18
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 441
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttemptsInternal(I)I

    move-result v16

    .line 442
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 448
    .end local v4    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_19
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_16

    .line 451
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 457
    .local v4, "_arg0":Landroid/content/ComponentName;
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 459
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 460
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;II)V

    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 454
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :cond_16
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_17

    .line 466
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1a
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_17

    .line 469
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 475
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 476
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v16

    .line 477
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 472
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":I
    :cond_17
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_18

    .line 483
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1b
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 489
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 490
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;II)Z

    move-result v16

    .line 491
    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    if-eqz v16, :cond_18

    const/4 v3, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 492
    :cond_18
    const/4 v3, 0x0

    goto :goto_19

    .line 497
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v16    # "_result":Z
    :sswitch_1c
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_19

    .line 500
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 506
    .local v4, "_arg0":Landroid/content/ComponentName;
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 508
    .restart local v14    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 509
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;JI)V

    .line 510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 503
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg2":I
    .end local v14    # "_arg1":J
    :cond_19
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1a

    .line 515
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1d
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1a

    .line 518
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 524
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 525
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v16

    .line 526
    .local v16, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 528
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 521
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":J
    :cond_1a
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1b

    .line 532
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1e
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b

    .line 535
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 541
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 542
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isRecoveryPasswordSaved(Landroid/content/ComponentName;I)Z

    move-result v16

    .line 543
    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    if-eqz v16, :cond_1c

    const/4 v3, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 538
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :cond_1b
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1c

    .line 544
    .restart local v5    # "_arg1":I
    .restart local v16    # "_result":Z
    :cond_1c
    const/4 v3, 0x0

    goto :goto_1d

    .line 549
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_1f
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1d

    .line 552
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 558
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 560
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 561
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->saveRecoveryPassword(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 562
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 555
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":I
    :cond_1d
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1e

    .line 567
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_20
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1e

    .line 570
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 576
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v5, 0x1

    .line 578
    .local v5, "_arg1":Z
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 579
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSimplePasswordRestricted(Landroid/content/ComponentName;ZI)V

    .line 580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 573
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":I
    :cond_1e
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1f

    .line 576
    :cond_1f
    const/4 v5, 0x0

    goto :goto_20

    .line 585
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_21
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_20

    .line 588
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 594
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 595
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSimplePasswordRestricted(Landroid/content/ComponentName;I)Z

    move-result v16

    .line 596
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    if-eqz v16, :cond_21

    const/4 v3, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 591
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :cond_20
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_21

    .line 597
    .restart local v5    # "_arg1":I
    .restart local v16    # "_result":Z
    :cond_21
    const/4 v3, 0x0

    goto :goto_22

    .line 602
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_22
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow()V

    .line 604
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 609
    :sswitch_23
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 613
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 614
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeData(II)V

    .line 615
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 620
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_24
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_22

    .line 623
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 629
    .local v4, "_arg0":Landroid/content/ComponentName;
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 630
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeExternalSdCard(Landroid/content/ComponentName;I)V

    .line 631
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 626
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    :cond_22
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_23

    .line 636
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_25
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_23

    .line 639
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 645
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 647
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 649
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 650
    .local v7, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v16

    .line 651
    .local v16, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    if-eqz v16, :cond_24

    .line 653
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    const/4 v3, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 659
    :goto_25
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 642
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":I
    .end local v16    # "_result":Landroid/content/ComponentName;
    :cond_23
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_24

    .line 657
    .restart local v5    # "_arg1":Ljava/lang/String;
    .restart local v6    # "_arg2":Ljava/lang/String;
    .restart local v7    # "_arg3":I
    .restart local v16    # "_result":Landroid/content/ComponentName;
    :cond_24
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 663
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":I
    .end local v16    # "_result":Landroid/content/ComponentName;
    :sswitch_26
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 666
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalProxyAdmin(I)Landroid/content/ComponentName;

    move-result-object v16

    .line 667
    .restart local v16    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    if-eqz v16, :cond_25

    .line 669
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    const/4 v3, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 675
    :goto_26
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 673
    :cond_25
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 679
    .end local v4    # "_arg0":I
    .end local v16    # "_result":Landroid/content/ComponentName;
    :sswitch_27
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_26

    .line 682
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 688
    .local v4, "_arg0":Landroid/content/ComponentName;
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_27

    const/4 v5, 0x1

    .line 690
    .local v5, "_arg1":Z
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 691
    .local v6, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStorageEncryption(Landroid/content/ComponentName;ZI)I

    move-result v16

    .line 692
    .local v16, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 685
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":I
    .end local v16    # "_result":I
    :cond_26
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_27

    .line 688
    :cond_27
    const/4 v5, 0x0

    goto :goto_28

    .line 698
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_28
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_28

    .line 701
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 707
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 708
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    move-result v16

    .line 709
    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    if-eqz v16, :cond_29

    const/4 v3, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 711
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 704
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :cond_28
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_29

    .line 710
    .restart local v5    # "_arg1":I
    .restart local v16    # "_result":Z
    :cond_29
    const/4 v3, 0x0

    goto :goto_2a

    .line 715
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_29
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 718
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryptionStatus(I)I

    move-result v16

    .line 719
    .local v16, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 721
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 725
    .end local v4    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_2a
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2a

    .line 728
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 734
    .local v4, "_arg0":Landroid/content/ComponentName;
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v5, 0x1

    .line 736
    .local v5, "_arg1":Z
    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 737
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSdcardEncryption(Landroid/content/ComponentName;ZI)I

    move-result v16

    .line 738
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 731
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":I
    .end local v16    # "_result":I
    :cond_2a
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2b

    .line 734
    :cond_2b
    const/4 v5, 0x0

    goto :goto_2c

    .line 744
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_2b
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2c

    .line 747
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 753
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 754
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSdcardEncryption(Landroid/content/ComponentName;I)Z

    move-result v16

    .line 755
    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    if-eqz v16, :cond_2d

    const/4 v3, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 757
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 750
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :cond_2c
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2d

    .line 756
    .restart local v5    # "_arg1":I
    .restart local v16    # "_result":Z
    :cond_2d
    const/4 v3, 0x0

    goto :goto_2e

    .line 761
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_2c
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 763
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 764
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSdcardEncryptionStatus(I)I

    move-result v16

    .line 765
    .local v16, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 771
    .end local v4    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_2d
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2e

    .line 774
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 780
    .local v4, "_arg0":Landroid/content/ComponentName;
    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2f

    const/4 v5, 0x1

    .line 782
    .local v5, "_arg1":Z
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 783
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCameraDisabled(Landroid/content/ComponentName;ZI)V

    .line 784
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 777
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":I
    :cond_2e
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2f

    .line 780
    :cond_2f
    const/4 v5, 0x0

    goto :goto_30

    .line 789
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_2e
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_30

    .line 792
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 798
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 799
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v16

    .line 800
    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    if-eqz v16, :cond_31

    const/4 v3, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 795
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :cond_30
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_31

    .line 801
    .restart local v5    # "_arg1":I
    .restart local v16    # "_result":Z
    :cond_31
    const/4 v3, 0x0

    goto :goto_32

    .line 806
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_2f
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_32

    .line 809
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 815
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 817
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 818
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;II)V

    .line 819
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 812
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :cond_32
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_33

    .line 824
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_30
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_33

    .line 827
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 833
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 834
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v16

    .line 835
    .local v16, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 837
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 830
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":I
    :cond_33
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_34

    .line 841
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_31
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 843
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_34

    .line 844
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 850
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_35

    const/4 v5, 0x1

    .line 852
    .local v5, "_arg1":Z
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 853
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 854
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 847
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":I
    :cond_34
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_35

    .line 850
    :cond_35
    const/4 v5, 0x0

    goto :goto_36

    .line 859
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_32
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 861
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_36

    .line 862
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 868
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 869
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v16

    .line 870
    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    if-eqz v16, :cond_37

    const/4 v3, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 872
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 865
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :cond_36
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_37

    .line 871
    .restart local v5    # "_arg1":I
    .restart local v16    # "_result":Z
    :cond_37
    const/4 v3, 0x0

    goto :goto_38

    .line 876
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_33
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 879
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v18

    .line 880
    .local v18, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 881
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 882
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 886
    .end local v4    # "_arg0":I
    .end local v18    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_34
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 890
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 891
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v16

    .line 892
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    if-eqz v16, :cond_38

    const/4 v3, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 894
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 893
    :cond_38
    const/4 v3, 0x0

    goto :goto_39

    .line 898
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_35
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_39

    .line 901
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 907
    .local v4, "_arg0":Landroid/content/ComponentName;
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3a

    .line 908
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/RemoteCallback;

    .line 914
    .local v5, "_arg1":Landroid/os/RemoteCallback;
    :goto_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 915
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    .line 916
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 904
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Landroid/os/RemoteCallback;
    .end local v6    # "_arg2":I
    :cond_39
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3a

    .line 911
    :cond_3a
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/os/RemoteCallback;
    goto :goto_3b

    .line 921
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Landroid/os/RemoteCallback;
    :sswitch_36
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3b

    .line 924
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 930
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 931
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 932
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 927
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    :cond_3b
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3c

    .line 937
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_37
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 939
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3c

    .line 940
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 946
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 948
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 949
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v16

    .line 950
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    if-eqz v16, :cond_3d

    const/4 v3, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 952
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 943
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v16    # "_result":Z
    :cond_3c
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3d

    .line 951
    .restart local v5    # "_arg1":I
    .restart local v6    # "_arg2":I
    .restart local v16    # "_result":Z
    :cond_3d
    const/4 v3, 0x0

    goto :goto_3e

    .line 956
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v16    # "_result":Z
    :sswitch_38
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 958
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 960
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 962
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 964
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 966
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 968
    .local v8, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 970
    .local v9, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 972
    .local v10, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 974
    .local v11, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 976
    .local v12, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, "_arg9":I
    move-object/from16 v3, p0

    .line 977
    invoke-virtual/range {v3 .. v13}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState(IIIIIIIIII)V

    .line 978
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 983
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v11    # "_arg7":I
    .end local v12    # "_arg8":I
    .end local v13    # "_arg9":I
    :sswitch_39
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 985
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 986
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt(I)V

    .line 987
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 992
    .end local v4    # "_arg0":I
    :sswitch_3a
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 994
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 995
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt(I)V

    .line 996
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1001
    .end local v4    # "_arg0":I
    :sswitch_3b
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1003
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1005
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1006
    .local v5, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 1007
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1008
    if-eqz v16, :cond_3e

    const/4 v3, 0x1

    :goto_3f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1009
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1008
    :cond_3e
    const/4 v3, 0x0

    goto :goto_3f

    .line 1013
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v16    # "_result":Z
    :sswitch_3c
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1015
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1016
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v16

    .line 1017
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    if-eqz v16, :cond_3f

    const/4 v3, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1019
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1018
    :cond_3f
    const/4 v3, 0x0

    goto :goto_40

    .line 1023
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v16    # "_result":Z
    :sswitch_3d
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwner()Ljava/lang/String;

    move-result-object v16

    .line 1025
    .local v16, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1027
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1031
    .end local v16    # "_result":Ljava/lang/String;
    :sswitch_3e
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1032
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v16

    .line 1033
    .restart local v16    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1035
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1039
    .end local v16    # "_result":Ljava/lang/String;
    :sswitch_3f
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 1042
    .local v4, "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->installCaCert([B)Z

    move-result v16

    .line 1043
    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1044
    if-eqz v16, :cond_40

    const/4 v3, 0x1

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1045
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1044
    :cond_40
    const/4 v3, 0x0

    goto :goto_41

    .line 1049
    .end local v4    # "_arg0":[B
    .end local v16    # "_result":Z
    :sswitch_40
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1051
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 1052
    .restart local v4    # "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallCaCert([B)V

    .line 1053
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1058
    .end local v4    # "_arg0":[B
    :sswitch_41
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1060
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_41

    .line 1061
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1067
    .local v4, "_arg0":Landroid/content/ComponentName;
    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1069
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1070
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->updateApplicationState(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 1071
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1064
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":I
    :cond_41
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_42

    .line 1076
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_42
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1078
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_42

    .line 1079
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1085
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1087
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1088
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isApplicationDisabled(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v16

    .line 1089
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1090
    if-eqz v16, :cond_43

    const/4 v3, 0x1

    :goto_44
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1091
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1082
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":I
    .end local v16    # "_result":Z
    :cond_42
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_43

    .line 1090
    .restart local v5    # "_arg1":Ljava/lang/String;
    .restart local v6    # "_arg2":I
    .restart local v16    # "_result":Z
    :cond_43
    const/4 v3, 0x0

    goto :goto_44

    .line 1095
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":I
    .end local v16    # "_result":Z
    :sswitch_43
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1097
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_44

    .line 1098
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1104
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1105
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->releasePolicies(Landroid/content/ComponentName;I)V

    .line 1106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1107
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1101
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    :cond_44
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_45

    .line 1111
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_44
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_45

    .line 1114
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1120
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 1122
    .local v5, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1124
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1125
    .restart local v7    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->addApplicationsToList(Landroid/content/ComponentName;[Ljava/lang/String;II)V

    .line 1126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1127
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1117
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":[Ljava/lang/String;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    :cond_45
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_46

    .line 1131
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_45
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_46

    .line 1134
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1140
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 1142
    .restart local v5    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1144
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1145
    .restart local v7    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeApplicationsFromList(Landroid/content/ComponentName;[Ljava/lang/String;II)V

    .line 1146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1137
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":[Ljava/lang/String;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    :cond_46
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_47

    .line 1151
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_46
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_47

    .line 1154
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1160
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1162
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1163
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeAllApplicationsFromList(Landroid/content/ComponentName;II)V

    .line 1164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1165
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1157
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :cond_47
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_48

    .line 1169
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_47
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_48

    .line 1172
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1178
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1180
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1182
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1183
    .restart local v7    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->isApplicationListed(Landroid/content/ComponentName;Ljava/lang/String;II)Z

    move-result v16

    .line 1184
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1185
    if-eqz v16, :cond_49

    const/4 v3, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1186
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1175
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v16    # "_result":Z
    :cond_48
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_49

    .line 1185
    .restart local v5    # "_arg1":Ljava/lang/String;
    .restart local v6    # "_arg2":I
    .restart local v7    # "_arg3":I
    .restart local v16    # "_result":Z
    :cond_49
    const/4 v3, 0x0

    goto :goto_4a

    .line 1190
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v16    # "_result":Z
    :sswitch_48
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4a

    .line 1193
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1199
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4b

    const/4 v5, 0x1

    .line 1201
    .local v5, "_arg1":Z
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1202
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBrowserDisabled(Landroid/content/ComponentName;ZI)V

    .line 1203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1204
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1196
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":I
    :cond_4a
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4b

    .line 1199
    :cond_4b
    const/4 v5, 0x0

    goto :goto_4c

    .line 1208
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_49
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4c

    .line 1211
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1217
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1218
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isBrowserDisabled(Landroid/content/ComponentName;I)Z

    move-result v16

    .line 1219
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1220
    if-eqz v16, :cond_4d

    const/4 v3, 0x1

    :goto_4e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1221
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1214
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :cond_4c
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4d

    .line 1220
    .restart local v5    # "_arg1":I
    .restart local v16    # "_result":Z
    :cond_4d
    const/4 v3, 0x0

    goto :goto_4e

    .line 1225
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_4a
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1228
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulRecoveryPasswordAttempt(I)V

    .line 1229
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1230
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1234
    .end local v4    # "_arg0":I
    :sswitch_4b
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4e

    .line 1237
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1243
    .local v4, "_arg0":Landroid/content/ComponentName;
    :goto_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4f

    const/4 v5, 0x1

    .line 1245
    .local v5, "_arg1":Z
    :goto_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1246
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setInfraredDisabled(Landroid/content/ComponentName;ZI)V

    .line 1247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1248
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1240
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":I
    :cond_4e
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4f

    .line 1243
    :cond_4f
    const/4 v5, 0x0

    goto :goto_50

    .line 1252
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4c
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_50

    .line 1255
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1261
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1262
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getInfraredDisabled(Landroid/content/ComponentName;I)Z

    move-result v16

    .line 1263
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    if-eqz v16, :cond_51

    const/4 v3, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1265
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1258
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :cond_50
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_51

    .line 1264
    .restart local v5    # "_arg1":I
    .restart local v16    # "_result":Z
    :cond_51
    const/4 v3, 0x0

    goto :goto_52

    .line 1269
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_4d
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_52

    .line 1272
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1278
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_53

    const/4 v5, 0x1

    .line 1280
    .local v5, "_arg1":Z
    :goto_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1281
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMountingExternalStorageDisabled(Landroid/content/ComponentName;ZI)V

    .line 1282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1283
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1275
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":I
    :cond_52
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_53

    .line 1278
    :cond_53
    const/4 v5, 0x0

    goto :goto_54

    .line 1287
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4e
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_54

    .line 1290
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1296
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1297
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMountingExternalStorageDisabled(Landroid/content/ComponentName;I)Z

    move-result v16

    .line 1298
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    if-eqz v16, :cond_55

    const/4 v3, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1300
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1293
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :cond_54
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_55

    .line 1299
    .restart local v5    # "_arg1":I
    .restart local v16    # "_result":Z
    :cond_55
    const/4 v3, 0x0

    goto :goto_56

    .line 1304
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_4f
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_56

    .line 1307
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1313
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_57

    const/4 v5, 0x1

    .line 1315
    .local v5, "_arg1":Z
    :goto_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1316
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setWifiDisabled(Landroid/content/ComponentName;ZI)V

    .line 1317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1310
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":I
    :cond_56
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_57

    .line 1313
    :cond_57
    const/4 v5, 0x0

    goto :goto_58

    .line 1322
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_50
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_58

    .line 1325
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1331
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1332
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isWifiDisabled(Landroid/content/ComponentName;I)Z

    move-result v16

    .line 1333
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1334
    if-eqz v16, :cond_59

    const/4 v3, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1335
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1328
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :cond_58
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_59

    .line 1334
    .restart local v5    # "_arg1":I
    .restart local v16    # "_result":Z
    :cond_59
    const/4 v3, 0x0

    goto :goto_5a

    .line 1339
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_51
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5a

    .line 1342
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1348
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1350
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1351
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBluetoothPermission(Landroid/content/ComponentName;II)V

    .line 1352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1353
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1345
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :cond_5a
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5b

    .line 1357
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_52
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5b

    .line 1360
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1366
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1367
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothPermission(Landroid/content/ComponentName;I)I

    move-result v16

    .line 1368
    .local v16, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1369
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1370
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1363
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":I
    :cond_5b
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5c

    .line 1374
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_53
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5c

    .line 1377
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1383
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5d

    const/4 v5, 0x1

    .line 1385
    .local v5, "_arg1":Z
    :goto_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1386
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTetheringDisabled(Landroid/content/ComponentName;ZI)V

    .line 1387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1388
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1380
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":I
    :cond_5c
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5d

    .line 1383
    :cond_5d
    const/4 v5, 0x0

    goto :goto_5e

    .line 1392
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_54
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5e

    .line 1395
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1401
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1402
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isTetheringDisabled(Landroid/content/ComponentName;I)Z

    move-result v16

    .line 1403
    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1404
    if-eqz v16, :cond_5f

    const/4 v3, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1405
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1398
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :cond_5e
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5f

    .line 1404
    .restart local v5    # "_arg1":I
    .restart local v16    # "_result":Z
    :cond_5f
    const/4 v3, 0x0

    goto :goto_60

    .line 1409
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_55
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_60

    .line 1412
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1418
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_61

    const/4 v5, 0x1

    .line 1420
    .local v5, "_arg1":Z
    :goto_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1421
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLocalDesktopSyncDisabled(Landroid/content/ComponentName;ZI)V

    .line 1422
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1423
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1415
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":I
    :cond_60
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_61

    .line 1418
    :cond_61
    const/4 v5, 0x0

    goto :goto_62

    .line 1427
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_56
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_62

    .line 1430
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1436
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1437
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLocalDesktopSyncDisabled(Landroid/content/ComponentName;I)Z

    move-result v16

    .line 1438
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1439
    if-eqz v16, :cond_63

    const/4 v3, 0x1

    :goto_64
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1440
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1433
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :cond_62
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_63

    .line 1439
    .restart local v5    # "_arg1":I
    .restart local v16    # "_result":Z
    :cond_63
    const/4 v3, 0x0

    goto :goto_64

    .line 1444
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_57
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_64

    .line 1447
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1453
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_65

    const/4 v5, 0x1

    .line 1455
    .local v5, "_arg1":Z
    :goto_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1456
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDataRoamingDisabled(Landroid/content/ComponentName;ZI)V

    .line 1457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1458
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1450
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":I
    :cond_64
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_65

    .line 1453
    :cond_65
    const/4 v5, 0x0

    goto :goto_66

    .line 1462
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_58
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_66

    .line 1465
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1471
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1472
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDataRoamingDisabled(Landroid/content/ComponentName;I)Z

    move-result v16

    .line 1473
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1474
    if-eqz v16, :cond_67

    const/4 v3, 0x1

    :goto_68
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1475
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1468
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :cond_66
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_67

    .line 1474
    .restart local v5    # "_arg1":I
    .restart local v16    # "_result":Z
    :cond_67
    const/4 v3, 0x0

    goto :goto_68

    .line 1479
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_59
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_68

    .line 1482
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1488
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_69

    const/4 v5, 0x1

    .line 1490
    .local v5, "_arg1":Z
    :goto_6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1491
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoSyncWhenRoamingDisabled(Landroid/content/ComponentName;ZI)V

    .line 1492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1493
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1485
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":I
    :cond_68
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_69

    .line 1488
    :cond_69
    const/4 v5, 0x0

    goto :goto_6a

    .line 1497
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5a
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6a

    .line 1500
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1506
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1507
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAutoSyncWhenRoamingDisabled(Landroid/content/ComponentName;I)Z

    move-result v16

    .line 1508
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1509
    if-eqz v16, :cond_6b

    const/4 v3, 0x1

    :goto_6c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1510
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1503
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :cond_6a
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6b

    .line 1509
    .restart local v5    # "_arg1":I
    .restart local v16    # "_result":Z
    :cond_6b
    const/4 v3, 0x0

    goto :goto_6c

    .line 1514
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v16    # "_result":Z
    :sswitch_5b
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6c

    .line 1517
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1522
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_6d
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->checkCallingUid(Landroid/content/ComponentName;)V

    .line 1523
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1524
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1520
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :cond_6c
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6d

    .line 42
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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
