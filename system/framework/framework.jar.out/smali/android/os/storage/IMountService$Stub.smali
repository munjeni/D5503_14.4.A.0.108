.class public abstract Landroid/os/storage/IMountService$Stub;
.super Landroid/os/Binder;
.source "IMountService.java"

# interfaces
.implements Landroid/os/storage/IMountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IMountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IMountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IMountService"

.field static final TRANSACTION_changeEncryptionPassword:I = 0x1d

.field static final TRANSACTION_createSecureContainer:I = 0xb

.field static final TRANSACTION_decryptStorage:I = 0x1b

.field static final TRANSACTION_destroySecureContainer:I = 0xd

.field static final TRANSACTION_encryptStorage:I = 0x1c

.field static final TRANSACTION_finalizeSecureContainer:I = 0xc

.field static final TRANSACTION_finishMediaUpdate:I = 0x15

.field static final TRANSACTION_fixPermissionsSecureContainer:I = 0x22

.field static final TRANSACTION_formatVolume:I = 0x8

.field static final TRANSACTION_getEncryptionState:I = 0x20

.field static final TRANSACTION_getMountedObbPath:I = 0x19

.field static final TRANSACTION_getSecureContainerFilesystemPath:I = 0x1f

.field static final TRANSACTION_getSecureContainerList:I = 0x13

.field static final TRANSACTION_getSecureContainerPath:I = 0x12

.field static final TRANSACTION_getStorageUsers:I = 0x9

.field static final TRANSACTION_getVolumeList:I = 0x1e

.field static final TRANSACTION_getVolumeState:I = 0xa

.field static final TRANSACTION_isExternalSdCardUnencrypted:I = 0x24

.field static final TRANSACTION_isExternalStorageEmulated:I = 0x1a

.field static final TRANSACTION_isObbMounted:I = 0x18

.field static final TRANSACTION_isSecureContainerMounted:I = 0x10

.field static final TRANSACTION_isUsbMassStorageConnected:I = 0x3

.field static final TRANSACTION_isUsbMassStorageEnabled:I = 0x5

.field static final TRANSACTION_mkdirs:I = 0x23

.field static final TRANSACTION_mountObb:I = 0x16

.field static final TRANSACTION_mountSecureContainer:I = 0xe

.field static final TRANSACTION_mountVolume:I = 0x6

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_renameSecureContainer:I = 0x11

.field static final TRANSACTION_setUsbMassStorageEnabled:I = 0x4

.field static final TRANSACTION_shutdown:I = 0x14

.field static final TRANSACTION_unmountObb:I = 0x17

.field static final TRANSACTION_unmountSecureContainer:I = 0xf

.field static final TRANSACTION_unmountVolume:I = 0x7

.field static final TRANSACTION_unregisterListener:I = 0x2

.field static final TRANSACTION_verifyEncryptionPassword:I = 0x21


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 878
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 879
    const-string v0, "IMountService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 880
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 867
    if-nez p0, :cond_0

    .line 868
    const/4 v0, 0x0

    .line 874
    :goto_0
    return-object v0

    .line 870
    :cond_0
    const-string v1, "IMountService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 871
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/IMountService;

    if-eqz v1, :cond_1

    .line 872
    check-cast v0, Landroid/os/storage/IMountService;

    goto :goto_0

    .line 874
    :cond_1
    new-instance v0, Landroid/os/storage/IMountService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/storage/IMountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 883
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 39
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
    .line 889
    sparse-switch p1, :sswitch_data_0

    .line 1223
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 891
    :sswitch_0
    const-string v4, "IMountService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 892
    const/4 v4, 0x1

    goto :goto_0

    .line 895
    :sswitch_1
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v25

    .line 898
    .local v25, "listener":Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->registerListener(Landroid/os/storage/IMountServiceListener;)V

    .line 899
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    const/4 v4, 0x1

    goto :goto_0

    .line 903
    .end local v25    # "listener":Landroid/os/storage/IMountServiceListener;
    :sswitch_2
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 905
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v25

    .line 906
    .restart local v25    # "listener":Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unregisterListener(Landroid/os/storage/IMountServiceListener;)V

    .line 907
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    const/4 v4, 0x1

    goto :goto_0

    .line 911
    .end local v25    # "listener":Landroid/os/storage/IMountServiceListener;
    :sswitch_3
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageConnected()Z

    move-result v34

    .line 913
    .local v34, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    if-eqz v34, :cond_0

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 915
    const/4 v4, 0x1

    goto :goto_0

    .line 914
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 918
    .end local v34    # "result":Z
    :sswitch_4
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v19, 0x1

    .line 921
    .local v19, "enable":Z
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->setUsbMassStorageEnabled(Z)V

    .line 922
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 923
    const/4 v4, 0x1

    goto :goto_0

    .line 920
    .end local v19    # "enable":Z
    :cond_1
    const/16 v19, 0x0

    goto :goto_2

    .line 926
    :sswitch_5
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 927
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageEnabled()Z

    move-result v34

    .line 928
    .restart local v34    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    if-eqz v34, :cond_2

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 930
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 929
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 933
    .end local v34    # "result":Z
    :sswitch_6
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 935
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 936
    .local v26, "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mountVolume(Ljava/lang/String;)I

    move-result v35

    .line 937
    .local v35, "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 942
    .end local v26    # "mountPoint":Ljava/lang/String;
    .end local v35    # "resultCode":I
    :sswitch_7
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 945
    .restart local v26    # "mountPoint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v22, 0x1

    .line 946
    .local v22, "force":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v33, 0x1

    .line 947
    .local v33, "removeEncrypt":Z
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v22

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 948
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 945
    .end local v22    # "force":Z
    .end local v33    # "removeEncrypt":Z
    :cond_3
    const/16 v22, 0x0

    goto :goto_4

    .line 946
    .restart local v22    # "force":Z
    :cond_4
    const/16 v33, 0x0

    goto :goto_5

    .line 952
    .end local v22    # "force":Z
    .end local v26    # "mountPoint":Ljava/lang/String;
    :sswitch_8
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 955
    .restart local v26    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->formatVolume(Ljava/lang/String;)I

    move-result v34

    .line 956
    .local v34, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 958
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 961
    .end local v26    # "mountPoint":Ljava/lang/String;
    .end local v34    # "result":I
    :sswitch_9
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 963
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 964
    .local v31, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v32

    .line 965
    .local v32, "pids":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 967
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 970
    .end local v31    # "path":Ljava/lang/String;
    .end local v32    # "pids":[I
    :sswitch_a
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 972
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 973
    .restart local v26    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 974
    .local v36, "state":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 976
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 979
    .end local v26    # "mountPoint":Ljava/lang/String;
    .end local v36    # "state":Ljava/lang/String;
    :sswitch_b
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 981
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 983
    .local v5, "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 985
    .local v6, "sizeMb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 987
    .local v7, "fstype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 989
    .local v8, "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 991
    .local v9, "ownerUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v10, 0x1

    .local v10, "external":Z
    :goto_6
    move-object/from16 v4, p0

    .line 992
    invoke-virtual/range {v4 .. v10}, Landroid/os/storage/IMountService$Stub;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    move-result v35

    .line 994
    .restart local v35    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 995
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 996
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 991
    .end local v10    # "external":Z
    .end local v35    # "resultCode":I
    :cond_5
    const/4 v10, 0x0

    goto :goto_6

    .line 999
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "sizeMb":I
    .end local v7    # "fstype":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "ownerUid":I
    :sswitch_c
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1001
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1002
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->finalizeSecureContainer(Ljava/lang/String;)I

    move-result v35

    .line 1003
    .restart local v35    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1005
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1008
    .end local v5    # "id":Ljava/lang/String;
    .end local v35    # "resultCode":I
    :sswitch_d
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1010
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1012
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    const/16 v22, 0x1

    .line 1013
    .restart local v22    # "force":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/os/storage/IMountService$Stub;->destroySecureContainer(Ljava/lang/String;Z)I

    move-result v35

    .line 1014
    .restart local v35    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1015
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1016
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1012
    .end local v22    # "force":Z
    .end local v35    # "resultCode":I
    :cond_6
    const/16 v22, 0x0

    goto :goto_7

    .line 1019
    .end local v5    # "id":Ljava/lang/String;
    :sswitch_e
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1021
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1023
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1025
    .restart local v8    # "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1026
    .restart local v9    # "ownerUid":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8, v9}, Landroid/os/storage/IMountService$Stub;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v35

    .line 1027
    .restart local v35    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1028
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1029
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1032
    .end local v5    # "id":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "ownerUid":I
    .end local v35    # "resultCode":I
    :sswitch_f
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1034
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1036
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    const/16 v22, 0x1

    .line 1037
    .restart local v22    # "force":Z
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/os/storage/IMountService$Stub;->unmountSecureContainer(Ljava/lang/String;Z)I

    move-result v35

    .line 1038
    .restart local v35    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1039
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1040
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1036
    .end local v22    # "force":Z
    .end local v35    # "resultCode":I
    :cond_7
    const/16 v22, 0x0

    goto :goto_8

    .line 1043
    .end local v5    # "id":Ljava/lang/String;
    :sswitch_10
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1045
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1046
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->isSecureContainerMounted(Ljava/lang/String;)Z

    move-result v37

    .line 1047
    .local v37, "status":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1048
    if-eqz v37, :cond_8

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1049
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1048
    :cond_8
    const/4 v4, 0x0

    goto :goto_9

    .line 1052
    .end local v5    # "id":Ljava/lang/String;
    .end local v37    # "status":Z
    :sswitch_11
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1054
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1056
    .local v29, "oldId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 1057
    .local v28, "newId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v35

    .line 1058
    .restart local v35    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1060
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1063
    .end local v28    # "newId":Ljava/lang/String;
    .end local v29    # "oldId":Ljava/lang/String;
    .end local v35    # "resultCode":I
    :sswitch_12
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1066
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1067
    .restart local v31    # "path":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1069
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1072
    .end local v5    # "id":Ljava/lang/String;
    .end local v31    # "path":Ljava/lang/String;
    :sswitch_13
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1073
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v24

    .line 1074
    .local v24, "ids":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1075
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1076
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1079
    .end local v24    # "ids":[Ljava/lang/String;
    :sswitch_14
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1081
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountShutdownObserver;

    move-result-object v15

    .line 1083
    .local v15, "observer":Landroid/os/storage/IMountShutdownObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/os/storage/IMountService$Stub;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V

    .line 1084
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1088
    .end local v15    # "observer":Landroid/os/storage/IMountShutdownObserver;
    :sswitch_15
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1089
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->finishMediaUpdate()V

    .line 1090
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1091
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1094
    :sswitch_16
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1095
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1096
    .local v12, "rawPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1097
    .local v13, "canonicalPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1099
    .restart local v8    # "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v15

    .line 1101
    .local v15, "observer":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .local v16, "nonce":I
    move-object/from16 v11, p0

    move-object v14, v8

    .line 1102
    invoke-virtual/range {v11 .. v16}, Landroid/os/storage/IMountService$Stub;->mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V

    .line 1103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1107
    .end local v8    # "key":Ljava/lang/String;
    .end local v12    # "rawPath":Ljava/lang/String;
    .end local v13    # "canonicalPath":Ljava/lang/String;
    .end local v15    # "observer":Landroid/os/storage/IObbActionListener;
    .end local v16    # "nonce":I
    :sswitch_17
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1111
    .local v21, "filename":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v22, 0x1

    .line 1113
    .restart local v22    # "force":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v15

    .line 1115
    .restart local v15    # "observer":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1116
    .restart local v16    # "nonce":I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/os/storage/IMountService$Stub;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    .line 1117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1118
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1111
    .end local v15    # "observer":Landroid/os/storage/IObbActionListener;
    .end local v16    # "nonce":I
    .end local v22    # "force":Z
    :cond_9
    const/16 v22, 0x0

    goto :goto_a

    .line 1121
    .end local v21    # "filename":Ljava/lang/String;
    :sswitch_18
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1124
    .restart local v21    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->isObbMounted(Ljava/lang/String;)Z

    move-result v37

    .line 1125
    .restart local v37    # "status":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    if-eqz v37, :cond_a

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1127
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1126
    :cond_a
    const/4 v4, 0x0

    goto :goto_b

    .line 1130
    .end local v21    # "filename":Ljava/lang/String;
    .end local v37    # "status":Z
    :sswitch_19
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1133
    .restart local v21    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1134
    .local v27, "mountedPath":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1136
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1139
    .end local v21    # "filename":Ljava/lang/String;
    .end local v27    # "mountedPath":Ljava/lang/String;
    :sswitch_1a
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1140
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isExternalStorageEmulated()Z

    move-result v18

    .line 1141
    .local v18, "emulated":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1142
    if-eqz v18, :cond_b

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1143
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1142
    :cond_b
    const/4 v4, 0x0

    goto :goto_c

    .line 1146
    .end local v18    # "emulated":Z
    :sswitch_1b
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1147
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isExternalSdCardUnencrypted()Z

    move-result v38

    .line 1148
    .local v38, "unencrypted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1149
    if-eqz v38, :cond_c

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1150
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1149
    :cond_c
    const/4 v4, 0x0

    goto :goto_d

    .line 1153
    .end local v38    # "unencrypted":Z
    :sswitch_1c
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1155
    .local v30, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->decryptStorage(Ljava/lang/String;)I

    move-result v34

    .line 1156
    .restart local v34    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1158
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1161
    .end local v30    # "password":Ljava/lang/String;
    .end local v34    # "result":I
    :sswitch_1d
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1163
    .restart local v30    # "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    const/16 v20, 0x1

    .line 1164
    .local v20, "encryptExternal":Z
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->encryptStorage(Ljava/lang/String;Z)I

    move-result v34

    .line 1165
    .restart local v34    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1166
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1167
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1163
    .end local v20    # "encryptExternal":Z
    .end local v34    # "result":I
    :cond_d
    const/16 v20, 0x0

    goto :goto_e

    .line 1170
    .end local v30    # "password":Ljava/lang/String;
    :sswitch_1e
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1172
    .restart local v30    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->changeEncryptionPassword(Ljava/lang/String;)I

    move-result v34

    .line 1173
    .restart local v34    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1175
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1178
    .end local v30    # "password":Ljava/lang/String;
    .end local v34    # "result":I
    :sswitch_1f
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1179
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v34

    .line 1180
    .local v34, "result":[Landroid/os/storage/StorageVolume;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1181
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1182
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1185
    .end local v34    # "result":[Landroid/os/storage/StorageVolume;
    :sswitch_20
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1188
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1189
    .restart local v31    # "path":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1190
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1191
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1194
    .end local v5    # "id":Ljava/lang/String;
    .end local v31    # "path":Ljava/lang/String;
    :sswitch_21
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1195
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getEncryptionState()I

    move-result v34

    .line 1196
    .local v34, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1198
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1201
    .end local v34    # "result":I
    :sswitch_22
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1205
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1207
    .local v23, "gid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1208
    .restart local v21    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/storage/IMountService$Stub;->fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v35

    .line 1209
    .restart local v35    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1210
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1211
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1214
    .end local v5    # "id":Ljava/lang/String;
    .end local v21    # "filename":Ljava/lang/String;
    .end local v23    # "gid":I
    .end local v35    # "resultCode":I
    :sswitch_23
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1216
    .local v17, "callingPkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1217
    .restart local v31    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->mkdirs(Ljava/lang/String;Ljava/lang/String;)I

    move-result v34

    .line 1218
    .restart local v34    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1220
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 889
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
        0x1b -> :sswitch_1c
        0x1c -> :sswitch_1d
        0x1d -> :sswitch_1e
        0x1e -> :sswitch_1f
        0x1f -> :sswitch_20
        0x20 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_1b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
