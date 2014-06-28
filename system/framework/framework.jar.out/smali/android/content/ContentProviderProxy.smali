.class final Landroid/content/ContentProviderProxy;
.super Ljava/lang/Object;
.source "ContentProviderNative.java"

# interfaces
.implements Landroid/content/IContentProvider;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput-object p1, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    .line 382
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 8
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 512
    .local p2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 513
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 515
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v5, "android.content.IContentProvider"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    .line 519
    .local v2, "operation":Landroid/content/ContentProviderOperation;
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentProviderOperation;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 528
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "operation":Landroid/content/ContentProviderOperation;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 529
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v5

    .line 521
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v5, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x14

    const/4 v7, 0x0

    invoke-interface {v5, v6, v0, v3, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 523
    invoke-static {v3}, Landroid/database/DatabaseUtils;->readExceptionWithOperationApplicationExceptionFromParcel(Landroid/os/Parcel;)V

    .line 524
    sget-object v5, Landroid/content/ContentProviderResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    .local v4, "results":[Landroid/content/ContentProviderResult;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 529
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-object v4
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "values"    # [Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 490
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 492
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 495
    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 496
    const/4 v3, 0x0

    invoke-virtual {v1, p3, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 498
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 500
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 501
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 504
    .local v0, "count":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 505
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return v0

    .line 504
    .end local v0    # "count":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 505
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "request"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 635
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 636
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 638
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 645
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 647
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 648
    invoke-virtual {v2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 651
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 652
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 651
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 652
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 725
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 726
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 728
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 730
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 731
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 733
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 735
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 736
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    .local v1, "out":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 740
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .line 739
    .end local v1    # "out":Landroid/net/Uri;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 740
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public createCancellationSignal()Landroid/os/ICancellationSignal;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 705
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 706
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 708
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 710
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 713
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 714
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 718
    .local v0, "cancellationSignal":Landroid/os/ICancellationSignal;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 719
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 718
    .end local v0    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 719
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 535
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 536
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 538
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 541
    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 542
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 545
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 547
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 548
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 551
    .local v0, "count":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 552
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return v0

    .line 551
    .end local v0    # "count":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 552
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 659
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 661
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 663
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 664
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 666
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 668
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 669
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 672
    .local v1, "out":[Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 673
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .line 672
    .end local v1    # "out":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 673
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 449
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 451
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 453
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 455
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 457
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 458
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 461
    .local v1, "out":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 462
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .line 461
    .end local v1    # "out":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 462
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 469
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 471
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 474
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 475
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    .line 477
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 479
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 480
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    .local v1, "out":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 484
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .line 483
    .end local v1    # "out":Landroid/net/Uri;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 484
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "signal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 611
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 613
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.content.IContentProvider"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 615
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 616
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 617
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 618
    if-eqz p4, :cond_1

    invoke-interface {p4}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 620
    iget-object v4, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xf

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 622
    invoke-static {v3}, Landroid/database/DatabaseUtils;->readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V

    .line 623
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 624
    .local v2, "has":I
    if-eqz v2, :cond_0

    sget-object v4, Landroid/content/res/AssetFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 628
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 629
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v2    # "has":I
    :cond_1
    move-object v4, v1

    .line 618
    goto :goto_0

    .line 628
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 629
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "signal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 585
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 587
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.content.IContentProvider"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 590
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 591
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 592
    if-eqz p4, :cond_1

    invoke-interface {p4}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 594
    iget-object v4, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 596
    invoke-static {v3}, Landroid/database/DatabaseUtils;->readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V

    .line 597
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 598
    .local v2, "has":I
    if-eqz v2, :cond_0

    invoke-virtual {v3}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 601
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 602
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "has":I
    :cond_1
    move-object v4, v1

    .line 592
    goto :goto_0

    .line 601
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 602
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "signal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 681
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 683
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.content.IContentProvider"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 685
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 686
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 687
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 689
    if-eqz p5, :cond_1

    invoke-interface {p5}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 691
    iget-object v4, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x17

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 693
    invoke-static {v3}, Landroid/database/DatabaseUtils;->readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V

    .line 694
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 695
    .local v2, "has":I
    if-eqz v2, :cond_0

    sget-object v4, Landroid/content/res/AssetFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 699
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 700
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v2    # "has":I
    :cond_1
    move-object v4, v1

    .line 689
    goto :goto_0

    .line 699
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 700
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .locals 11
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .param p7, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 392
    new-instance v1, Landroid/database/BulkCursorToCursorAdaptor;

    invoke-direct {v1}, Landroid/database/BulkCursorToCursorAdaptor;-><init>()V

    .line 393
    .local v1, "adaptor":Landroid/database/BulkCursorToCursorAdaptor;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 394
    .local v3, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 396
    .local v7, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v8, "android.content.IContentProvider"

    invoke-virtual {v3, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 399
    const/4 v8, 0x0

    invoke-virtual {p2, v3, v8}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 400
    const/4 v6, 0x0

    .line 401
    .local v6, "length":I
    if-eqz p3, :cond_0

    .line 402
    array-length v6, p3

    .line 404
    :cond_0
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 406
    aget-object v8, p3, v5

    invoke-virtual {v3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 405
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 408
    :cond_1
    invoke-virtual {v3, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 409
    if-eqz p5, :cond_2

    .line 410
    move-object/from16 v0, p5

    array-length v6, v0

    .line 414
    :goto_1
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_3

    .line 416
    aget-object v8, p5, v5

    invoke-virtual {v3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 415
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 412
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 418
    :cond_3
    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v1}, Landroid/database/BulkCursorToCursorAdaptor;->getObserver()Landroid/database/IContentObserver;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 420
    if-eqz p7, :cond_4

    invoke-interface/range {p7 .. p7}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :goto_3
    invoke-virtual {v3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 422
    iget-object v8, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v8, v9, v3, v7, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 424
    invoke-static {v7}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 426
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5

    .line 427
    sget-object v8, Landroid/database/BulkCursorDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/BulkCursorDescriptor;

    .line 428
    .local v2, "d":Landroid/database/BulkCursorDescriptor;
    invoke-virtual {v1, v2}, Landroid/database/BulkCursorToCursorAdaptor;->initialize(Landroid/database/BulkCursorDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    .end local v2    # "d":Landroid/database/BulkCursorDescriptor;
    :goto_4
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 442
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .line 420
    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .line 430
    :cond_5
    :try_start_1
    invoke-virtual {v1}, Landroid/database/BulkCursorToCursorAdaptor;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    const/4 v1, 0x0

    goto :goto_4

    .line 434
    .end local v5    # "i":I
    .end local v6    # "length":I
    :catch_0
    move-exception v4

    .line 435
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/database/BulkCursorToCursorAdaptor;->close()V

    .line 436
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 441
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v8

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 442
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    throw v8

    .line 437
    :catch_1
    move-exception v4

    .line 438
    .local v4, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-virtual {v1}, Landroid/database/BulkCursorToCursorAdaptor;->close()V

    .line 439
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 745
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 746
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 748
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 750
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 751
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 753
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 755
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 756
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    .local v1, "out":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 760
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .line 759
    .end local v1    # "out":Landroid/net/Uri;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 760
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 559
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 561
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 564
    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 565
    const/4 v3, 0x0

    invoke-virtual {p3, v1, v3}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    .line 566
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 569
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 571
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 572
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 575
    .local v0, "count":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 576
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return v0

    .line 575
    .end local v0    # "count":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 576
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
