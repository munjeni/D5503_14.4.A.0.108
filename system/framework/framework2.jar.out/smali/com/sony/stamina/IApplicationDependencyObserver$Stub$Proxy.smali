.class Lcom/sony/stamina/IApplicationDependencyObserver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IApplicationDependencyObserver.java"

# interfaces
.implements Lcom/sony/stamina/IApplicationDependencyObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sony/stamina/IApplicationDependencyObserver$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/sony/stamina/IApplicationDependencyObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 95
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sony/stamina/IApplicationDependencyObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "com.sony.stamina.IApplicationDependencyObserver"

    return-object v0
.end method

.method public onDependencyAdded(Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V
    .locals 5
    .param p1, "from"    # Lcom/sony/stamina/ProcessInfo;
    .param p2, "to"    # Lcom/sony/stamina/ProcessInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 108
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.sony.stamina.IApplicationDependencyObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 109
    if-eqz p1, :cond_0

    .line 110
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sony/stamina/ProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 116
    :goto_0
    if-eqz p2, :cond_1

    .line 117
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/sony/stamina/ProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 123
    :goto_1
    iget-object v1, p0, Lcom/sony/stamina/IApplicationDependencyObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 128
    return-void

    .line 114
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    .line 121
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onDependencyRemoved(Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V
    .locals 5
    .param p1, "from"    # Lcom/sony/stamina/ProcessInfo;
    .param p2, "to"    # Lcom/sony/stamina/ProcessInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 133
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.sony.stamina.IApplicationDependencyObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 134
    if-eqz p1, :cond_0

    .line 135
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sony/stamina/ProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 141
    :goto_0
    if-eqz p2, :cond_1

    .line 142
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/sony/stamina/ProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 148
    :goto_1
    iget-object v1, p0, Lcom/sony/stamina/IApplicationDependencyObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    return-void

    .line 139
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    .line 146
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
