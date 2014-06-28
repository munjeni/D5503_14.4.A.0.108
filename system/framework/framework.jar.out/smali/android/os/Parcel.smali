.class public final Landroid/os/Parcel;
.super Ljava/lang/Object;
.source "Parcel.java"


# static fields
.field private static final DEBUG_ARRAY_MAP:Z = false

.field private static final DEBUG_RECYCLE:Z = false

.field private static final EX_BAD_PARCELABLE:I = -0x2

.field private static final EX_HAS_REPLY_HEADER:I = -0x80

.field private static final EX_ILLEGAL_ARGUMENT:I = -0x3

.field private static final EX_ILLEGAL_STATE:I = -0x5

.field private static final EX_NETWORK_MAIN_THREAD:I = -0x6

.field private static final EX_NULL_POINTER:I = -0x4

.field private static final EX_SECURITY:I = -0x1

.field private static final POOL_SIZE:I = 0x6

.field public static final STRING_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Parcel"

.field private static final VAL_BOOLEAN:I = 0x9

.field private static final VAL_BOOLEANARRAY:I = 0x17

.field private static final VAL_BUNDLE:I = 0x3

.field private static final VAL_BYTE:I = 0x14

.field private static final VAL_BYTEARRAY:I = 0xd

.field private static final VAL_CHARSEQUENCE:I = 0xa

.field private static final VAL_CHARSEQUENCEARRAY:I = 0x18

.field private static final VAL_DOUBLE:I = 0x8

.field private static final VAL_FLOAT:I = 0x7

.field private static final VAL_IBINDER:I = 0xf

.field private static final VAL_INTARRAY:I = 0x12

.field private static final VAL_INTEGER:I = 0x1

.field private static final VAL_LIST:I = 0xb

.field private static final VAL_LONG:I = 0x6

.field private static final VAL_LONGARRAY:I = 0x13

.field private static final VAL_MAP:I = 0x2

.field private static final VAL_NULL:I = -0x1

.field private static final VAL_OBJECTARRAY:I = 0x11

.field private static final VAL_PARCELABLE:I = 0x4

.field private static final VAL_PARCELABLEARRAY:I = 0x10

.field private static final VAL_SERIALIZABLE:I = 0x15

.field private static final VAL_SHORT:I = 0x5

.field private static final VAL_SPARSEARRAY:I = 0xc

.field private static final VAL_SPARSEBOOLEANARRAY:I = 0x16

.field private static final VAL_STRING:I = 0x0

.field private static final VAL_STRINGARRAY:I = 0xe

.field private static final mCreators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sHolderPool:[Landroid/os/Parcel;

.field private static final sOwnedPool:[Landroid/os/Parcel;


# instance fields
.field private mNativePtr:I

.field private mOwnsNativeParcelObject:Z

.field private mStack:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 201
    new-array v0, v1, [Landroid/os/Parcel;

    sput-object v0, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    .line 202
    new-array v0, v1, [Landroid/os/Parcel;

    sput-object v0, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    .line 282
    new-instance v0, Landroid/os/Parcel$1;

    invoke-direct {v0}, Landroid/os/Parcel$1;-><init>()V

    sput-object v0, Landroid/os/Parcel;->STRING_CREATOR:Landroid/os/Parcelable$Creator;

    .line 2261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "nativePtr"    # I

    .prologue
    .line 2282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2287
    invoke-direct {p0, p1}, Landroid/os/Parcel;->init(I)V

    .line 2288
    return-void
.end method

.method static native clearFileDescriptor(Ljava/io/FileDescriptor;)V
.end method

.method static native closeFileDescriptor(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private destroy()V
    .locals 1

    .prologue
    .line 2307
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    if-eqz v0, :cond_1

    .line 2308
    iget-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    if-eqz v0, :cond_0

    .line 2309
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeDestroy(I)V

    .line 2311
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/Parcel;->mNativePtr:I

    .line 2313
    :cond_1
    return-void
.end method

.method static native dupFileDescriptor(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private freeBuffer()V
    .locals 1

    .prologue
    .line 2301
    iget-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    if-eqz v0, :cond_0

    .line 2302
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeFreeBuffer(I)V

    .line 2304
    :cond_0
    return-void
.end method

.method private static getExceptionCode(Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 2414
    instance-of v0, p0, Ljava/lang/SecurityException;

    if-eqz v0, :cond_0

    .line 2415
    const/4 v0, -0x1

    .line 2426
    :goto_0
    return v0

    .line 2416
    :cond_0
    instance-of v0, p0, Landroid/os/BadParcelableException;

    if-eqz v0, :cond_1

    .line 2417
    const/4 v0, -0x2

    goto :goto_0

    .line 2418
    :cond_1
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_2

    .line 2419
    const/4 v0, -0x3

    goto :goto_0

    .line 2420
    :cond_2
    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_3

    .line 2421
    const/4 v0, -0x4

    goto :goto_0

    .line 2422
    :cond_3
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_4

    .line 2423
    const/4 v0, -0x5

    goto :goto_0

    .line 2426
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(I)V
    .locals 1
    .param p1, "nativePtr"    # I

    .prologue
    .line 2291
    if-eqz p1, :cond_0

    .line 2292
    iput p1, p0, Landroid/os/Parcel;->mNativePtr:I

    .line 2293
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    .line 2298
    :goto_0
    return-void

    .line 2295
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->nativeCreate()I

    move-result v0

    iput v0, p0, Landroid/os/Parcel;->mNativePtr:I

    .line 2296
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    goto :goto_0
.end method

.method private static native nativeAppendFrom(IIII)V
.end method

.method private static native nativeCreate()I
.end method

.method private static native nativeCreateByteArray(I)[B
.end method

.method private static native nativeDataAvail(I)I
.end method

.method private static native nativeDataCapacity(I)I
.end method

.method private static native nativeDataPosition(I)I
.end method

.method private static native nativeDataSize(I)I
.end method

.method private static native nativeDestroy(I)V
.end method

.method private static native nativeEnforceInterface(ILjava/lang/String;)V
.end method

.method private static native nativeFreeBuffer(I)V
.end method

.method private static native nativeHasFileDescriptors(I)Z
.end method

.method private static native nativeMarshall(I)[B
.end method

.method private static native nativePushAllowFds(IZ)Z
.end method

.method private static native nativeReadDouble(I)D
.end method

.method private static native nativeReadFileDescriptor(I)Ljava/io/FileDescriptor;
.end method

.method private static native nativeReadFloat(I)F
.end method

.method private static native nativeReadInt(I)I
.end method

.method private static native nativeReadLong(I)J
.end method

.method private static native nativeReadString(I)Ljava/lang/String;
.end method

.method private static native nativeReadStrongBinder(I)Landroid/os/IBinder;
.end method

.method private static native nativeRestoreAllowFds(IZ)V
.end method

.method private static native nativeSetDataCapacity(II)V
.end method

.method private static native nativeSetDataPosition(II)V
.end method

.method private static native nativeSetDataSize(II)V
.end method

.method private static native nativeUnmarshall(I[BII)V
.end method

.method private static native nativeWriteByteArray(I[BII)V
.end method

.method private static native nativeWriteDouble(ID)V
.end method

.method private static native nativeWriteFileDescriptor(ILjava/io/FileDescriptor;)V
.end method

.method private static native nativeWriteFloat(IF)V
.end method

.method private static native nativeWriteInt(II)V
.end method

.method private static native nativeWriteInterfaceToken(ILjava/lang/String;)V
.end method

.method private static native nativeWriteLong(IJ)V
.end method

.method private static native nativeWriteString(ILjava/lang/String;)V
.end method

.method private static native nativeWriteStrongBinder(ILandroid/os/IBinder;)V
.end method

.method public static obtain()Landroid/os/Parcel;
    .locals 4

    .prologue
    .line 296
    sget-object v2, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    .line 297
    .local v2, "pool":[Landroid/os/Parcel;
    monitor-enter v2

    .line 299
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x6

    if-ge v0, v3, :cond_1

    .line 300
    :try_start_0
    aget-object v1, v2, v0

    .line 301
    .local v1, "p":Landroid/os/Parcel;
    if-eqz v1, :cond_0

    .line 302
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 306
    monitor-exit v2

    .line 310
    .end local v1    # "p":Landroid/os/Parcel;
    :goto_1
    return-object v1

    .line 299
    .restart local v1    # "p":Landroid/os/Parcel;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    .end local v1    # "p":Landroid/os/Parcel;
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    new-instance v1, Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/os/Parcel;-><init>(I)V

    goto :goto_1

    .line 309
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected static final obtain(I)Landroid/os/Parcel;
    .locals 4
    .param p0, "obj"    # I

    .prologue
    .line 2264
    sget-object v2, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    .line 2265
    .local v2, "pool":[Landroid/os/Parcel;
    monitor-enter v2

    .line 2267
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x6

    if-ge v0, v3, :cond_1

    .line 2268
    :try_start_0
    aget-object v1, v2, v0

    .line 2269
    .local v1, "p":Landroid/os/Parcel;
    if-eqz v1, :cond_0

    .line 2270
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 2274
    invoke-direct {v1, p0}, Landroid/os/Parcel;->init(I)V

    .line 2275
    monitor-exit v2

    .line 2279
    .end local v1    # "p":Landroid/os/Parcel;
    :goto_1
    return-object v1

    .line 2267
    .restart local v1    # "p":Landroid/os/Parcel;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2278
    .end local v1    # "p":Landroid/os/Parcel;
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2279
    new-instance v1, Landroid/os/Parcel;

    invoke-direct {v1, p0}, Landroid/os/Parcel;-><init>(I)V

    goto :goto_1

    .line 2278
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method static native openFileDescriptor(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method private readArrayInternal([Ljava/lang/Object;ILjava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # [Ljava/lang/Object;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2384
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 2385
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2387
    .local v1, "value":Ljava/lang/Object;
    aput-object v1, p1, v0

    .line 2384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2389
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private final readCauseInternal(ILjava/lang/String;)Ljava/lang/Throwable;
    .locals 12
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 2464
    const/4 v9, 0x0

    .line 2465
    .local v9, "result":Ljava/lang/Throwable;
    packed-switch p1, :pswitch_data_0

    .line 2482
    const/4 v11, 0x0

    .line 2514
    :goto_0
    return-object v11

    .line 2467
    :pswitch_0
    new-instance v9, Ljava/lang/SecurityException;

    .end local v9    # "result":Ljava/lang/Throwable;
    invoke-direct {v9, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 2486
    .restart local v9    # "result":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2487
    .local v0, "N":I
    if-ltz v0, :cond_1

    .line 2488
    new-array v10, v0, [Ljava/lang/StackTraceElement;

    .line 2489
    .local v10, "stackTraceElements":[Ljava/lang/StackTraceElement;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v0, :cond_0

    .line 2490
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2491
    .local v4, "className":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2492
    .local v8, "methodName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2493
    .local v5, "fileName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2494
    .local v7, "lineNumber":I
    new-instance v11, Ljava/lang/StackTraceElement;

    invoke-direct {v11, v4, v8, v5, v7}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v11, v10, v6

    .line 2489
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2470
    .end local v0    # "N":I
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "lineNumber":I
    .end local v8    # "methodName":Ljava/lang/String;
    .end local v10    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :pswitch_1
    new-instance v9, Landroid/os/BadParcelableException;

    .end local v9    # "result":Ljava/lang/Throwable;
    invoke-direct {v9, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 2471
    .restart local v9    # "result":Ljava/lang/Throwable;
    goto :goto_1

    .line 2473
    :pswitch_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    .end local v9    # "result":Ljava/lang/Throwable;
    invoke-direct {v9, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2474
    .restart local v9    # "result":Ljava/lang/Throwable;
    goto :goto_1

    .line 2476
    :pswitch_3
    new-instance v9, Ljava/lang/NullPointerException;

    .end local v9    # "result":Ljava/lang/Throwable;
    invoke-direct {v9, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2477
    .restart local v9    # "result":Ljava/lang/Throwable;
    goto :goto_1

    .line 2479
    :pswitch_4
    new-instance v9, Ljava/lang/IllegalStateException;

    .end local v9    # "result":Ljava/lang/Throwable;
    invoke-direct {v9, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2480
    .restart local v9    # "result":Ljava/lang/Throwable;
    goto :goto_1

    .line 2501
    .restart local v0    # "N":I
    .restart local v6    # "i":I
    .restart local v10    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :cond_0
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 2505
    .end local v6    # "i":I
    .end local v10    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v2

    .line 2506
    .local v2, "childCode":I
    if-eqz v2, :cond_2

    .line 2507
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2508
    .local v3, "childMsg":Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Landroid/os/Parcel;->readCauseInternal(ILjava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    .line 2509
    .local v1, "cause":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 2510
    invoke-virtual {v9, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .end local v1    # "cause":Ljava/lang/Throwable;
    .end local v3    # "childMsg":Ljava/lang/String;
    :cond_2
    move-object v11, v9

    .line 2514
    goto :goto_0

    .line 2465
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V
    .locals 1
    .param p1, "outVal"    # Ljava/util/List;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2374
    :goto_0
    if-lez p2, :cond_0

    .line 2375
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 2377
    .local v0, "value":Ljava/lang/Object;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2378
    add-int/lit8 p2, p2, -0x1

    .line 2379
    goto :goto_0

    .line 2380
    .end local v0    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private readSparseArrayInternal(Landroid/util/SparseArray;ILjava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # Landroid/util/SparseArray;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2393
    :goto_0
    if-lez p2, :cond_0

    .line 2394
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2395
    .local v0, "key":I
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2397
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2398
    add-int/lit8 p2, p2, -0x1

    .line 2399
    goto :goto_0

    .line 2400
    .end local v0    # "key":I
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V
    .locals 4
    .param p1, "outVal"    # Landroid/util/SparseBooleanArray;
    .param p2, "N"    # I

    .prologue
    const/4 v2, 0x1

    .line 2404
    :goto_0
    if-lez p2, :cond_1

    .line 2405
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2406
    .local v0, "key":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 2408
    .local v1, "value":Z
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 2409
    add-int/lit8 p2, p2, -0x1

    .line 2410
    goto :goto_0

    .line 2406
    .end local v1    # "value":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 2411
    .end local v0    # "key":I
    :cond_1
    return-void
.end method

.method private final writeCauseInternal(Ljava/lang/Throwable;Ljava/util/Set;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2444
    .local p2, "causeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    invoke-static {p1}, Landroid/os/Parcel;->getExceptionCode(Ljava/lang/Throwable;)I

    move-result v0

    .line 2446
    .local v0, "code":I
    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2447
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2449
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2450
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2453
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/Parcel;->writeStackTraceInternal([Ljava/lang/StackTraceElement;)V

    .line 2456
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroid/os/Parcel;->writeCauseInternal(Ljava/lang/Throwable;Ljava/util/Set;)V

    .line 2461
    :goto_0
    return-void

    .line 2459
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method private final writeStackTraceInternal([Ljava/lang/StackTraceElement;)V
    .locals 5
    .param p1, "stackTraceElements"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 2430
    if-nez p1, :cond_1

    .line 2431
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2441
    :cond_0
    return-void

    .line 2434
    :cond_1
    array-length v4, p1

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2435
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 2436
    .local v3, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2437
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2438
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2439
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2435
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final appendFrom(Landroid/os/Parcel;II)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 436
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    iget v1, p1, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, v1, p2, p3}, Landroid/os/Parcel;->nativeAppendFrom(IIII)V

    .line 437
    return-void
.end method

.method public final createBinderArray()[Landroid/os/IBinder;
    .locals 4

    .prologue
    .line 1004
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1005
    .local v0, "N":I
    if-ltz v0, :cond_0

    .line 1006
    new-array v2, v0, [Landroid/os/IBinder;

    .line 1007
    .local v2, "val":[Landroid/os/IBinder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1008
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1007
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1012
    .end local v1    # "i":I
    .end local v2    # "val":[Landroid/os/IBinder;
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createBinderArrayList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1887
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1888
    .local v0, "N":I
    if-gez v0, :cond_1

    .line 1889
    const/4 v1, 0x0

    .line 1896
    :cond_0
    return-object v1

    .line 1891
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1892
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :goto_0
    if-lez v0, :cond_0

    .line 1893
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1894
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final createBooleanArray()[Z
    .locals 4

    .prologue
    .line 731
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 735
    .local v0, "N":I
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_1

    .line 736
    new-array v2, v0, [Z

    .line 737
    .local v2, "val":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 738
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    aput-boolean v3, v2, v1

    .line 737
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 738
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 742
    .end local v1    # "i":I
    .end local v2    # "val":[Z
    :cond_1
    const/4 v2, 0x0

    :cond_2
    return-object v2
.end method

.method public final createByteArray()[B
    .locals 1

    .prologue
    .line 1664
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeCreateByteArray(I)[B

    move-result-object v0

    return-object v0
.end method

.method public final createCharArray()[C
    .locals 4

    .prologue
    .line 770
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 771
    .local v0, "N":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_0

    .line 772
    new-array v2, v0, [C

    .line 773
    .local v2, "val":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 774
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 773
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 778
    .end local v1    # "i":I
    .end local v2    # "val":[C
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createDoubleArray()[D
    .locals 5

    .prologue
    .line 916
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 918
    .local v0, "N":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x3

    if-gt v0, v3, :cond_0

    .line 919
    new-array v2, v0, [D

    .line 920
    .local v2, "val":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 921
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 920
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 925
    .end local v1    # "i":I
    .end local v2    # "val":[D
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createFloatArray()[F
    .locals 4

    .prologue
    .line 879
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 881
    .local v0, "N":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_0

    .line 882
    new-array v2, v0, [F

    .line 883
    .local v2, "val":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 884
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    aput v3, v2, v1

    .line 883
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 888
    .end local v1    # "i":I
    .end local v2    # "val":[F
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createIntArray()[I
    .locals 4

    .prologue
    .line 806
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 807
    .local v0, "N":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_0

    .line 808
    new-array v2, v0, [I

    .line 809
    .local v2, "val":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 810
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 809
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 814
    .end local v1    # "i":I
    .end local v2    # "val":[I
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createLongArray()[J
    .locals 5

    .prologue
    .line 842
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 844
    .local v0, "N":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x3

    if-gt v0, v3, :cond_0

    .line 845
    new-array v2, v0, [J

    .line 846
    .local v2, "val":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 847
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 846
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 851
    .end local v1    # "i":I
    .end local v2    # "val":[J
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createStringArray()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 953
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 954
    .local v0, "N":I
    if-ltz v0, :cond_0

    .line 955
    new-array v2, v0, [Ljava/lang/String;

    .line 956
    .local v2, "val":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 957
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 956
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 961
    .end local v1    # "i":I
    .end local v2    # "val":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public final createStringArrayList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1863
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1864
    .local v0, "N":I
    if-gez v0, :cond_1

    .line 1865
    const/4 v1, 0x0

    .line 1872
    :cond_0
    return-object v1

    .line 1867
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1868
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-lez v0, :cond_0

    .line 1869
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1870
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 1960
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1961
    .local v0, "N":I
    if-gez v0, :cond_1

    .line 1962
    const/4 v2, 0x0

    .line 1970
    :cond_0
    return-object v2

    .line 1964
    :cond_1
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v2

    .line 1965
    .local v2, "l":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1966
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1967
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1965
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    const/4 v2, 0x0

    .line 1800
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1801
    .local v0, "N":I
    if-gez v0, :cond_1

    move-object v1, v2

    .line 1813
    :cond_0
    return-object v1

    .line 1804
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1805
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_0
    if-lez v0, :cond_0

    .line 1806
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1807
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1811
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1809
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final dataAvail()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeDataAvail(I)I

    move-result v0

    return v0
.end method

.method public final dataCapacity()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeDataCapacity(I)I

    move-result v0

    return v0
.end method

.method public final dataPosition()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeDataPosition(I)I

    move-result v0

    return v0
.end method

.method public final dataSize()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeDataSize(I)I

    move-result v0

    return v0
.end method

.method public final enforceInterface(Ljava/lang/String;)V
    .locals 1
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 456
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeEnforceInterface(ILjava/lang/String;)V

    .line 457
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2322
    invoke-direct {p0}, Landroid/os/Parcel;->destroy()V

    .line 2323
    return-void
.end method

.method public final hasFileDescriptors()Z
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeHasFileDescriptors(I)Z

    move-result v0

    return v0
.end method

.method public final marshall()[B
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeMarshall(I)[B

    move-result-object v0

    return-object v0
.end method

.method public final pushAllowFds(Z)Z
    .locals 1
    .param p1, "allowFds"    # Z

    .prologue
    .line 405
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativePushAllowFds(IZ)Z

    move-result v0

    return v0
.end method

.method public final readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1746
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1747
    .local v0, "N":I
    if-gez v0, :cond_0

    .line 1748
    const/4 v1, 0x0

    .line 1752
    :goto_0
    return-object v1

    .line 1750
    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    .line 1751
    .local v1, "l":[Ljava/lang/Object;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readArrayInternal([Ljava/lang/Object;ILjava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public final readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1730
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1731
    .local v0, "N":I
    if-gez v0, :cond_0

    .line 1732
    const/4 v1, 0x0

    .line 1736
    :goto_0
    return-object v1

    .line 1734
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1735
    .local v1, "l":Ljava/util/ArrayList;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method readArrayMapInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # Landroid/util/ArrayMap;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2343
    :goto_0
    if-lez p2, :cond_0

    .line 2345
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 2346
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2350
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2351
    add-int/lit8 p2, p2, -0x1

    .line 2352
    goto :goto_0

    .line 2353
    .end local v0    # "key":Ljava/lang/Object;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method readArrayMapSafelyInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # Landroid/util/ArrayMap;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2362
    :goto_0
    if-lez p2, :cond_0

    .line 2363
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 2366
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2367
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2368
    add-int/lit8 p2, p2, -0x1

    .line 2369
    goto :goto_0

    .line 2370
    .end local v0    # "key":Ljava/lang/Object;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public final readBinderArray([Landroid/os/IBinder;)V
    .locals 4
    .param p1, "val"    # [Landroid/os/IBinder;

    .prologue
    .line 1017
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1018
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 1019
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1020
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    aput-object v2, p1, v1

    .line 1019
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1023
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1025
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readBinderList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1933
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1934
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1935
    .local v1, "N":I
    const/4 v2, 0x0

    .line 1936
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    if-ge v2, v1, :cond_0

    .line 1937
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1936
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1939
    :cond_0
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1940
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1939
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1942
    :cond_1
    :goto_2
    if-ge v2, v0, :cond_2

    .line 1943
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1942
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1945
    :cond_2
    return-void
.end method

.method public final readBooleanArray([Z)V
    .locals 4
    .param p1, "val"    # [Z

    .prologue
    .line 747
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 748
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_1

    .line 749
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 750
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    aput-boolean v2, p1, v1

    .line 749
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 750
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 753
    .end local v1    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 755
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method public final readBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1637
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1647
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1648
    .local v1, "length":I
    if-gez v1, :cond_1

    .line 1650
    const/4 v0, 0x0

    .line 1657
    :cond_0
    :goto_0
    return-object v0

    .line 1653
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Parcel;I)V

    .line 1654
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 1655
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public final readByte()B
    .locals 1

    .prologue
    .line 1590
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public final readByteArray([B)V
    .locals 4
    .param p1, "val"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1673
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1674
    .local v0, "ba":[B
    array-length v1, v0

    array-length v2, p1

    if-ne v1, v2, :cond_0

    .line 1675
    array-length v1, v0

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1679
    return-void

    .line 1677
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final readCharArray([C)V
    .locals 4
    .param p1, "val"    # [C

    .prologue
    .line 783
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 784
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 785
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 786
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, p1, v1

    .line 785
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 789
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 791
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1555
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final readCharSequenceArray()[Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 1707
    const/4 v0, 0x0

    .line 1709
    .local v0, "array":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1710
    .local v2, "length":I
    if-ltz v2, :cond_0

    .line 1712
    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 1714
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1716
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1714
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1720
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public final readCreator(Landroid/os/Parcelable$Creator;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .locals 1
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2142
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    instance-of v0, p1, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz v0, :cond_0

    .line 2143
    check-cast p1, Landroid/os/Parcelable$ClassLoaderCreator;

    .end local p1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 2145
    :goto_0
    return-object v0

    .restart local p1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    :cond_0
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public final readDouble()D
    .locals 2

    .prologue
    .line 1540
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeReadDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readDoubleArray([D)V
    .locals 4
    .param p1, "val"    # [D

    .prologue
    .line 930
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 931
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 932
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 933
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 932
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 936
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 938
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readException()V
    .locals 2

    .prologue
    .line 1424
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 1425
    .local v0, "code":I
    if-eqz v0, :cond_0

    .line 1426
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1427
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readException(ILjava/lang/String;)V

    .line 1429
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final readException(ILjava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1471
    const/4 v1, 0x0

    .line 1472
    .local v1, "runtimeException":Ljava/lang/RuntimeException;
    packed-switch p1, :pswitch_data_0

    .line 1493
    :goto_0
    if-eqz v1, :cond_2

    .line 1494
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v3, "userdebug"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1501
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->readCauseInternal(ILjava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    .line 1502
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 1503
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1507
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    throw v1

    .line 1474
    :pswitch_0
    new-instance v1, Ljava/lang/SecurityException;

    .end local v1    # "runtimeException":Ljava/lang/RuntimeException;
    invoke-direct {v1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1475
    .restart local v1    # "runtimeException":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 1477
    :pswitch_1
    new-instance v1, Landroid/os/BadParcelableException;

    .end local v1    # "runtimeException":Ljava/lang/RuntimeException;
    invoke-direct {v1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 1478
    .restart local v1    # "runtimeException":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 1480
    :pswitch_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .end local v1    # "runtimeException":Ljava/lang/RuntimeException;
    invoke-direct {v1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1481
    .restart local v1    # "runtimeException":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 1483
    :pswitch_3
    new-instance v1, Ljava/lang/NullPointerException;

    .end local v1    # "runtimeException":Ljava/lang/RuntimeException;
    invoke-direct {v1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1484
    .restart local v1    # "runtimeException":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 1486
    :pswitch_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .end local v1    # "runtimeException":Ljava/lang/RuntimeException;
    invoke-direct {v1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1487
    .restart local v1    # "runtimeException":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 1489
    :pswitch_5
    new-instance v1, Landroid/os/NetworkOnMainThreadException;

    .end local v1    # "runtimeException":Ljava/lang/RuntimeException;
    invoke-direct {v1}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    .restart local v1    # "runtimeException":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 1509
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown exception code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1472
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readExceptionCode()I
    .locals 4

    .prologue
    .line 1445
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1446
    .local v0, "code":I
    const/16 v2, -0x80

    if-ne v0, v2, :cond_0

    .line 1447
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1448
    .local v1, "headerSize":I
    if-nez v1, :cond_1

    .line 1449
    const-string v2, "Parcel"

    const-string v3, "Unexpected zero-sized Parcel reply header."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :goto_0
    const/4 v0, 0x0

    .line 1461
    .end local v0    # "code":I
    .end local v1    # "headerSize":I
    :cond_0
    return v0

    .line 1455
    .restart local v0    # "code":I
    .restart local v1    # "headerSize":I
    :cond_1
    invoke-static {p0}, Landroid/os/StrictMode;->readAndHandleBinderCallViolations(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method public final readFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 2

    .prologue
    .line 1569
    iget v1, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v1}, Landroid/os/Parcel;->nativeReadFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1570
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final readFloat()F
    .locals 1

    .prologue
    .line 1532
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeReadFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFloatArray([F)V
    .locals 4
    .param p1, "val"    # [F

    .prologue
    .line 893
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 894
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 895
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 896
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    aput v2, p1, v1

    .line 895
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 899
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 901
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1622
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1623
    .local v0, "N":I
    if-gez v0, :cond_0

    .line 1624
    const/4 v1, 0x0

    .line 1628
    :goto_0
    return-object v1

    .line 1626
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 1627
    .local v1, "m":Ljava/util/HashMap;
    invoke-virtual {p0, v1, v0, p1}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public final readInt()I
    .locals 1

    .prologue
    .line 1517
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeReadInt(I)I

    move-result v0

    return v0
.end method

.method public final readIntArray([I)V
    .locals 4
    .param p1, "val"    # [I

    .prologue
    .line 819
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 820
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 821
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 822
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, p1, v1

    .line 821
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 825
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 827
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readList(Ljava/util/List;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "outVal"    # Ljava/util/List;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1609
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1610
    .local v0, "N":I
    invoke-direct {p0, p1, v0, p2}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V

    .line 1611
    return-void
.end method

.method public final readLong()J
    .locals 2

    .prologue
    .line 1524
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeReadLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readLongArray([J)V
    .locals 4
    .param p1, "val"    # [J

    .prologue
    .line 856
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 857
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 858
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 859
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 858
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 862
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 864
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "outVal"    # Ljava/util/Map;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1599
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1600
    .local v0, "N":I
    invoke-virtual {p0, p1, v0, p2}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    .line 1601
    return-void
.end method

.method readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # Ljava/util/Map;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2327
    :goto_0
    if-lez p2, :cond_0

    .line 2328
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 2329
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 2330
    .local v1, "value":Ljava/lang/Object;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2331
    add-int/lit8 p2, p2, -0x1

    .line 2332
    goto :goto_0

    .line 2333
    .end local v0    # "key":Ljava/lang/Object;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public final readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2129
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelableCreator(Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    .line 2130
    .local v0, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    if-nez v0, :cond_0

    .line 2131
    const/4 v1, 0x0

    .line 2136
    .end local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    :goto_0
    return-object v1

    .line 2133
    .restart local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    :cond_0
    instance-of v1, v0, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz v1, :cond_1

    .line 2134
    check-cast v0, Landroid/os/Parcelable$ClassLoaderCreator;

    .end local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-interface {v0, p0, p1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    goto :goto_0

    .line 2136
    .restart local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    :cond_1
    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public final readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;
    .locals 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2216
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2217
    .local v0, "N":I
    if-gez v0, :cond_1

    .line 2218
    const/4 v2, 0x0

    .line 2224
    :cond_0
    return-object v2

    .line 2220
    :cond_1
    new-array v2, v0, [Landroid/os/Parcelable;

    .line 2221
    .local v2, "p":[Landroid/os/Parcelable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2222
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final readParcelableCreator(Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;
    .locals 10
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2151
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2152
    .local v5, "name":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 2206
    :goto_0
    return-object v1

    .line 2156
    :cond_0
    sget-object v7, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    monitor-enter v7

    .line 2157
    :try_start_0
    sget-object v6, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 2158
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    if-nez v4, :cond_1

    .line 2159
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2160
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    sget-object v6, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2162
    :cond_1
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable$Creator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2163
    .local v1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    if-nez v1, :cond_4

    .line 2165
    if-nez p1, :cond_2

    :try_start_1
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2167
    .local v0, "c":Ljava/lang/Class;
    :goto_1
    const-string v6, "CREATOR"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 2168
    .local v3, "f":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    check-cast v1, Landroid/os/Parcelable$Creator;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2196
    .restart local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    if-nez v1, :cond_3

    .line 2197
    :try_start_2
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2204
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 2165
    .restart local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator;>;"
    :cond_2
    const/4 v6, 0x1

    :try_start_3
    invoke-static {v5, v6, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 2170
    .end local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    :catch_0
    move-exception v2

    .line 2171
    .local v2, "e":Ljava/lang/IllegalAccessException;
    :try_start_4
    const-string v6, "Parcel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal access when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2173
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IllegalAccessException when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2176
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 2177
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v6, "Parcel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Class not found when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2179
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ClassNotFoundException when unmarshalling: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2182
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v2

    .line 2183
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2187
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :catch_3
    move-exception v2

    .line 2188
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parcelable protocol requires a Parcelable.Creator object called  CREATOR on class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2192
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catch_4
    move-exception v2

    .line 2193
    .local v2, "e":Ljava/lang/NullPointerException;
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parcelable protocol requires the CREATOR object to be static on class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2202
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "c":Ljava/lang/Class;
    .restart local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    .restart local v3    # "f":Ljava/lang/reflect/Field;
    :cond_3
    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2204
    .end local v0    # "c":Ljava/lang/Class;
    .end local v3    # "f":Ljava/lang/reflect/Field;
    :cond_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public final readRawFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 1575
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeReadFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final readSerializable()Ljava/io/Serializable;
    .locals 9

    .prologue
    .line 2233
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2234
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 2238
    const/4 v6, 0x0

    .line 2245
    :goto_0
    return-object v6

    .line 2241
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 2242
    .local v5, "serializedData":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2244
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2245
    .local v4, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2246
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v2

    .line 2247
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parcelable encountered IOException reading a Serializable object (name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 2250
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 2251
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parcelable encounteredClassNotFoundException reading a Serializable object (name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public final readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1762
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1763
    .local v0, "N":I
    if-gez v0, :cond_0

    .line 1764
    const/4 v1, 0x0

    .line 1768
    :goto_0
    return-object v1

    .line 1766
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 1767
    .local v1, "sa":Landroid/util/SparseArray;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readSparseArrayInternal(Landroid/util/SparseArray;ILjava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public final readSparseBooleanArray()Landroid/util/SparseBooleanArray;
    .locals 2

    .prologue
    .line 1777
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1778
    .local v0, "N":I
    if-gez v0, :cond_0

    .line 1779
    const/4 v1, 0x0

    .line 1783
    :goto_0
    return-object v1

    .line 1781
    :cond_0
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1782
    .local v1, "sa":Landroid/util/SparseBooleanArray;
    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V

    goto :goto_0
.end method

.method public final readString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1547
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeReadString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readStringArray([Ljava/lang/String;)V
    .locals 4
    .param p1, "val"    # [Ljava/lang/String;

    .prologue
    .line 966
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 967
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_0

    .line 968
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 969
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    .line 968
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 972
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 974
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readStringArray()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1686
    const/4 v0, 0x0

    .line 1688
    .local v0, "array":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1689
    .local v2, "length":I
    if-ltz v2, :cond_0

    .line 1691
    new-array v0, v2, [Ljava/lang/String;

    .line 1693
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1695
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1693
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1699
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public final readStringList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1909
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1910
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1911
    .local v1, "N":I
    const/4 v2, 0x0

    .line 1912
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    if-ge v2, v1, :cond_0

    .line 1913
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1912
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1915
    :cond_0
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1916
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1915
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1918
    :cond_1
    :goto_2
    if-ge v2, v0, :cond_2

    .line 1919
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1918
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1921
    :cond_2
    return-void
.end method

.method public final readStrongBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1562
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0}, Landroid/os/Parcel;->nativeReadStrongBinder(I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1974
    .local p1, "val":[Ljava/lang/Object;, "[TT;"
    .local p2, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1975
    .local v0, "N":I
    array-length v2, p1

    if-ne v0, v2, :cond_1

    .line 1976
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1977
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1978
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    .line 1976
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1980
    :cond_0
    const/4 v2, 0x0

    aput-object v2, p1, v1

    goto :goto_1

    .line 1984
    .end local v1    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1986
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method public final readTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1994
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    const/4 v4, 0x0

    .line 1829
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1830
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1831
    .local v1, "N":I
    const/4 v2, 0x0

    .line 1832
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    if-ge v2, v1, :cond_1

    .line 1833
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1834
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1832
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1836
    :cond_0
    invoke-interface {p1, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1839
    :cond_1
    :goto_2
    if-ge v2, v1, :cond_3

    .line 1840
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1841
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1839
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1843
    :cond_2
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1846
    :cond_3
    :goto_4
    if-ge v2, v0, :cond_4

    .line 1847
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1846
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1849
    :cond_4
    return-void
.end method

.method public final readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 5
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v2, 0x1

    .line 2029
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2031
    .local v1, "type":I
    packed-switch v1, :pswitch_data_0

    .line 2111
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    add-int/lit8 v0, v2, -0x4

    .line 2112
    .local v0, "off":I
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parcel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Unmarshalling unknown type code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2033
    .end local v0    # "off":I
    :pswitch_0
    const/4 v2, 0x0

    .line 2108
    :goto_0
    return-object v2

    .line 2036
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2039
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 2042
    :pswitch_3
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    goto :goto_0

    .line 2045
    :pswitch_4
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    goto :goto_0

    .line 2048
    :pswitch_5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    goto :goto_0

    .line 2051
    :pswitch_6
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    .line 2054
    :pswitch_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 2057
    :pswitch_8
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    .line 2060
    :pswitch_9
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 2063
    :pswitch_a
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 2066
    :pswitch_b
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 2069
    :pswitch_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v2

    goto :goto_0

    .line 2072
    :pswitch_d
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    goto :goto_0

    .line 2075
    :pswitch_e
    invoke-virtual {p0}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2078
    :pswitch_f
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 2081
    :pswitch_10
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    .line 2084
    :pswitch_11
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 2087
    :pswitch_12
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    goto :goto_0

    .line 2090
    :pswitch_13
    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    goto :goto_0

    .line 2093
    :pswitch_14
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto/16 :goto_0

    .line 2096
    :pswitch_15
    invoke-virtual {p0}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    goto/16 :goto_0

    .line 2099
    :pswitch_16
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 2102
    :pswitch_17
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v2

    goto/16 :goto_0

    .line 2105
    :pswitch_18
    invoke-virtual {p0}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v2

    goto/16 :goto_0

    .line 2108
    :pswitch_19
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v2

    goto/16 :goto_0

    .line 2031
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_19
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_17
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_16
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_18
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public final recycle()V
    .locals 3

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/os/Parcel;->freeBuffer()V

    .line 322
    iget-boolean v2, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    if-eqz v2, :cond_0

    .line 323
    sget-object v1, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    .line 329
    .local v1, "pool":[Landroid/os/Parcel;
    :goto_0
    monitor-enter v1

    .line 330
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    .line 331
    :try_start_0
    aget-object v2, v1, v0

    if-nez v2, :cond_1

    .line 332
    aput-object p0, v1, v0

    .line 333
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :goto_2
    return-void

    .line 325
    .end local v0    # "i":I
    .end local v1    # "pool":[Landroid/os/Parcel;
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Landroid/os/Parcel;->mNativePtr:I

    .line 326
    sget-object v1, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    .restart local v1    # "pool":[Landroid/os/Parcel;
    goto :goto_0

    .line 330
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 336
    :cond_2
    :try_start_1
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public final restoreAllowFds(Z)V
    .locals 1
    .param p1, "lastValue"    # Z

    .prologue
    .line 410
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeRestoreAllowFds(IZ)V

    .line 411
    return-void
.end method

.method public final setDataCapacity(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 400
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeSetDataCapacity(II)V

    .line 401
    return-void
.end method

.method public final setDataPosition(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 389
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeSetDataPosition(II)V

    .line 390
    return-void
.end method

.method public final setDataSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 380
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeSetDataSize(II)V

    .line 381
    return-void
.end method

.method public final unmarshall([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offest"    # I
    .param p3, "length"    # I

    .prologue
    .line 432
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1, p2, p3}, Landroid/os/Parcel;->nativeUnmarshall(I[BII)V

    .line 433
    return-void
.end method

.method public final writeArray([Ljava/lang/Object;)V
    .locals 3
    .param p1, "val"    # [Ljava/lang/Object;

    .prologue
    .line 669
    if-nez p1, :cond_1

    .line 670
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    :cond_0
    return-void

    .line 673
    :cond_1
    array-length v0, p1

    .line 674
    .local v0, "N":I
    const/4 v1, 0x0

    .line 675
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    :goto_0
    if-ge v1, v0, :cond_0

    .line 677
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 678
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method writeArrayMapInternal(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 608
    .local p1, "val":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 609
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    :cond_0
    return-void

    .line 612
    :cond_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 613
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 622
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 623
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 620
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final writeBinderArray([Landroid/os/IBinder;)V
    .locals 3
    .param p1, "val"    # [Landroid/os/IBinder;

    .prologue
    .line 977
    if-eqz p1, :cond_0

    .line 978
    array-length v0, p1

    .line 979
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 980
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 981
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 980
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 984
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 986
    :cond_1
    return-void
.end method

.method public final writeBinderList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1098
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    if-nez p1, :cond_1

    .line 1099
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1109
    :cond_0
    return-void

    .line 1102
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1103
    .local v0, "N":I
    const/4 v1, 0x0

    .line 1104
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1105
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1106
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final writeBooleanArray([Z)V
    .locals 3
    .param p1, "val"    # [Z

    .prologue
    .line 719
    if-eqz p1, :cond_1

    .line 720
    array-length v0, p1

    .line 721
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 723
    aget-boolean v2, p1, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 723
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 726
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 728
    :cond_2
    return-void
.end method

.method public final writeBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "val"    # Landroid/os/Bundle;

    .prologue
    .line 636
    if-nez p1, :cond_0

    .line 637
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    :goto_0
    return-void

    .line 641
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public final writeByte(B)V
    .locals 0
    .param p1, "val"    # B

    .prologue
    .line 568
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    return-void
.end method

.method public final writeByteArray([B)V
    .locals 2
    .param p1, "b"    # [B

    .prologue
    const/4 v1, 0x0

    .line 465
    if-eqz p1, :cond_0

    array-length v0, p1

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Parcel;->writeByteArray([BII)V

    .line 466
    return-void

    :cond_0
    move v0, v1

    .line 465
    goto :goto_0
.end method

.method public final writeByteArray([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 476
    if-nez p1, :cond_0

    .line 477
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    :goto_0
    return-void

    .line 480
    :cond_0
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 481
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1, p2, p3}, Landroid/os/Parcel;->nativeWriteByteArray(I[BII)V

    goto :goto_0
.end method

.method public final writeCharArray([C)V
    .locals 3
    .param p1, "val"    # [C

    .prologue
    .line 758
    if-eqz p1, :cond_0

    .line 759
    array-length v0, p1

    .line 760
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 762
    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 765
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    :cond_1
    return-void
.end method

.method public final writeCharSequence(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/CharSequence;

    .prologue
    .line 530
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 531
    return-void
.end method

.method public final writeCharSequenceArray([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "val"    # [Ljava/lang/CharSequence;

    .prologue
    .line 992
    if-eqz p1, :cond_0

    .line 993
    array-length v0, p1

    .line 994
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 995
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 996
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 995
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 999
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    :cond_1
    return-void
.end method

.method public final writeDouble(D)V
    .locals 1
    .param p1, "val"    # D

    .prologue
    .line 513
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1, p2}, Landroid/os/Parcel;->nativeWriteDouble(ID)V

    .line 514
    return-void
.end method

.method public final writeDoubleArray([D)V
    .locals 4
    .param p1, "val"    # [D

    .prologue
    .line 904
    if-eqz p1, :cond_0

    .line 905
    array-length v0, p1

    .line 906
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 908
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 907
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 911
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 913
    :cond_1
    return-void
.end method

.method public final writeException(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1351
    invoke-static {p1}, Landroid/os/Parcel;->getExceptionCode(Ljava/lang/Throwable;)I

    move-result v1

    .line 1352
    .local v1, "code":I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1353
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 1354
    if-nez v1, :cond_1

    .line 1355
    instance-of v2, p1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 1356
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "e":Ljava/lang/Exception;
    throw p1

    .line 1358
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1360
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1362
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v3, "userdebug"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1370
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/os/Parcel;->writeStackTraceInternal([Ljava/lang/StackTraceElement;)V

    .line 1373
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1374
    .local v0, "causeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1375
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Landroid/os/Parcel;->writeCauseInternal(Ljava/lang/Throwable;Ljava/util/Set;)V

    .line 1377
    .end local v0    # "causeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    :cond_3
    return-void
.end method

.method public final writeFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "val"    # Ljava/io/FileDescriptor;

    .prologue
    .line 560
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeWriteFileDescriptor(ILjava/io/FileDescriptor;)V

    .line 561
    return-void
.end method

.method public final writeFloat(F)V
    .locals 1
    .param p1, "val"    # F

    .prologue
    .line 505
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeWriteFloat(IF)V

    .line 506
    return-void
.end method

.method public final writeFloatArray([F)V
    .locals 3
    .param p1, "val"    # [F

    .prologue
    .line 867
    if-eqz p1, :cond_0

    .line 868
    array-length v0, p1

    .line 869
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 870
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 871
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 870
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 874
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 876
    :cond_1
    return-void
.end method

.method public final writeInt(I)V
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 489
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeWriteInt(II)V

    .line 490
    return-void
.end method

.method public final writeIntArray([I)V
    .locals 3
    .param p1, "val"    # [I

    .prologue
    .line 794
    if-eqz p1, :cond_0

    .line 795
    array-length v0, p1

    .line 796
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 798
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 801
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 803
    :cond_1
    return-void
.end method

.method public final writeInterfaceToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 452
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeWriteInterfaceToken(ILjava/lang/String;)V

    .line 453
    return-void
.end method

.method public final writeList(Ljava/util/List;)V
    .locals 3
    .param p1, "val"    # Ljava/util/List;

    .prologue
    .line 650
    if-nez p1, :cond_1

    .line 651
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    :cond_0
    return-void

    .line 654
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 655
    .local v0, "N":I
    const/4 v1, 0x0

    .line 656
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    :goto_0
    if-ge v1, v0, :cond_0

    .line 658
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 659
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final writeLong(J)V
    .locals 1
    .param p1, "val"    # J

    .prologue
    .line 497
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1, p2}, Landroid/os/Parcel;->nativeWriteLong(IJ)V

    .line 498
    return-void
.end method

.method public final writeLongArray([J)V
    .locals 4
    .param p1, "val"    # [J

    .prologue
    .line 830
    if-eqz p1, :cond_0

    .line 831
    array-length v0, p1

    .line 832
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 833
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 834
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 833
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 837
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 839
    :cond_1
    return-void
.end method

.method public final writeMap(Ljava/util/Map;)V
    .locals 0
    .param p1, "val"    # Ljava/util/Map;

    .prologue
    .line 583
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMapInternal(Ljava/util/Map;)V

    .line 584
    return-void
.end method

.method writeMapInternal(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 591
    .local p1, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 592
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    :cond_0
    return-void

    .line 595
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 596
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 598
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 599
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final writeNoException()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1400
    invoke-static {}, Landroid/os/StrictMode;->hasGatheredViolations()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1401
    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1402
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1403
    .local v1, "sizePosition":I
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1404
    invoke-static {p0}, Landroid/os/StrictMode;->writeGatheredViolationsToParcel(Landroid/os/Parcel;)V

    .line 1405
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 1406
    .local v0, "payloadPosition":I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1407
    sub-int v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1408
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1412
    .end local v0    # "payloadPosition":I
    .end local v1    # "sizePosition":I
    :goto_0
    return-void

    .line 1410
    :cond_0
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public final writeParcelable(Landroid/os/Parcelable;I)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcelable;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 1284
    if-nez p1, :cond_0

    .line 1285
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1291
    :goto_0
    return-void

    .line 1288
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1289
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1290
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public final writeParcelableArray([Landroid/os/Parcelable;I)V
    .locals 3
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    .prologue
    .line 2012
    .local p1, "value":[Landroid/os/Parcelable;, "[TT;"
    if-eqz p1, :cond_0

    .line 2013
    array-length v0, p1

    .line 2014
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2015
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2016
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2015
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2019
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2021
    :cond_1
    return-void
.end method

.method public final writeParcelableCreator(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcelable;

    .prologue
    .line 1295
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1296
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1297
    return-void
.end method

.method public final writeSerializable(Ljava/io/Serializable;)V
    .locals 7
    .param p1, "s"    # Ljava/io/Serializable;

    .prologue
    .line 1306
    if-nez p1, :cond_0

    .line 1307
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1325
    :goto_0
    return-void

    .line 1310
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1311
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1313
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1315
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1316
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1317
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 1319
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1320
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v1

    .line 1321
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parcelable encountered IOException writing serializable object (name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public final writeSparseArray(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 689
    .local p1, "val":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 690
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    :cond_0
    return-void

    .line 693
    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 694
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    const/4 v1, 0x0

    .line 696
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 697
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 699
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V
    .locals 3
    .param p1, "val"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 704
    if-nez p1, :cond_1

    .line 705
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    :cond_0
    return-void

    .line 708
    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 709
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    const/4 v1, 0x0

    .line 711
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 712
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 714
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 713
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final writeString(Ljava/lang/String;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 521
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeWriteString(ILjava/lang/String;)V

    .line 522
    return-void
.end method

.method public final writeStringArray([Ljava/lang/String;)V
    .locals 3
    .param p1, "val"    # [Ljava/lang/String;

    .prologue
    .line 941
    if-eqz p1, :cond_0

    .line 942
    array-length v0, p1

    .line 943
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 944
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 945
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 944
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 948
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 950
    :cond_1
    return-void
.end method

.method public final writeStringList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1073
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 1074
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1084
    :cond_0
    return-void

    .line 1077
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1078
    .local v0, "N":I
    const/4 v1, 0x0

    .line 1079
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1080
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1081
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1082
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final writeStrongBinder(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "val"    # Landroid/os/IBinder;

    .prologue
    .line 538
    iget v0, p0, Landroid/os/Parcel;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/os/Parcel;->nativeWriteStrongBinder(ILandroid/os/IBinder;)V

    .line 539
    return-void
.end method

.method public final writeStrongInterface(Landroid/os/IInterface;)V
    .locals 1
    .param p1, "val"    # Landroid/os/IInterface;

    .prologue
    .line 546
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 547
    return-void

    .line 546
    :cond_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public final writeTypedArray([Landroid/os/Parcelable;I)V
    .locals 4
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    .prologue
    .line 1131
    .local p1, "val":[Landroid/os/Parcelable;, "[TT;"
    if-eqz p1, :cond_1

    .line 1132
    array-length v0, p1

    .line 1133
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1134
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1135
    aget-object v2, p1, v1

    .line 1136
    .local v2, "item":Landroid/os/Parcelable;, "TT;"
    if-eqz v2, :cond_0

    .line 1137
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1138
    invoke-interface {v2, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1134
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1140
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1144
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "item":Landroid/os/Parcelable;, "TT;"
    :cond_1
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1146
    :cond_2
    return-void
.end method

.method public final writeTypedList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v4, 0x0

    .line 1042
    if-nez p1, :cond_1

    .line 1043
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1059
    :cond_0
    return-void

    .line 1046
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1047
    .local v0, "N":I
    const/4 v1, 0x0

    .line 1048
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1049
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1050
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 1051
    .local v2, "item":Landroid/os/Parcelable;, "TT;"
    if-eqz v2, :cond_2

    .line 1052
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1053
    invoke-interface {v2, p0, v4}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1057
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 1058
    goto :goto_0

    .line 1055
    :cond_2
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public final writeValue(Ljava/lang/Object;)V
    .locals 3
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1192
    if-nez p1, :cond_0

    .line 1193
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1273
    .end local p1    # "v":Ljava/lang/Object;
    :goto_0
    return-void

    .line 1194
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1195
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1196
    check-cast p1, Ljava/lang/String;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1197
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 1198
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1199
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1200
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_2
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 1201
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1202
    check-cast p1, Ljava/util/Map;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_0

    .line 1203
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_3
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_4

    .line 1205
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1206
    check-cast p1, Landroid/os/Bundle;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1207
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_4
    instance-of v2, p1, Landroid/os/Parcelable;

    if-eqz v2, :cond_5

    .line 1208
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1209
    check-cast p1, Landroid/os/Parcelable;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 1210
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_5
    instance-of v2, p1, Ljava/lang/Short;

    if-eqz v2, :cond_6

    .line 1211
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1212
    check-cast p1, Ljava/lang/Short;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1213
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_6
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_7

    .line 1214
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1215
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 1216
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_7
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_8

    .line 1217
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1218
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    .line 1219
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_8
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_9

    .line 1220
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1221
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto/16 :goto_0

    .line 1222
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_9
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_b

    .line 1223
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1224
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto :goto_1

    .line 1225
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_b
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    .line 1227
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1228
    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1229
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_c
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_d

    .line 1230
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1231
    check-cast p1, Ljava/util/List;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1232
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_d
    instance-of v0, p1, Landroid/util/SparseArray;

    if-eqz v0, :cond_e

    .line 1233
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1234
    check-cast p1, Landroid/util/SparseArray;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    goto/16 :goto_0

    .line 1235
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_e
    instance-of v0, p1, [Z

    if-eqz v0, :cond_f

    .line 1236
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1237
    check-cast p1, [Z

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Z

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto/16 :goto_0

    .line 1238
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_f
    instance-of v0, p1, [B

    if-eqz v0, :cond_10

    .line 1239
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1240
    check-cast p1, [B

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 1241
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_10
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 1242
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1243
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1244
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_11
    instance-of v0, p1, [Ljava/lang/CharSequence;

    if-eqz v0, :cond_12

    .line 1246
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1247
    check-cast p1, [Ljava/lang/CharSequence;

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1248
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_12
    instance-of v0, p1, Landroid/os/IBinder;

    if-eqz v0, :cond_13

    .line 1249
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1250
    check-cast p1, Landroid/os/IBinder;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 1251
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_13
    instance-of v0, p1, [Landroid/os/Parcelable;

    if-eqz v0, :cond_14

    .line 1252
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1253
    check-cast p1, [Landroid/os/Parcelable;

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Landroid/os/Parcelable;

    invoke-virtual {p0, p1, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 1254
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_14
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_15

    .line 1255
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1256
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1257
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_15
    instance-of v0, p1, [I

    if-eqz v0, :cond_16

    .line 1258
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1259
    check-cast p1, [I

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [I

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 1260
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_16
    instance-of v0, p1, [J

    if-eqz v0, :cond_17

    .line 1261
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1262
    check-cast p1, [J

    .end local p1    # "v":Ljava/lang/Object;
    check-cast p1, [J

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_0

    .line 1263
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_17
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_18

    .line 1264
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1265
    check-cast p1, Ljava/lang/Byte;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1266
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_18
    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_19

    .line 1268
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1269
    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto/16 :goto_0

    .line 1271
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parcel: unable to marshal value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
