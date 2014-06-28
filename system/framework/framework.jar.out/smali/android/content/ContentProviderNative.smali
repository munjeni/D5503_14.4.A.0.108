.class public abstract Landroid/content/ContentProviderNative;
.super Landroid/os/Binder;
.source "ContentProviderNative.java"

# interfaces
.implements Landroid/content/IContentProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.content.IContentProvider"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IContentProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 58
    if-nez p0, :cond_1

    .line 59
    const/4 v0, 0x0

    .line 67
    :cond_0
    :goto_0
    return-object v0

    .line 61
    :cond_1
    const-string v1, "android.content.IContentProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/IContentProvider;

    .line 63
    .local v0, "in":Landroid/content/IContentProvider;
    if-nez v0, :cond_0

    .line 67
    new-instance v0, Landroid/content/ContentProviderProxy;

    .end local v0    # "in":Landroid/content/IContentProvider;
    invoke-direct {v0, p0}, Landroid/content/ContentProviderProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 372
    return-object p0
.end method

.method public abstract getProviderName()Ljava/lang/String;
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 44
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
    .line 81
    packed-switch p1, :pswitch_data_0

    .line 367
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 84
    :pswitch_1
    :try_start_0
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 90
    .local v6, "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 91
    .local v34, "num":I
    const/4 v7, 0x0

    .line 92
    .local v7, "projection":[Ljava/lang/String;
    if-lez v34, :cond_0

    .line 93
    move/from16 v0, v34

    new-array v7, v0, [Ljava/lang/String;

    .line 94
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_1
    move/from16 v0, v30

    move/from16 v1, v34

    if-ge v0, v1, :cond_0

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v30

    .line 94
    add-int/lit8 v30, v30, 0x1

    goto :goto_1

    .line 100
    .end local v30    # "i":I
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 101
    .local v8, "selection":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 102
    const/4 v9, 0x0

    .line 103
    .local v9, "selectionArgs":[Ljava/lang/String;
    if-lez v34, :cond_1

    .line 104
    move/from16 v0, v34

    new-array v9, v0, [Ljava/lang/String;

    .line 105
    const/16 v30, 0x0

    .restart local v30    # "i":I
    :goto_2
    move/from16 v0, v30

    move/from16 v1, v34

    if-ge v0, v1, :cond_1

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v30

    .line 105
    add-int/lit8 v30, v30, 0x1

    goto :goto_2

    .line 110
    .end local v30    # "i":I
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 111
    .local v10, "sortOrder":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v36

    .line 113
    .local v36, "observer":Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v11

    .local v11, "cancellationSignal":Landroid/os/ICancellationSignal;
    move-object/from16 v4, p0

    .line 116
    invoke-virtual/range {v4 .. v11}, Landroid/content/ContentProviderNative;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v26

    .line 118
    .local v26, "cursor":Landroid/database/Cursor;
    if-eqz v26, :cond_6

    .line 119
    const/16 v22, 0x0

    .line 122
    .local v22, "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    :try_start_1
    new-instance v23, Landroid/database/CursorToBulkCursorAdaptor;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProviderNative;->getProviderName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2, v4}, Landroid/database/CursorToBulkCursorAdaptor;-><init>(Landroid/database/Cursor;Landroid/database/IContentObserver;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    .end local v22    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    .local v23, "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    const/16 v26, 0x0

    .line 126
    :try_start_2
    invoke-virtual/range {v23 .. v23}, Landroid/database/CursorToBulkCursorAdaptor;->getBulkCursorDescriptor()Landroid/database/BulkCursorDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v27

    .line 127
    .local v27, "d":Landroid/database/BulkCursorDescriptor;
    const/16 v22, 0x0

    .line 129
    .end local v23    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    .restart local v22    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/database/BulkCursorDescriptor;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    if-eqz v22, :cond_2

    .line 135
    :try_start_4
    throw v22

    .line 137
    :cond_2
    if-eqz v26, :cond_3

    .line 138
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 146
    .end local v22    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    .end local v27    # "d":Landroid/database/BulkCursorDescriptor;
    :cond_3
    :goto_3
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 134
    .restart local v22    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v22, :cond_4

    .line 135
    invoke-virtual/range {v22 .. v22}, Landroid/database/CursorToBulkCursorAdaptor;->close()V

    .line 137
    :cond_4
    if-eqz v26, :cond_5

    .line 138
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 362
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v7    # "projection":[Ljava/lang/String;
    .end local v8    # "selection":Ljava/lang/String;
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    .end local v10    # "sortOrder":Ljava/lang/String;
    .end local v11    # "cancellationSignal":Landroid/os/ICancellationSignal;
    .end local v22    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    .end local v26    # "cursor":Landroid/database/Cursor;
    .end local v34    # "num":I
    .end local v36    # "observer":Landroid/database/IContentObserver;
    :catch_0
    move-exception v28

    .line 363
    .local v28, "e":Ljava/lang/Exception;
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V

    .line 364
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 142
    .end local v28    # "e":Ljava/lang/Exception;
    .restart local v5    # "callingPkg":Ljava/lang/String;
    .restart local v6    # "url":Landroid/net/Uri;
    .restart local v7    # "projection":[Ljava/lang/String;
    .restart local v8    # "selection":Ljava/lang/String;
    .restart local v9    # "selectionArgs":[Ljava/lang/String;
    .restart local v10    # "sortOrder":Ljava/lang/String;
    .restart local v11    # "cancellationSignal":Landroid/os/ICancellationSignal;
    .restart local v26    # "cursor":Landroid/database/Cursor;
    .restart local v34    # "num":I
    .restart local v36    # "observer":Landroid/database/IContentObserver;
    :cond_6
    :try_start_5
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 151
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v7    # "projection":[Ljava/lang/String;
    .end local v8    # "selection":Ljava/lang/String;
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    .end local v10    # "sortOrder":Ljava/lang/String;
    .end local v11    # "cancellationSignal":Landroid/os/ICancellationSignal;
    .end local v26    # "cursor":Landroid/database/Cursor;
    .end local v34    # "num":I
    .end local v36    # "observer":Landroid/database/IContentObserver;
    :pswitch_2
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 153
    .restart local v6    # "url":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/ContentProviderNative;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v42

    .line 154
    .local v42, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 162
    .end local v6    # "url":Landroid/net/Uri;
    .end local v42    # "type":Ljava/lang/String;
    :pswitch_3
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 164
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 165
    .restart local v6    # "url":Landroid/net/Uri;
    sget-object v4, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    .line 167
    .local v15, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v15}, Landroid/content/ContentProviderNative;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v38

    .line 168
    .local v38, "out":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 170
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 175
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v15    # "values":Landroid/content/ContentValues;
    .end local v38    # "out":Landroid/net/Uri;
    :pswitch_4
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 177
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 178
    .restart local v6    # "url":Landroid/net/Uri;
    sget-object v4, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/content/ContentValues;

    .line 180
    .local v15, "values":[Landroid/content/ContentValues;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v15}, Landroid/content/ContentProviderNative;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v25

    .line 181
    .local v25, "count":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 188
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v15    # "values":[Landroid/content/ContentValues;
    .end local v25    # "count":I
    :pswitch_5
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 190
    .restart local v5    # "callingPkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    .line 191
    .local v35, "numOperations":I
    new-instance v37, Ljava/util/ArrayList;

    move-object/from16 v0, v37

    move/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    .local v37, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v30, 0x0

    .restart local v30    # "i":I
    :goto_5
    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_7

    .line 194
    sget-object v4, Landroid/content/ContentProviderOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v37

    move/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 193
    add-int/lit8 v30, v30, 0x1

    goto :goto_5

    .line 196
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentProviderNative;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v40

    .line 197
    .local v40, "results":[Landroid/content/ContentProviderResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 199
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 204
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v30    # "i":I
    .end local v35    # "numOperations":I
    .end local v37    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v40    # "results":[Landroid/content/ContentProviderResult;
    :pswitch_6
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 206
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 207
    .restart local v6    # "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 208
    .restart local v8    # "selection":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 210
    .restart local v9    # "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8, v9}, Landroid/content/ContentProviderNative;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    .line 212
    .restart local v25    # "count":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 219
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v8    # "selection":Ljava/lang/String;
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    .end local v25    # "count":I
    :pswitch_7
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 221
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 222
    .restart local v6    # "url":Landroid/net/Uri;
    sget-object v4, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    .line 223
    .local v15, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 224
    .restart local v8    # "selection":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "selectionArgs":[Ljava/lang/String;
    move-object/from16 v12, p0

    move-object v13, v5

    move-object v14, v6

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    .line 226
    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentProviderNative;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    .line 228
    .restart local v25    # "count":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 235
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v8    # "selection":Ljava/lang/String;
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    .end local v15    # "values":Landroid/content/ContentValues;
    .end local v25    # "count":I
    :pswitch_8
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 237
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 238
    .restart local v6    # "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 239
    .local v33, "mode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v21

    .line 243
    .local v21, "signal":Landroid/os/ICancellationSignal;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v21

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/content/ContentProviderNative;->openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v29

    .line 244
    .local v29, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v29, :cond_8

    .line 246
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    const/4 v4, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 252
    :goto_6
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 250
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 257
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v21    # "signal":Landroid/os/ICancellationSignal;
    .end local v29    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v33    # "mode":Ljava/lang/String;
    :pswitch_9
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 259
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 260
    .restart local v6    # "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 261
    .restart local v33    # "mode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v21

    .line 265
    .restart local v21    # "signal":Landroid/os/ICancellationSignal;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v21

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/content/ContentProviderNative;->openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v29

    .line 266
    .local v29, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    if-eqz v29, :cond_9

    .line 268
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    const/4 v4, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 274
    :goto_7
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 272
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 279
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v21    # "signal":Landroid/os/ICancellationSignal;
    .end local v29    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v33    # "mode":Ljava/lang/String;
    :pswitch_a
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 282
    .restart local v5    # "callingPkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 283
    .local v31, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 284
    .local v41, "stringArg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v24

    .line 286
    .local v24, "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v41

    move-object/from16 v3, v24

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/content/ContentProviderNative;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v39

    .line 288
    .local v39, "responseBundle":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 290
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 295
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v24    # "args":Landroid/os/Bundle;
    .end local v31    # "method":Ljava/lang/String;
    .end local v39    # "responseBundle":Landroid/os/Bundle;
    .end local v41    # "stringArg":Ljava/lang/String;
    :pswitch_b
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 297
    .restart local v6    # "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 298
    .local v32, "mimeTypeFilter":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentProviderNative;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v43

    .line 299
    .local v43, "types":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    move-object/from16 v0, p3

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 302
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 307
    .end local v6    # "url":Landroid/net/Uri;
    .end local v32    # "mimeTypeFilter":Ljava/lang/String;
    .end local v43    # "types":[Ljava/lang/String;
    :pswitch_c
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 309
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 310
    .restart local v6    # "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 311
    .local v19, "mimeType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v20

    .line 312
    .local v20, "opts":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v21

    .restart local v21    # "signal":Landroid/os/ICancellationSignal;
    move-object/from16 v16, p0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 316
    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentProviderNative;->openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v29

    .line 317
    .restart local v29    # "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    if-eqz v29, :cond_a

    .line 319
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    const/4 v4, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 325
    :goto_8
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 323
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 330
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v19    # "mimeType":Ljava/lang/String;
    .end local v20    # "opts":Landroid/os/Bundle;
    .end local v21    # "signal":Landroid/os/ICancellationSignal;
    .end local v29    # "fd":Landroid/content/res/AssetFileDescriptor;
    :pswitch_d
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProviderNative;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v11

    .line 333
    .restart local v11    # "cancellationSignal":Landroid/os/ICancellationSignal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-interface {v11}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 335
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 340
    .end local v11    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :pswitch_e
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 342
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 344
    .restart local v6    # "url":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderNative;->canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v38

    .line 345
    .restart local v38    # "out":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 347
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 352
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v38    # "out":Landroid/net/Uri;
    :pswitch_f
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 354
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 356
    .restart local v6    # "url":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderNative;->uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v38

    .line 357
    .restart local v38    # "out":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 359
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 134
    .end local v38    # "out":Landroid/net/Uri;
    .restart local v7    # "projection":[Ljava/lang/String;
    .restart local v8    # "selection":Ljava/lang/String;
    .restart local v9    # "selectionArgs":[Ljava/lang/String;
    .restart local v10    # "sortOrder":Ljava/lang/String;
    .restart local v11    # "cancellationSignal":Landroid/os/ICancellationSignal;
    .restart local v23    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    .restart local v26    # "cursor":Landroid/database/Cursor;
    .restart local v34    # "num":I
    .restart local v36    # "observer":Landroid/database/IContentObserver;
    :catchall_1
    move-exception v4

    move-object/from16 v22, v23

    .end local v23    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    .restart local v22    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    goto/16 :goto_4

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
