.class Landroid/app/ApplicationThreadProxy;
.super Ljava/lang/Object;
.source "ApplicationThreadNative.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# instance fields
.field private final mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput-object p1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    .line 651
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public final bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ZLandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "testName"    # Landroid/content/ComponentName;
    .param p5, "profileName"    # Ljava/lang/String;
    .param p6, "profileFd"    # Landroid/os/ParcelFileDescriptor;
    .param p7, "autoStopProfiler"    # Z
    .param p8, "testArgs"    # Landroid/os/Bundle;
    .param p9, "testWatcher"    # Landroid/app/IInstrumentationWatcher;
    .param p10, "uiAutomationConnection"    # Landroid/app/IUiAutomationConnection;
    .param p11, "debugMode"    # I
    .param p12, "openGlTrace"    # Z
    .param p13, "restrictedBackupMode"    # Z
    .param p14, "persistent"    # Z
    .param p15, "config"    # Landroid/content/res/Configuration;
    .param p16, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p18, "coreSettings"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            "Z",
            "Landroid/os/Bundle;",
            "Landroid/app/IInstrumentationWatcher;",
            "Landroid/app/IUiAutomationConnection;",
            "IZZZ",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 921
    .local p3, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .local p17, "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 922
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.app.IApplicationThread"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 923
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 924
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 925
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 926
    if-nez p4, :cond_0

    .line 927
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 932
    :goto_0
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 933
    if-eqz p6, :cond_1

    .line 934
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 935
    const/4 v2, 0x1

    invoke-virtual {p6, v1, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 939
    :goto_1
    if-eqz p7, :cond_2

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 940
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 941
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 942
    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 943
    move/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 944
    if-eqz p12, :cond_3

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    if-eqz p13, :cond_4

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 946
    if-eqz p14, :cond_5

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 947
    const/4 v2, 0x0

    move-object/from16 v0, p15

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 948
    const/4 v2, 0x0

    move-object/from16 v0, p16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 949
    move-object/from16 v0, p17

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 950
    move-object/from16 v0, p18

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 951
    iget-object v2, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v2, v3, v1, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 953
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 954
    return-void

    .line 929
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 930
    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 937
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 939
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 944
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 945
    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 946
    :cond_5
    const/4 v2, 0x0

    goto :goto_5
.end method

.method public clearDnsCache()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1002
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1003
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1004
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x26

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1006
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1007
    return-void
.end method

.method public dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 5
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1117
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1119
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1120
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x22

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1124
    return-void
.end method

.method public dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1156
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1157
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1158
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1159
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1160
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1161
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x25

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1163
    return-void
.end method

.method public dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1218
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1220
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1221
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1223
    return-void
.end method

.method public dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1209
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1210
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1211
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1212
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1214
    return-void
.end method

.method public dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .param p1, "managed"    # Z
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1139
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1140
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1141
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1142
    if-eqz p3, :cond_1

    .line 1143
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1144
    invoke-virtual {p3, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1148
    :goto_1
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1151
    return-void

    :cond_0
    move v1, v3

    .line 1140
    goto :goto_0

    .line 1146
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZ[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mem"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1193
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1194
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IApplicationThread"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1196
    invoke-virtual {p2, v0, v4}, Landroid/os/Debug$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1197
    if-eqz p3, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1198
    if-eqz p4, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1199
    if-eqz p5, :cond_2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1200
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1201
    iget-object v2, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1202
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1204
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1205
    return-void

    :cond_0
    move v2, v4

    .line 1197
    goto :goto_0

    :cond_1
    move v2, v4

    .line 1198
    goto :goto_1

    :cond_2
    move v3, v4

    .line 1199
    goto :goto_2
.end method

.method public dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1042
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1043
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1045
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1046
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1047
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1049
    return-void
.end method

.method public dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1031
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1032
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1034
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1035
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1036
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1038
    return-void
.end method

.method public processInBackground()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1022
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1023
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1024
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1027
    return-void
.end method

.method public profilerControl(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)V
    .locals 5
    .param p1, "start"    # Z
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "profileType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1090
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1091
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1092
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1093
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1094
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1095
    if-eqz p3, :cond_1

    .line 1096
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1097
    invoke-virtual {p3, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1101
    :goto_1
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1104
    return-void

    :cond_0
    move v1, v3

    .line 1092
    goto :goto_0

    .line 1099
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "requestToken"    # Landroid/os/IBinder;
    .param p3, "requestType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1238
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1240
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1241
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1242
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1245
    return-void
.end method

.method public final requestThumbnail(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 975
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 976
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 977
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 980
    return-void
.end method

.method public final scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1080
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1081
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1083
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x19

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1086
    return-void
.end method

.method public final scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "rebind"    # Z
    .param p4, "processState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 862
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 863
    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.app.IApplicationThread"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 864
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 865
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 866
    if-eqz p3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 868
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 870
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 871
    return-void
.end method

.method public final scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 985
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 986
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 987
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 990
    return-void
.end method

.method public scheduleCrash(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1128
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1129
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1130
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x23

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1134
    return-void
.end method

.method public final scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 5
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "backupMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 826
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 827
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 828
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 829
    invoke-virtual {p2, v0, v2}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 830
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 834
    return-void
.end method

.method public final scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/content/pm/ServiceInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "processState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 849
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 850
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 851
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 852
    invoke-virtual {p2, v0, v2}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 853
    invoke-virtual {p3, v0, v2}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 854
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 855
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 858
    return-void
.end method

.method public final scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 795
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 796
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 797
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 798
    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 799
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 800
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 803
    return-void

    .line 798
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 5
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 838
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 839
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 841
    invoke-virtual {p2, v0, v2}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 842
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 845
    return-void
.end method

.method public final scheduleExit()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 957
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 958
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 959
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 962
    return-void
.end method

.method public scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .locals 5
    .param p1, "provider"    # Landroid/content/pm/ProviderInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1270
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1271
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1272
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1274
    return-void
.end method

.method public final scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;ILandroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "ident"    # I
    .param p4, "info"    # Landroid/content/pm/ActivityInfo;
    .param p5, "curConfig"    # Landroid/content/res/Configuration;
    .param p6, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p7, "procState"    # I
    .param p8, "state"    # Landroid/os/Bundle;
    .param p11, "notResumed"    # Z
    .param p12, "isForward"    # Z
    .param p13, "profileName"    # Ljava/lang/String;
    .param p14, "profileFd"    # Landroid/os/ParcelFileDescriptor;
    .param p15, "autoStopProfiler"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "I",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 733
    .local p9, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p10, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 734
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.app.IApplicationThread"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 735
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 736
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 737
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 739
    const/4 v2, 0x0

    invoke-virtual {p5, v1, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 740
    const/4 v2, 0x0

    invoke-virtual {p6, v1, v2}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 741
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 742
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 743
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 744
    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 745
    if-eqz p11, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    if-eqz p12, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 747
    move-object/from16 v0, p13

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 748
    if-eqz p14, :cond_2

    .line 749
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    const/4 v2, 0x1

    move-object/from16 v0, p14

    invoke-virtual {v0, v1, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 754
    :goto_2
    if-eqz p15, :cond_3

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    iget-object v2, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v2, v3, v1, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 758
    return-void

    .line 745
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 746
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 752
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 754
    :cond_3
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public final scheduleLowMemory()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1071
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1072
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1073
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1076
    return-void
.end method

.method public scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    .locals 5
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 784
    .local p1, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 785
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 787
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 788
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 791
    return-void
.end method

.method public final schedulePauseActivity(Landroid/os/IBinder;ZZI)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "userLeaving"    # Z
    .param p4, "configChanges"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 659
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 660
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 661
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 662
    if-eqz p2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    if-eqz p3, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 668
    return-void

    :cond_1
    move v1, v3

    .line 662
    goto :goto_0
.end method

.method public final scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "resultCode"    # I
    .param p5, "resultData"    # Ljava/lang/String;
    .param p6, "map"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z
    .param p8, "sendingUser"    # I
    .param p9, "processState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 808
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 809
    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.app.IApplicationThread"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 811
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 812
    invoke-virtual {p3, v0, v1}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 813
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 815
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 816
    if-eqz p7, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 822
    return-void
.end method

.method public scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V
    .locals 5
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "dataStr"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "sendingUser"    # I
    .param p9, "processState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1054
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1055
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1056
    invoke-interface {p1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1057
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1058
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1059
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1061
    if-eqz p6, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1062
    if-eqz p7, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1063
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1064
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1065
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1068
    return-void

    :cond_1
    move v1, v3

    .line 1061
    goto :goto_0
.end method

.method public final scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p4, "configChanges"    # I
    .param p5, "notResumed"    # Z
    .param p6, "config"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;IZ",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p2, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 764
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 765
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 766
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 767
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 768
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 769
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 770
    if-eqz p5, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 771
    if-eqz p6, :cond_1

    .line 772
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    invoke-virtual {p6, v0, v3}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 777
    :goto_1
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 780
    return-void

    :cond_0
    move v1, v3

    .line 770
    goto :goto_0

    .line 775
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public final scheduleResumeActivity(Landroid/os/IBinder;IZ)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "procState"    # I
    .param p3, "isForward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 706
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 707
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 708
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 709
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    if-eqz p3, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 711
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 714
    return-void

    .line 710
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 718
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 719
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 720
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 721
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 722
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 725
    return-void
.end method

.method public final scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskRemoved"    # Z
    .param p3, "startId"    # I
    .param p4, "flags"    # I
    .param p5, "args"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 887
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 888
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 889
    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 892
    if-eqz p5, :cond_1

    .line 893
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 894
    invoke-virtual {p5, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 898
    :goto_1
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 901
    return-void

    :cond_0
    move v1, v3

    .line 889
    goto :goto_0

    .line 896
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public final scheduleSleeping(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sleeping"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 695
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 696
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 698
    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 702
    return-void

    .line 698
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final scheduleStopActivity(Landroid/os/IBinder;ZI)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "showWindow"    # Z
    .param p3, "configChanges"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 672
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 673
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 675
    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 677
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 680
    return-void

    .line 675
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final scheduleStopService(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 905
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 906
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 907
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 908
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 911
    return-void
.end method

.method public final scheduleSuicide()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 966
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 967
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 970
    return-void
.end method

.method public scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timeout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1251
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1253
    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1254
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1256
    return-void

    .line 1253
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public scheduleTrimMemory(I)V
    .locals 5
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1184
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1186
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1188
    return-void
.end method

.method public final scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 875
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 876
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 877
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 878
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 879
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 882
    return-void
.end method

.method public final scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "showWindow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 684
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 685
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 687
    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 691
    return-void

    .line 687
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCoreSettings(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "coreSettings"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1167
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1169
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x28

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1170
    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "proxy"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "exclList"    # Ljava/lang/String;
    .param p4, "pacFileUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1011
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1012
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1017
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x27

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1019
    return-void
.end method

.method public setProcessState(I)V
    .locals 5
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1261
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1262
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1263
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x32

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1265
    return-void
.end method

.method public setSchedulingGroup(I)V
    .locals 5
    .param p1, "group"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1108
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1110
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1113
    return-void
.end method

.method public unstableProviderDied(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "provider"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1228
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1229
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1230
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1232
    return-void
.end method

.method public updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/res/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1175
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1177
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/CompatibilityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1178
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x29

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1180
    return-void
.end method

.method public updateTimeZone(Ljava/lang/String;)V
    .locals 5
    .param p1, "timeZone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 993
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 994
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IApplicationThread"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 995
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 996
    iget-object v1, p0, Landroid/app/ApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 998
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 999
    return-void
.end method
