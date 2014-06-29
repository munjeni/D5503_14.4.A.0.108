.class public Lcom/android/server/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsService$ClientState;,
        Lcom/android/server/AppOpsService$Callback;,
        Lcom/android/server/AppOpsService$Op;,
        Lcom/android/server/AppOpsService$Ops;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final PRIVACY_GUARD_OP_STATES:[I

.field static final SHOW_PERMISSION_DIALOG:I = 0x1

.field static final TAG:Ljava/lang/String; = "AppOps"

.field static final WHITELIST_FILE:Ljava/lang/String; = "persist.sys.whitelist"

.field static final WRITE_DELAY:J = 0x1b7740L


# instance fields
.field final mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mOpModeWatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPackageModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field final mStrictEnable:Z

.field final mUidOps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AppOpsService$Ops;",
            ">;>;"
        }
    .end annotation
.end field

.field final mWhitelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/AppOpsService;->PRIVACY_GUARD_OP_STATES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x6
        0x4
        0x8
        0xe
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "storagePath"    # Ljava/io/File;

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    .line 92
    new-instance v0, Lcom/android/server/AppOpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$1;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    .line 146
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 148
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 150
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 174
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    .line 1380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mWhitelist:Ljava/util/ArrayList;

    .line 216
    invoke-static {}, Landroid/app/AppOpsManager;->isStrictEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mStrictEnable:Z

    .line 217
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    .line 218
    new-instance v0, Lcom/android/server/AppOpsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$2;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 244
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->readWhitelist()V

    .line 245
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->readState()V

    .line 246
    return-void
.end method

.method private static addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "op"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;>;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 461
    .local p0, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .local p3, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez p3, :cond_1

    .line 476
    :cond_0
    return-object p0

    .line 464
    :cond_1
    if-nez p0, :cond_2

    .line 465
    new-instance p0, Ljava/util/HashMap;

    .end local p0    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 467
    .restart local p0    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 468
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 469
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 470
    .local v2, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-nez v2, :cond_3

    .line 471
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .restart local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :cond_3
    new-instance v3, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/PermissionDialogResult$Result;
    .locals 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "op"    # Lcom/android/server/AppOpsService$Op;

    .prologue
    .line 1259
    new-instance v4, Lcom/android/server/PermissionDialogResult$Result;

    invoke-direct {v4}, Lcom/android/server/PermissionDialogResult$Result;-><init>()V

    .line 1260
    .local v4, "result":Lcom/android/server/PermissionDialogResult$Result;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1261
    .local v2, "origId":J
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1262
    .local v1, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, v1, Landroid/os/Message;->what:I

    .line 1263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1264
    .local v0, "data":Ljava/util/HashMap;
    const-string v5, "result"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    const-string v5, "code"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    const-string v5, "packageName"

    invoke-virtual {v0, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    const-string v5, "op"

    invoke-virtual {v0, v5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    const-string v5, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1270
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1271
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1272
    return-object v4
.end method

.method private collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .locals 13
    .param p1, "pkgOps"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AppOpsService$Ops;",
            "[I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    const/4 v12, 0x0

    .line 326
    .local v12, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez p2, :cond_0

    .line 327
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .restart local v12    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v0

    if-ge v11, v0, :cond_3

    .line 329
    invoke-virtual {p1, v11}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AppOpsService$Op;

    .line 330
    .local v10, "curOp":Lcom/android/server/AppOpsService$Op;
    new-instance v0, Landroid/app/AppOpsManager$OpEntry;

    iget v1, v10, Lcom/android/server/AppOpsService$Op;->op:I

    iget v2, v10, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-wide v3, v10, Lcom/android/server/AppOpsService$Op;->time:J

    iget-wide v5, v10, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v7, v10, Lcom/android/server/AppOpsService$Op;->duration:I

    iget v8, v10, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    iget v9, v10, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    invoke-direct/range {v0 .. v9}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIII)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 335
    .end local v10    # "curOp":Lcom/android/server/AppOpsService$Op;
    .end local v11    # "j":I
    :cond_0
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_1
    array-length v0, p2

    if-ge v11, v0, :cond_3

    .line 336
    aget v0, p2, v11

    invoke-virtual {p1, v0}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AppOpsService$Op;

    .line 337
    .restart local v10    # "curOp":Lcom/android/server/AppOpsService$Op;
    if-eqz v10, :cond_2

    .line 338
    if-nez v12, :cond_1

    .line 339
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .restart local v12    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_1
    new-instance v0, Landroid/app/AppOpsManager$OpEntry;

    iget v1, v10, Lcom/android/server/AppOpsService$Op;->op:I

    iget v2, v10, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-wide v3, v10, Lcom/android/server/AppOpsService$Op;->time:J

    iget-wide v5, v10, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v7, v10, Lcom/android/server/AppOpsService$Op;->duration:I

    iget v8, v10, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    iget v9, v10, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    invoke-direct/range {v0 .. v9}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIII)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 347
    .end local v10    # "curOp":Lcom/android/server/AppOpsService$Op;
    :cond_3
    return-object v12
.end method

.method private getDefaultMode(IILjava/lang/String;)I
    .locals 1
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1241
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppOpsService;->isStrict(IILjava/lang/String;)Z

    move-result v0

    invoke-static {p1, v0}, Landroid/app/AppOpsManager;->opToDefaultMode(IZ)I

    move-result v0

    return v0
.end method

.method private getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "edit"    # Z

    .prologue
    .line 836
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 837
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_0

    .line 838
    const/4 v1, 0x0

    .line 840
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0, p1, p4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    goto :goto_0
.end method

.method private getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;
    .locals 4
    .param p1, "ops"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "code"    # I
    .param p3, "edit"    # Z

    .prologue
    .line 844
    invoke-virtual {p1, p2}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$Op;

    .line 845
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v1, :cond_1

    .line 846
    if-nez p3, :cond_0

    .line 847
    const/4 v2, 0x0

    .line 856
    :goto_0
    return-object v2

    .line 849
    :cond_0
    iget v2, p1, Lcom/android/server/AppOpsService$Ops;->uid:I

    iget-object v3, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v0

    .line 850
    .local v0, "mode":I
    new-instance v1, Lcom/android/server/AppOpsService$Op;

    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    iget v2, p1, Lcom/android/server/AppOpsService$Ops;->uid:I

    iget-object v3, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p2, v0}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;II)V

    .line 851
    .restart local v1    # "op":Lcom/android/server/AppOpsService$Op;
    invoke-virtual {p1, p2, v1}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 853
    .end local v0    # "mode":I
    :cond_1
    if-eqz p3, :cond_2

    .line 854
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    :cond_2
    move-object v2, v1

    .line 856
    goto :goto_0
.end method

.method private getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    .locals 10
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z

    .prologue
    const/16 v8, 0x3e8

    const/4 v6, 0x0

    .line 769
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 770
    .local v4, "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-nez v4, :cond_2

    .line 771
    if-nez p3, :cond_1

    move-object v3, v6

    .line 817
    :cond_0
    :goto_0
    return-object v3

    .line 774
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 775
    .restart local v4    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 777
    :cond_2
    if-nez p1, :cond_4

    .line 778
    const-string p2, "root"

    .line 784
    :cond_3
    :goto_1
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$Ops;

    .line 785
    .local v3, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v3, :cond_0

    .line 786
    if-nez p3, :cond_6

    move-object v3, v6

    .line 787
    goto :goto_0

    .line 779
    .end local v3    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_4
    const/16 v7, 0x7d0

    if-ne p1, v7, :cond_5

    .line 780
    const-string p2, "com.android.shell"

    goto :goto_1

    .line 781
    :cond_5
    if-ne p1, v8, :cond_3

    if-nez p2, :cond_3

    .line 782
    const-string p2, "android"

    goto :goto_1

    .line 791
    .restart local v3    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_6
    if-eqz p1, :cond_9

    if-eq p1, v8, :cond_9

    .line 792
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 794
    .local v1, "ident":J
    const/4 v5, -0x1

    .line 796
    .local v5, "pkgUid":I
    :try_start_0
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v7, p2, v8}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 803
    :cond_7
    :goto_2
    if-eq v5, p1, :cond_8

    .line 806
    :try_start_1
    const-string v7, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad call: specified package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " under uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " but it is really "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 811
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v3, v6

    goto :goto_0

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v7, "media"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-eqz v7, :cond_7

    .line 800
    const/16 v5, 0x3f5

    goto :goto_2

    .line 811
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 814
    .end local v1    # "ident":J
    .end local v5    # "pkgUid":I
    :cond_9
    new-instance v3, Lcom/android/server/AppOpsService$Ops;

    .end local v3    # "ops":Lcom/android/server/AppOpsService$Ops;
    invoke-direct {v3, p2, p1}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;I)V

    .line 815
    .restart local v3    # "ops":Lcom/android/server/AppOpsService$Ops;
    invoke-virtual {v4, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 811
    .restart local v1    # "ident":J
    .restart local v5    # "pkgUid":I
    :catchall_0
    move-exception v6

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private isInWhitelist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isStrict(IILjava/lang/String;)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1246
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->mStrictEnable:Z

    if-nez v1, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x2710

    if-le p2, v1, :cond_0

    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->isInWhitelist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .locals 2
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "mode"    # I
    .param p3, "operation"    # Ljava/lang/String;

    .prologue
    .line 1276
    if-eqz p1, :cond_0

    .line 1277
    iget v1, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    .line 1278
    .local v0, "switchCode":I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 1288
    .end local v0    # "switchCode":I
    :cond_0
    :goto_0
    return-void

    .line 1282
    .restart local v0    # "switchCode":I
    :cond_1
    if-nez p2, :cond_0

    goto :goto_0
.end method

.method private pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .locals 6
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 397
    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 398
    const/4 v2, 0x0

    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 399
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v0, :cond_0

    .line 400
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v0, v2}, Lcom/android/server/AppOpsService$Ops;->remove(I)V

    .line 401
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 402
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 403
    .local v1, "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v1, :cond_0

    .line 404
    iget-object v2, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 406
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 412
    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v1    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_0
    return-void
.end method

.method private recordOperationLocked(IILjava/lang/String;I)V
    .locals 9
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 1292
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 1293
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v2, :cond_3

    .line 1294
    iget v4, v2, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    if-eqz v4, :cond_0

    .line 1295
    const-string v4, "noteOperartion"

    invoke-direct {p0, v2, p4, v4}, Lcom/android/server/AppOpsService;->printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 1296
    :cond_0
    iget v4, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    if-eqz v4, :cond_1

    .line 1297
    const-string v4, "startOperation"

    invoke-direct {p0, v2, p4, v4}, Lcom/android/server/AppOpsService;->printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 1298
    :cond_1
    iget v4, v2, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v3

    .line 1299
    .local v3, "switchCode":I
    const/4 v4, 0x1

    if-ne p4, v4, :cond_4

    .line 1300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1325
    :cond_2
    iput v6, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    .line 1326
    iput v6, v2, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    .line 1328
    .end local v3    # "switchCode":I
    :cond_3
    return-void

    .line 1301
    .restart local v3    # "switchCode":I
    :cond_4
    if-nez p4, :cond_2

    .line 1302
    iget v4, v2, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    if-eqz v4, :cond_5

    .line 1303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1304
    iput-wide v7, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1306
    :cond_5
    iget v4, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    if-eqz v4, :cond_2

    .line 1307
    iget v4, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-nez v4, :cond_6

    .line 1308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1309
    iput-wide v7, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1310
    const/4 v4, -0x1

    iput v4, v2, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1312
    :cond_6
    iget v4, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    iget v5, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    add-int/2addr v4, v5

    iput v4, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 1313
    :goto_0
    iget-object v4, v2, Lcom/android/server/AppOpsService$Op;->mClientTokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 1314
    iget-object v4, v2, Lcom/android/server/AppOpsService$Op;->mClientTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 1315
    .local v1, "clientToken":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 1316
    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    if-eqz v0, :cond_7

    .line 1317
    iget-object v4, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    .line 1318
    iget-object v4, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    :cond_7
    iget-object v4, v2, Lcom/android/server/AppOpsService$Op;->mClientTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method private scheduleWriteLocked()V
    .locals 4

    .prologue
    .line 821
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_0

    .line 822
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 823
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 825
    :cond_0
    return-void
.end method

.method private scheduleWriteNowLocked()V
    .locals 2

    .prologue
    .line 828
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_0

    .line 829
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 832
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 833
    return-void
.end method

.method private verifyIncomingOp(I)V
    .locals 3
    .param p1, "op"    # I

    .prologue
    .line 762
    if-ltz p1, :cond_0

    const/16 v0, 0x33

    if-ge p1, v0, :cond_0

    .line 763
    return-void

    .line 765
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad operation #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIncomingUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 751
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 757
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public checkOperation(IILjava/lang/String;)I
    .locals 3
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 601
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 602
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 603
    monitor-enter p0

    .line 604
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, p3, v2}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v0

    .line 605
    .local v0, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v0, :cond_0

    .line 606
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v1

    monitor-exit p0

    .line 608
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    goto :goto_0

    .line 609
    .end local v0    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkPackage(ILjava/lang/String;)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 614
    monitor-enter p0

    .line 615
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 616
    const/4 v0, 0x0

    monitor-exit p0

    .line 618
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    goto :goto_0

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1100
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v13, "android.permission.DUMP"

    invoke-virtual {v12, v13}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_0

    .line 1102
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Permission Denial: can\'t dump ApOps service from from pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1195
    :goto_0
    return-void

    .line 1108
    :cond_0
    monitor-enter p0

    .line 1109
    :try_start_0
    const-string v12, "Current AppOps Service state:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1111
    .local v7, "now":J
    const/4 v6, 0x0

    .line 1112
    .local v6, "needSep":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-lez v12, :cond_2

    .line 1113
    const/4 v6, 0x1

    .line 1114
    const-string v12, "  Op mode watchers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1115
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v3, v12, :cond_2

    .line 1116
    const-string v12, "    Op "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-static {v12}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1117
    const-string v12, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1118
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1119
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_1

    .line 1120
    const-string v12, "      #"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v12, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1119
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1115
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1125
    .end local v1    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v3    # "i":I
    .end local v5    # "j":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-lez v12, :cond_4

    .line 1126
    const/4 v6, 0x1

    .line 1127
    const-string v12, "  Package mode watchers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1128
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v3, v12, :cond_4

    .line 1129
    const-string v12, "    Pkg "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1130
    const-string v12, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1131
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1132
    .restart local v1    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_3

    .line 1133
    const-string v12, "      #"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v12, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1132
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1128
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1138
    .end local v1    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v3    # "i":I
    .end local v5    # "j":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-lez v12, :cond_5

    .line 1139
    const/4 v6, 0x1

    .line 1140
    const-string v12, "  All mode watchers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1141
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v3, v12, :cond_5

    .line 1142
    const-string v12, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1143
    const-string v12, " -> "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1141
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1146
    .end local v3    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-lez v12, :cond_7

    .line 1147
    const/4 v6, 0x1

    .line 1148
    const-string v12, "  Clients:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1149
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v3, v12, :cond_7

    .line 1150
    const-string v12, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v12, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1151
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$ClientState;

    .line 1152
    .local v2, "cs":Lcom/android/server/AppOpsService$ClientState;
    const-string v12, "      "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1153
    iget-object v12, v2, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v12, :cond_6

    iget-object v12, v2, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_6

    .line 1154
    const-string v12, "      Started ops:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1155
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_7
    iget-object v12, v2, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_6

    .line 1156
    iget-object v12, v2, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AppOpsService$Op;

    .line 1157
    .local v9, "op":Lcom/android/server/AppOpsService$Op;
    const-string v12, "        "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "uid="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v12, v9, Lcom/android/server/AppOpsService$Op;->uid:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 1158
    const-string v12, " pkg="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v9, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1159
    const-string v12, " op="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v12, v9, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v12}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1155
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 1149
    .end local v5    # "j":I
    .end local v9    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 1164
    .end local v2    # "cs":Lcom/android/server/AppOpsService$ClientState;
    .end local v3    # "i":I
    :cond_7
    if-eqz v6, :cond_8

    .line 1165
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1167
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v3, v12, :cond_e

    .line 1168
    const-string v12, "  Uid "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v12, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1169
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    .line 1170
    .local v11, "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AppOpsService$Ops;

    .line 1171
    .local v10, "ops":Lcom/android/server/AppOpsService$Ops;
    const-string v12, "    Package "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v10, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1172
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_9
    invoke-virtual {v10}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v12

    if-ge v5, v12, :cond_9

    .line 1173
    invoke-virtual {v10, v5}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AppOpsService$Op;

    .line 1174
    .restart local v9    # "op":Lcom/android/server/AppOpsService$Op;
    const-string v12, "      "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v12, v9, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v12}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1175
    const-string v12, ": mode="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v12, v9, Lcom/android/server/AppOpsService$Op;->mode:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 1176
    iget-wide v12, v9, Lcom/android/server/AppOpsService$Op;->time:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_a

    .line 1177
    const-string v12, "; time="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v12, v9, Lcom/android/server/AppOpsService$Op;->time:J

    sub-long v12, v7, v12

    move-object/from16 v0, p2

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1178
    const-string v12, " ago"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1180
    :cond_a
    iget-wide v12, v9, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_b

    .line 1181
    const-string v12, "; rejectTime="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v12, v9, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    sub-long v12, v7, v12

    move-object/from16 v0, p2

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1182
    const-string v12, " ago"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1184
    :cond_b
    iget v12, v9, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_c

    .line 1185
    const-string v12, " (running)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1172
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 1187
    :cond_c
    const-string v12, "; duration="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1188
    iget v12, v9, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v12, v12

    move-object/from16 v0, p2

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1189
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_a

    .line 1194
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "j":I
    .end local v6    # "needSep":Z
    .end local v7    # "now":J
    .end local v9    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v10    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v11    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 1167
    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "needSep":Z
    .restart local v7    # "now":J
    .restart local v11    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    .line 1194
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v11    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_e
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 716
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 717
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    move-object v0, p1

    .line 718
    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 719
    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    .line 720
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p2, p3, p4, v2}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    .line 721
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v1, :cond_0

    .line 722
    monitor-exit p0

    .line 732
    :goto_0
    return-void

    .line 724
    :cond_0
    iget-object v2, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 725
    iget-object v2, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 726
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Operation not started: uid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " op="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 731
    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 730
    .restart local v1    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_1
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/AppOpsService;->finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V

    .line 731
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V
    .locals 4
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;

    .prologue
    const/4 v1, 0x1

    .line 735
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-gt v0, v1, :cond_1

    .line 736
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-ne v0, v1, :cond_0

    .line 737
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 738
    iget-wide v0, p1, Lcom/android/server/AppOpsService$Op;->time:J

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/AppOpsService$Op;->time:J

    .line 744
    :goto_0
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 748
    :goto_1
    return-void

    .line 740
    :cond_0
    const-string v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finishing op nesting under-run: uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 746
    :cond_1
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    goto :goto_1
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 377
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 379
    monitor-enter p0

    .line 380
    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 381
    .local v0, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_0

    .line 382
    monitor-exit p0

    .line 392
    :goto_0
    return-object v1

    .line 384
    :cond_0
    invoke-direct {p0, v0, p3}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v2

    .line 385
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v2, :cond_1

    .line 386
    monitor-exit p0

    goto :goto_0

    .line 393
    .end local v0    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v2    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 388
    .restart local v0    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .restart local v2    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v3, Landroid/app/AppOpsManager$PackageOps;

    iget-object v4, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/AppOpsService$Ops;->uid:I

    invoke-direct {v3, v4, v5, v2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 391
    .local v3, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 13
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 354
    const/4 v4, 0x0

    .line 355
    .local v4, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    monitor-enter p0

    .line 356
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_1

    .line 357
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 358
    .local v2, "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    move-object v5, v4

    .end local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v5, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$Ops;

    .line 359
    .local v3, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    invoke-direct {p0, v3, p1}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v6

    .line 360
    .local v6, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v6, :cond_3

    .line 361
    if-nez v5, :cond_2

    .line 362
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 364
    .end local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_2
    :try_start_2
    new-instance v7, Landroid/app/AppOpsManager$PackageOps;

    iget-object v8, v3, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget v9, v3, Lcom/android/server/AppOpsService$Ops;->uid:I

    invoke-direct {v7, v8, v9, v6}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 366
    .local v7, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v7    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :goto_3
    move-object v5, v4

    .line 368
    .end local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_1

    .line 356
    .end local v3    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v6    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move-object v4, v5

    .end local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_0

    .line 370
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_1
    monitor-exit p0

    .line 371
    return-object v4

    .line 370
    :catchall_0
    move-exception v8

    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .end local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_4

    .end local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v3    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .restart local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_2
    move-object v4, v5

    .end local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_2

    .end local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_3
    move-object v4, v5

    .end local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_3
.end method

.method public getPrivacyGuardSettingForPackage(ILjava/lang/String;)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1199
    sget-object v0, Lcom/android/server/AppOpsService;->PRIVACY_GUARD_OP_STATES:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 1200
    .local v3, "op":I
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v4

    .line 1201
    .local v4, "switchOp":I
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1203
    const/4 v5, 0x1

    .line 1206
    .end local v3    # "op":I
    .end local v4    # "switchOp":I
    :goto_1
    return v5

    .line 1199
    .restart local v3    # "op":I
    .restart local v4    # "switchOp":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1206
    .end local v3    # "op":I
    .end local v4    # "switchOp":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2
    .param p1, "clientToken"    # Landroid/os/IBinder;

    .prologue
    .line 589
    monitor-enter p0

    .line 590
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 591
    .local v0, "cs":Lcom/android/server/AppOpsService$ClientState;
    if-nez v0, :cond_0

    .line 592
    new-instance v0, Lcom/android/server/AppOpsService$ClientState;

    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    invoke-direct {v0, p0, p1}, Lcom/android/server/AppOpsService$ClientState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V

    .line 593
    .restart local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    :cond_0
    monitor-exit p0

    return-object v0

    .line 596
    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteOperation(IILjava/lang/String;)I
    .locals 12
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v11, 0x1

    .line 626
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 627
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 628
    monitor-enter p0

    .line 629
    const/4 v7, 0x1

    :try_start_0
    invoke-direct {p0, p2, p3, v7}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v1

    .line 630
    .local v1, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v1, :cond_0

    .line 633
    monitor-exit p0

    .line 663
    :goto_0
    return v5

    .line 635
    :cond_0
    const/4 v7, 0x1

    invoke-direct {p0, v1, p1, v7}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v0

    .line 636
    .local v0, "op":Lcom/android/server/AppOpsService$Op;
    iget v7, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 637
    const-string v7, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Noting op not finished: uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pkg "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " time="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v0, Lcom/android/server/AppOpsService$Op;->time:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " duration="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_1
    const/4 v7, 0x0

    iput v7, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 641
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v2

    .line 642
    .local v2, "switchCode":I
    if-eq v2, p1, :cond_3

    const/4 v7, 0x1

    invoke-direct {p0, v1, v2, v7}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v3

    .line 643
    .local v3, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_1
    iget v7, v3, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v7, v11, :cond_2

    iget v7, v3, Lcom/android/server/AppOpsService$Op;->mode:I

    if-ne v7, v5, :cond_4

    .line 647
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 648
    iget v5, v0, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    .line 649
    iget v5, v3, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    goto :goto_0

    .line 662
    .end local v0    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v2    # "switchCode":I
    .end local v3    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v2    # "switchCode":I
    :cond_3
    move-object v3, v0

    .line 642
    goto :goto_1

    .line 650
    .restart local v3    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_4
    :try_start_1
    iget v5, v3, Lcom/android/server/AppOpsService$Op;->mode:I

    if-nez v5, :cond_5

    .line 653
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/android/server/AppOpsService$Op;->time:J

    .line 654
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 655
    iget v5, v0, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    .line 656
    monitor-exit p0

    move v5, v6

    goto/16 :goto_0

    .line 658
    :cond_5
    iget v5, v0, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    .line 659
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/server/AppOpsService;->askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/PermissionDialogResult$Result;

    move-result-object v4

    .line 662
    .local v4, "userDialogResult":Lcom/android/server/PermissionDialogResult$Result;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 663
    invoke-virtual {v4}, Lcom/android/server/PermissionDialogResult$Result;->get()I

    move-result v5

    goto/16 :goto_0
.end method

.method public notifyOperation(IILjava/lang/String;IZ)V
    .locals 9
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .param p5, "remember"    # Z

    .prologue
    .line 1332
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1333
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1334
    const/4 v3, 0x0

    .line 1335
    .local v3, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v5

    .line 1336
    .local v5, "switchCode":I
    monitor-enter p0

    .line 1337
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->recordOperationLocked(IILjava/lang/String;I)V

    .line 1338
    const/4 v6, 0x1

    invoke-direct {p0, v5, p2, p3, v6}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 1339
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v2, :cond_4

    .line 1341
    iget-object v6, v2, Lcom/android/server/AppOpsService$Op;->dialogResult:Lcom/android/server/PermissionDialogResult;

    iget-object v6, v6, Lcom/android/server/PermissionDialogResult;->mDialog:Lcom/android/server/PermissionDialog;

    if-eqz v6, :cond_0

    .line 1342
    iget-object v6, v2, Lcom/android/server/AppOpsService$Op;->dialogResult:Lcom/android/server/PermissionDialogResult;

    invoke-virtual {v6, p4}, Lcom/android/server/PermissionDialogResult;->notifyAll(I)V

    .line 1343
    iget-object v6, v2, Lcom/android/server/AppOpsService$Op;->dialogResult:Lcom/android/server/PermissionDialogResult;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/PermissionDialogResult;->mDialog:Lcom/android/server/PermissionDialog;

    .line 1345
    :cond_0
    if-eqz p5, :cond_4

    iget v6, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v6, p4, :cond_4

    .line 1346
    iput p4, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1347
    iget-object v6, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1348
    .local v0, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v0, :cond_2

    .line 1349
    if-nez v3, :cond_1

    .line 1350
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v4, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    move-object v3, v4

    .line 1352
    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    move-object v4, v3

    .line 1354
    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :try_start_1
    iget-object v6, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v6, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 1355
    .restart local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v0, :cond_7

    .line 1356
    if-nez v4, :cond_6

    .line 1357
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1359
    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :goto_0
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1361
    :goto_1
    iget v6, v2, Lcom/android/server/AppOpsService$Op;->op:I

    iget v7, v2, Lcom/android/server/AppOpsService$Op;->uid:I

    iget-object v8, v2, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v6

    if-ne p4, v6, :cond_3

    .line 1364
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/AppOpsService;->pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 1366
    :cond_3
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteNowLocked()V

    .line 1369
    .end local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1370
    if-eqz v3, :cond_5

    .line 1371
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 1373
    :try_start_3
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Callback;

    iget-object v6, v6, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v6, v5, p3}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1371
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1369
    .end local v1    # "i":I
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_0
    move-exception v6

    :goto_4
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 1378
    .restart local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_5
    return-void

    .line 1374
    .restart local v1    # "i":I
    :catch_0
    move-exception v6

    goto :goto_3

    .line 1369
    .end local v1    # "i":I
    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_4

    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_6
    move-object v3, v4

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_0

    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_7
    move-object v3, v4

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_1
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 288
    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 290
    .local v0, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 292
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 295
    :cond_0
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 298
    :cond_1
    monitor-exit p0

    .line 299
    return-void

    .line 298
    .end local v0    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    .line 250
    const-string v0, "appops"

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 251
    return-void
.end method

.method readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 927
    const/4 v4, 0x0

    const-string v5, "n"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 928
    .local v1, "pkgName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 931
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    if-ne v3, v7, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_3

    .line 932
    :cond_1
    if-eq v3, v7, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 936
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 937
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "uid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 938
    invoke-virtual {p0, p1, v1}, Lcom/android/server/AppOpsService;->readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_0

    .line 940
    :cond_2
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <pkg>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 945
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method readState()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v9, 0x2

    const/4 v11, 0x1

    .line 860
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v8

    .line 861
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    :try_start_1
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    .line 869
    .local v3, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 871
    .local v4, "success":Z
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 872
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 875
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    if-eq v6, v9, :cond_1

    if-ne v6, v11, :cond_0

    .line 879
    :cond_1
    if-eq v6, v9, :cond_3

    .line 880
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v9, "no start tag found"

    invoke-direct {v7, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 900
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catch_0
    move-exception v0

    .line 901
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 913
    if-nez v4, :cond_2

    .line 914
    :try_start_4
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 917
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 921
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 922
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 923
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v4    # "success":Z
    :goto_1
    return-void

    .line 865
    :catch_1
    move-exception v0

    .line 866
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_8
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No existing app ops "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v10}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; starting empty"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    monitor-exit v8

    goto :goto_1

    .line 922
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v7

    .line 883
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "success":Z
    .restart local v6    # "type":I
    :cond_3
    :try_start_a
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 885
    .local v1, "outerDepth":I
    :cond_4
    :goto_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v11, :cond_9

    if-ne v6, v12, :cond_5

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_9

    .line 886
    :cond_5
    if-eq v6, v12, :cond_4

    const/4 v7, 0x4

    if-eq v6, v7, :cond_4

    .line 890
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 891
    .local v5, "tagName":Ljava/lang/String;
    const-string v7, "pkg"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 892
    invoke-virtual {p0, v2}, Lcom/android/server/AppOpsService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    .line 902
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_2
    move-exception v0

    .line 903
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_b
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 913
    if-nez v4, :cond_6

    .line 914
    :try_start_c
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 917
    :cond_6
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_0

    .line 918
    :catch_3
    move-exception v7

    goto :goto_0

    .line 894
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_7
    :try_start_e
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <app-ops>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_2

    .line 904
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_4
    move-exception v0

    .line 905
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_f
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 913
    if-nez v4, :cond_8

    .line 914
    :try_start_10
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 917
    :cond_8
    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto/16 :goto_0

    .line 918
    :catch_5
    move-exception v7

    goto/16 :goto_0

    .line 899
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :cond_9
    const/4 v4, 0x1

    .line 913
    if-nez v4, :cond_a

    .line 914
    :try_start_12
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 917
    :cond_a
    :try_start_13
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto/16 :goto_0

    .line 918
    :catch_6
    move-exception v7

    goto/16 :goto_0

    .line 906
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catch_7
    move-exception v0

    .line 907
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_14
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 913
    if-nez v4, :cond_b

    .line 914
    :try_start_15
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 917
    :cond_b
    :try_start_16
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto/16 :goto_0

    .line 918
    :catch_8
    move-exception v7

    goto/16 :goto_0

    .line 908
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_9
    move-exception v0

    .line 909
    .local v0, "e":Ljava/io/IOException;
    :try_start_17
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 913
    if-nez v4, :cond_c

    .line 914
    :try_start_18
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 917
    :cond_c
    :try_start_19
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    goto/16 :goto_0

    .line 918
    :catch_a
    move-exception v7

    goto/16 :goto_0

    .line 910
    .end local v0    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v0

    .line 911
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_1a
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 913
    if-nez v4, :cond_d

    .line 914
    :try_start_1b
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 917
    :cond_d
    :try_start_1c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    goto/16 :goto_0

    .line 918
    :catch_c
    move-exception v7

    goto/16 :goto_0

    .line 913
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_1
    move-exception v7

    if-nez v4, :cond_e

    .line 914
    :try_start_1d
    iget-object v9, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 917
    :cond_e
    :try_start_1e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    .line 919
    :goto_3
    :try_start_1f
    throw v7

    .line 921
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v4    # "success":Z
    :catchall_2
    move-exception v7

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    :try_start_20
    throw v7
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 918
    .local v0, "e":Ljava/lang/IllegalStateException;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "success":Z
    :catch_d
    move-exception v7

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_e
    move-exception v9

    goto :goto_3
.end method

.method readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 21
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 949
    const/16 v18, 0x0

    const-string v19, "n"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 950
    .local v17, "uid":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    .line 953
    .local v12, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    .local v16, "type":I
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v12, :cond_c

    .line 954
    :cond_1
    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    const/16 v18, 0x4

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 958
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 959
    .local v14, "tagName":Ljava/lang/String;
    const-string v18, "op"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 960
    const/16 v18, 0x0

    const-string v19, "n"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 962
    .local v4, "code":I
    const/16 v18, 0x0

    const-string v19, "ns"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 963
    .local v5, "codeNameStr":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 965
    invoke-static {v5}, Landroid/app/AppOpsManager;->nameToOp(Ljava/lang/String;)I

    move-result v4

    .line 968
    :cond_2
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v4, v0, :cond_0

    const/16 v18, 0x33

    move/from16 v0, v18

    if-ge v4, v0, :cond_0

    .line 972
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v6

    .line 973
    .local v6, "defaultMode":I
    new-instance v10, Lcom/android/server/AppOpsService$Op;

    move/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v10, v0, v1, v4, v6}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;II)V

    .line 974
    .local v10, "op":Lcom/android/server/AppOpsService$Op;
    const/16 v18, 0x0

    const-string v19, "m"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 975
    .local v9, "mode":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 976
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v10, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 978
    :cond_3
    const/16 v18, 0x0

    const-string v19, "t"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 979
    .local v15, "time":Ljava/lang/String;
    if-eqz v15, :cond_4

    .line 980
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v10, Lcom/android/server/AppOpsService$Op;->time:J

    .line 982
    :cond_4
    const/16 v18, 0x0

    const-string v19, "r"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 983
    if-eqz v15, :cond_5

    .line 984
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v10, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 986
    :cond_5
    const/16 v18, 0x0

    const-string v19, "d"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 987
    .local v7, "dur":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 988
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v10, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 990
    :cond_6
    const/16 v18, 0x0

    const-string v19, "ac"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 991
    .local v3, "allowed":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 992
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v10, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    .line 994
    :cond_7
    const/16 v18, 0x0

    const-string v19, "ic"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 995
    .local v8, "ignored":Ljava/lang/String;
    if-eqz v8, :cond_8

    .line 996
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v10, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    .line 998
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    .line 999
    .local v13, "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-nez v13, :cond_9

    .line 1000
    new-instance v13, Ljava/util/HashMap;

    .end local v13    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1001
    .restart local v13    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1003
    :cond_9
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppOpsService$Ops;

    .line 1004
    .local v11, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v11, :cond_a

    .line 1005
    new-instance v11, Lcom/android/server/AppOpsService$Ops;

    .end local v11    # "ops":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-direct {v11, v0, v1}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;I)V

    .line 1006
    .restart local v11    # "ops":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    :cond_a
    iget v0, v10, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v11, v0, v10}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1010
    .end local v3    # "allowed":Ljava/lang/String;
    .end local v4    # "code":I
    .end local v5    # "codeNameStr":Ljava/lang/String;
    .end local v6    # "defaultMode":I
    .end local v7    # "dur":Ljava/lang/String;
    .end local v8    # "ignored":Ljava/lang/String;
    .end local v9    # "mode":Ljava/lang/String;
    .end local v10    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v11    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v13    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v15    # "time":Ljava/lang/String;
    :cond_b
    const-string v18, "AppOps"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown element under <pkg>: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1015
    .end local v14    # "tagName":Ljava/lang/String;
    :cond_c
    return-void
.end method

.method readWhitelist()V
    .locals 14

    .prologue
    .line 1384
    const-string v11, "persist.sys.whitelist"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1385
    .local v10, "whitelistFileName":Ljava/lang/String;
    iget-boolean v11, p0, Lcom/android/server/AppOpsService;->mStrictEnable:Z

    if-eqz v11, :cond_0

    const-string v11, ""

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1457
    :cond_0
    :goto_0
    return-void

    .line 1388
    :cond_1
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1389
    .local v9, "whitelistFile":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1390
    .local v1, "mWhitelistFile":Landroid/util/AtomicFile;
    monitor-enter v1

    .line 1391
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1394
    :try_start_1
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v5

    .line 1400
    .local v5, "stream":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 1402
    .local v6, "success":Z
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 1403
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v3, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1406
    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v11, 0x2

    if-eq v8, v11, :cond_3

    const/4 v11, 0x1

    if-ne v8, v11, :cond_2

    .line 1410
    :cond_3
    const/4 v11, 0x2

    if-eq v8, v11, :cond_5

    .line 1411
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "no start tag found"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1434
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    :catch_0
    move-exception v0

    .line 1435
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v11, "AppOps"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1447
    if-nez v6, :cond_4

    .line 1448
    :try_start_4
    iget-object v11, p0, Lcom/android/server/AppOpsService;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1451
    :cond_4
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1455
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1456
    :try_start_7
    monitor-exit v1

    goto :goto_0

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .end local v6    # "success":Z
    :catchall_0
    move-exception v11

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v11

    .line 1395
    :catch_1
    move-exception v0

    .line 1396
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_8
    const-string v11, "AppOps"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No existing app ops whitelist "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 1414
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "success":Z
    .restart local v8    # "type":I
    :cond_5
    :try_start_a
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1416
    .local v2, "outerDepth":I
    :cond_6
    :goto_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v11, 0x1

    if-eq v8, v11, :cond_b

    const/4 v11, 0x3

    if-ne v8, v11, :cond_7

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v2, :cond_b

    .line 1418
    :cond_7
    const/4 v11, 0x3

    if-eq v8, v11, :cond_6

    const/4 v11, 0x4

    if-eq v8, v11, :cond_6

    .line 1423
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1424
    .local v7, "tagName":Ljava/lang/String;
    const-string v11, "pkg"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1425
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v3, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1426
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/AppOpsService;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    .line 1436
    .end local v2    # "outerDepth":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_2
    move-exception v0

    .line 1437
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_b
    const-string v11, "AppOps"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1447
    if-nez v6, :cond_8

    .line 1448
    :try_start_c
    iget-object v11, p0, Lcom/android/server/AppOpsService;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1451
    :cond_8
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_1

    .line 1452
    :catch_3
    move-exception v11

    goto :goto_1

    .line 1428
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v2    # "outerDepth":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "tagName":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_9
    :try_start_e
    const-string v11, "AppOps"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown element under <whitelist-pkgs>: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_2

    .line 1438
    .end local v2    # "outerDepth":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_4
    move-exception v0

    .line 1439
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_f
    const-string v11, "AppOps"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1447
    if-nez v6, :cond_a

    .line 1448
    :try_start_10
    iget-object v11, p0, Lcom/android/server/AppOpsService;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1451
    :cond_a
    :try_start_11
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto/16 :goto_1

    .line 1452
    :catch_5
    move-exception v11

    goto/16 :goto_1

    .line 1433
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "outerDepth":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_b
    const/4 v6, 0x1

    .line 1447
    if-nez v6, :cond_c

    .line 1448
    :try_start_12
    iget-object v11, p0, Lcom/android/server/AppOpsService;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 1451
    :cond_c
    :try_start_13
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto/16 :goto_1

    .line 1452
    :catch_6
    move-exception v11

    goto/16 :goto_1

    .line 1440
    .end local v2    # "outerDepth":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    :catch_7
    move-exception v0

    .line 1441
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_14
    const-string v11, "AppOps"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 1447
    if-nez v6, :cond_d

    .line 1448
    :try_start_15
    iget-object v11, p0, Lcom/android/server/AppOpsService;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 1451
    :cond_d
    :try_start_16
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto/16 :goto_1

    .line 1452
    :catch_8
    move-exception v11

    goto/16 :goto_1

    .line 1442
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_9
    move-exception v0

    .line 1443
    .local v0, "e":Ljava/io/IOException;
    :try_start_17
    const-string v11, "AppOps"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 1447
    if-nez v6, :cond_e

    .line 1448
    :try_start_18
    iget-object v11, p0, Lcom/android/server/AppOpsService;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 1451
    :cond_e
    :try_start_19
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    goto/16 :goto_1

    .line 1452
    :catch_a
    move-exception v11

    goto/16 :goto_1

    .line 1444
    .end local v0    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v0

    .line 1445
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_1a
    const-string v11, "AppOps"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 1447
    if-nez v6, :cond_f

    .line 1448
    :try_start_1b
    iget-object v11, p0, Lcom/android/server/AppOpsService;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 1451
    :cond_f
    :try_start_1c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    goto/16 :goto_1

    .line 1452
    :catch_c
    move-exception v11

    goto/16 :goto_1

    .line 1447
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_1
    move-exception v11

    if-nez v6, :cond_10

    .line 1448
    :try_start_1d
    iget-object v12, p0, Lcom/android/server/AppOpsService;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 1451
    :cond_10
    :try_start_1e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    .line 1453
    :goto_3
    :try_start_1f
    throw v11

    .line 1455
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .end local v6    # "success":Z
    :catchall_2
    move-exception v11

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    :try_start_20
    throw v11
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 1452
    .local v0, "e":Ljava/lang/IllegalStateException;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "success":Z
    :catch_d
    move-exception v11

    goto/16 :goto_1

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_e
    move-exception v12

    goto :goto_3
.end method

.method public resetAllModes()V
    .locals 24

    .prologue
    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v21

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 483
    const/4 v4, 0x0

    .line 484
    .local v4, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    monitor-enter p0

    .line 485
    const/4 v6, 0x0

    .line 486
    .local v6, "changed":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v19

    add-int/lit8 v10, v19, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_5

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashMap;

    .line 488
    .local v15, "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 489
    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    :cond_0
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 490
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 491
    .local v9, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 492
    .local v14, "packageName":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/AppOpsService$Ops;

    .line 493
    .local v16, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    .local v13, "j":I
    :goto_2
    if-ltz v13, :cond_2

    .line 494
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$Op;

    .line 495
    .local v7, "curOp":Lcom/android/server/AppOpsService$Op;
    iget v0, v7, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v19

    if-eqz v19, :cond_1

    iget v0, v7, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v19, v0

    iget v0, v7, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v20, v0

    iget v0, v7, Lcom/android/server/AppOpsService$Op;->uid:I

    move/from16 v21, v0

    iget-object v0, v7, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 497
    iget v0, v7, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v19, v0

    iget v0, v7, Lcom/android/server/AppOpsService$Op;->uid:I

    move/from16 v20, v0

    iget-object v0, v7, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v7, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 498
    const/4 v6, 0x1

    .line 499
    iget v0, v7, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    iget v0, v7, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v4, v14, v0, v1}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v4

    .line 501
    iget v0, v7, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v4, v14, v0, v1}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v4

    .line 503
    iget-wide v0, v7, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_1

    iget-wide v0, v7, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_1

    .line 504
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/server/AppOpsService$Ops;->removeAt(I)V

    .line 493
    :cond_1
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_2

    .line 508
    .end local v7    # "curOp":Lcom/android/server/AppOpsService$Op;
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v19

    if-nez v19, :cond_0

    .line 509
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 519
    .end local v9    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v10    # "i":I
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v13    # "j":I
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v16    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    :catchall_0
    move-exception v19

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 512
    .restart local v10    # "i":I
    .restart local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .restart local v15    # "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v19

    if-nez v19, :cond_4

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->removeAt(I)V

    .line 486
    :cond_4
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_0

    .line 516
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v15    # "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_5
    if-eqz v6, :cond_6

    .line 517
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteNowLocked()V

    .line 519
    :cond_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    if-eqz v4, :cond_8

    .line 521
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 522
    .local v8, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Callback;

    .line 523
    .local v5, "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 524
    .local v18, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v10, 0x0

    :goto_3
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_7

    .line 525
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/Pair;

    .line 527
    .local v17, "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_2
    iget-object v0, v5, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 524
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 533
    .end local v5    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v8    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v17    # "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v18    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_8
    return-void

    .line 528
    .restart local v5    # "cb":Lcom/android/server/AppOpsService$Callback;
    .restart local v8    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v17    # "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v18    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catch_0
    move-exception v19

    goto :goto_4
.end method

.method public resetCounters()V
    .locals 13

    .prologue
    .line 1220
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1222
    monitor-enter p0

    .line 1223
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 1224
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 1225
    .local v6, "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1226
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1227
    .local v5, "packageName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$Ops;

    .line 1228
    .local v7, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v7}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 1229
    invoke-virtual {v7, v4}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .line 1230
    .local v0, "curOp":Lcom/android/server/AppOpsService$Op;
    const/4 v8, 0x0

    iput v8, v0, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    .line 1231
    const/4 v8, 0x0

    iput v8, v0, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    .line 1228
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1223
    .end local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v4    # "j":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v7    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1236
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_2
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteNowLocked()V

    .line 1237
    monitor-exit p0

    .line 1238
    return-void

    .line 1237
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 8
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 416
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 417
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 418
    const/4 v3, 0x0

    .line 419
    .local v3, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 420
    monitor-enter p0

    .line 421
    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v5}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 422
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v2, :cond_3

    .line 423
    iget v5, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v5, p4, :cond_3

    .line 424
    iput p4, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 425
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 426
    .local v0, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v0, :cond_1

    .line 427
    if-nez v3, :cond_0

    .line 428
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v4, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    move-object v3, v4

    .line 430
    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object v4, v3

    .line 432
    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :try_start_1
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v5, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 433
    .restart local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v0, :cond_6

    .line 434
    if-nez v4, :cond_5

    .line 435
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 437
    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :goto_0
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 439
    :goto_1
    iget v5, v2, Lcom/android/server/AppOpsService$Op;->op:I

    iget v6, v2, Lcom/android/server/AppOpsService$Op;->uid:I

    iget-object v7, v2, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v5

    if-ne p4, v5, :cond_2

    .line 442
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/AppOpsService;->pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 444
    :cond_2
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteNowLocked()V

    .line 447
    .end local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 448
    if-eqz v3, :cond_4

    .line 449
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 451
    :try_start_3
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Callback;

    iget-object v5, v5, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v5, p1, p3}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 449
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 447
    .end local v1    # "i":I
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_0
    move-exception v5

    :goto_4
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 456
    .restart local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_4
    return-void

    .line 452
    .restart local v1    # "i":I
    :catch_0
    move-exception v5

    goto :goto_3

    .line 447
    .end local v1    # "i":I
    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_4

    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_5
    move-object v3, v4

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_0

    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_6
    move-object v3, v4

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_1
.end method

.method public setPrivacyGuardSettingForPackage(ILjava/lang/String;Z)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "state"    # Z

    .prologue
    .line 1211
    sget-object v0, Lcom/android/server/AppOpsService;->PRIVACY_GUARD_OP_STATES:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 1212
    .local v3, "op":I
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v4

    .line 1213
    .local v4, "switchOp":I
    if-eqz p3, :cond_0

    const/4 v5, 0x3

    :goto_1
    invoke-virtual {p0, v4, p1, p2, v5}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 1211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1213
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 1216
    .end local v3    # "op":I
    .end local v4    # "switchOp":I
    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 311
    const-string v1, "AppOps"

    const-string v2, "Writing app ops before shutdown..."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "doWrite":Z
    monitor-enter p0

    .line 314
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-eqz v1, :cond_0

    .line 315
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 316
    const/4 v0, 0x1

    .line 318
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->writeState()V

    .line 322
    :cond_1
    return-void

    .line 318
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    .line 669
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 670
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    move-object v0, p1

    .line 671
    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 672
    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    .line 673
    const/4 v8, 0x1

    :try_start_0
    invoke-direct {p0, p3, p4, v8}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v3

    .line 674
    .local v3, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v3, :cond_0

    .line 677
    monitor-exit p0

    .line 711
    :goto_0
    return v7

    .line 679
    :cond_0
    const/4 v8, 0x1

    invoke-direct {p0, v3, p2, v8}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 680
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v4

    .line 681
    .local v4, "switchCode":I
    if-eq v4, p2, :cond_2

    const/4 v8, 0x1

    invoke-direct {p0, v3, v4, v8}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v5

    .line 682
    .local v5, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_1
    iget v8, v5, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v8, v9, :cond_1

    iget v8, v5, Lcom/android/server/AppOpsService$Op;->mode:I

    if-ne v8, v7, :cond_3

    .line 686
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 687
    iget v7, v2, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    .line 688
    iget v7, v5, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    goto :goto_0

    .line 710
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v3    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v4    # "switchCode":I
    .end local v5    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v2    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v3    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v4    # "switchCode":I
    :cond_2
    move-object v5, v2

    .line 681
    goto :goto_1

    .line 689
    .restart local v5    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_3
    :try_start_1
    iget v7, v5, Lcom/android/server/AppOpsService$Op;->mode:I

    if-nez v7, :cond_6

    .line 692
    iget v7, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-nez v7, :cond_4

    .line 693
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v2, Lcom/android/server/AppOpsService$Op;->time:J

    .line 694
    iget v7, v2, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    .line 695
    const-wide/16 v7, 0x0

    iput-wide v7, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 696
    const/4 v7, -0x1

    iput v7, v2, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 698
    :cond_4
    iget v7, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 699
    iget-object v7, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v7, :cond_5

    .line 700
    iget-object v7, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    :cond_5
    const/4 v7, 0x0

    monitor-exit p0

    goto :goto_0

    .line 704
    :cond_6
    iget v7, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    .line 705
    iget-object v1, v0, Lcom/android/server/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    .line 706
    .local v1, "clientToken":Landroid/os/IBinder;
    iget-object v7, v2, Lcom/android/server/AppOpsService$Op;->mClientTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    invoke-direct {p0, p2, p3, p4, v5}, Lcom/android/server/AppOpsService;->askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/PermissionDialogResult$Result;

    move-result-object v6

    .line 710
    .local v6, "userDialogResult":Lcom/android/server/PermissionDialogResult$Result;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 711
    invoke-virtual {v6}, Lcom/android/server/PermissionDialogResult$Result;->get()I

    move-result v7

    goto :goto_0
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 4
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .prologue
    .line 537
    monitor-enter p0

    .line 538
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 539
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 540
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    if-nez v0, :cond_0

    .line 541
    new-instance v0, Lcom/android/server/AppOpsService$Callback;

    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-direct {v0, p0, p3}, Lcom/android/server/AppOpsService$Callback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 542
    .restart local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    :cond_0
    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    .line 545
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 546
    .local v1, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_1

    .line 547
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 548
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 550
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_2
    if-eqz p2, :cond_4

    .line 553
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 554
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_3

    .line 555
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_4
    monitor-exit p0

    .line 561
    return-void

    .line 560
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .prologue
    .line 565
    monitor-enter p0

    .line 566
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 567
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    if-eqz v0, :cond_3

    .line 568
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Callback;->unlinkToDeath()V

    .line 569
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 570
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 571
    .local v1, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 572
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 573
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 569
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 576
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 577
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 578
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 579
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 580
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 576
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 584
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v2    # "i":I
    :cond_3
    monitor-exit p0

    .line 585
    return-void

    .line 584
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public systemReady()V
    .locals 10

    .prologue
    .line 254
    monitor-enter p0

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "changed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 257
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 258
    .local v6, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 259
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 260
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    .local v5, "ops":Lcom/android/server/AppOpsService$Ops;
    const/4 v1, -0x1

    .line 263
    .local v1, "curUid":I
    :try_start_1
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget v9, v5, Lcom/android/server/AppOpsService$Ops;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 270
    :cond_1
    :goto_2
    :try_start_2
    iget v7, v5, Lcom/android/server/AppOpsService$Ops;->uid:I

    if-eq v1, v7, :cond_0

    .line 271
    const-string v7, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pruning old package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/android/server/AppOpsService$Ops;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": new uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 274
    const/4 v0, 0x1

    goto :goto_1

    .line 265
    :catch_0
    move-exception v2

    .line 266
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "android"

    iget-object v8, v5, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 267
    const/16 v1, 0x3e8

    goto :goto_2

    .line 277
    .end local v1    # "curUid":I
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_2
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v7

    if-gtz v7, :cond_3

    .line 278
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 256
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 281
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    .end local v6    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_4
    if-eqz v0, :cond_5

    .line 282
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 284
    :cond_5
    monitor-exit p0

    .line 285
    return-void

    .line 284
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7
.end method

.method public uidRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 302
    monitor-enter p0

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 305
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 307
    :cond_0
    monitor-exit p0

    .line 308
    return-void

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method writeState()V
    .locals 24

    .prologue
    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1019
    const/16 v19, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1023
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v16

    .line 1030
    .local v16, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v14, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v14}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1031
    .local v14, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v19, "utf-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1032
    const/16 v19, 0x0

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1033
    const/16 v19, 0x0

    const-string v21, "app-ops"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1035
    if-eqz v4, :cond_a

    .line 1036
    const/4 v11, 0x0

    .line 1037
    .local v11, "lastPkg":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_9

    .line 1038
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/AppOpsManager$PackageOps;

    .line 1039
    .local v15, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v15}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 1040
    if-eqz v11, :cond_0

    .line 1041
    const/16 v19, 0x0

    const-string v21, "pkg"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1043
    :cond_0
    invoke-virtual {v15}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 1044
    const/16 v19, 0x0

    const-string v21, "pkg"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1045
    const/16 v19, 0x0

    const-string v21, "n"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1047
    :cond_1
    const/16 v19, 0x0

    const-string v21, "uid"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1048
    const/16 v19, 0x0

    const-string v21, "n"

    invoke-virtual {v15}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1049
    invoke-virtual {v15}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v13

    .line 1050
    .local v13, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_8

    .line 1051
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$OpEntry;

    .line 1052
    .local v12, "op":Landroid/app/AppOpsManager$OpEntry;
    const/16 v19, 0x0

    const-string v21, "op"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1053
    const/16 v19, 0x0

    const-string v21, "n"

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1054
    const/16 v19, 0x0

    const-string v21, "ns"

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v22

    invoke-static/range {v22 .. v22}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1055
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v19

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v21

    invoke-virtual {v15}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v22

    invoke-virtual {v15}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 1057
    const/16 v19, 0x0

    const-string v21, "m"

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1059
    :cond_2
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v17

    .line 1060
    .local v17, "time":J
    const-wide/16 v21, 0x0

    cmp-long v19, v17, v21

    if-eqz v19, :cond_3

    .line 1061
    const/16 v19, 0x0

    const-string v21, "t"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1063
    :cond_3
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v17

    .line 1064
    const-wide/16 v21, 0x0

    cmp-long v19, v17, v21

    if-eqz v19, :cond_4

    .line 1065
    const/16 v19, 0x0

    const-string v21, "r"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1067
    :cond_4
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v6

    .line 1068
    .local v6, "dur":I
    if-eqz v6, :cond_5

    .line 1069
    const/16 v19, 0x0

    const-string v21, "d"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1071
    :cond_5
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getAllowedCount()I

    move-result v5

    .line 1072
    .local v5, "allowed":I
    if-eqz v5, :cond_6

    .line 1073
    const/16 v19, 0x0

    const-string v21, "ac"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1075
    :cond_6
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getIgnoredCount()I

    move-result v9

    .line 1076
    .local v9, "ignored":I
    if-eqz v9, :cond_7

    .line 1077
    const/16 v19, 0x0

    const-string v21, "ic"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v14, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1079
    :cond_7
    const/16 v19, 0x0

    const-string v21, "op"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1050
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 1024
    .end local v5    # "allowed":I
    .end local v6    # "dur":I
    .end local v8    # "i":I
    .end local v9    # "ignored":I
    .end local v10    # "j":I
    .end local v11    # "lastPkg":Ljava/lang/String;
    .end local v12    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v13    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v14    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v15    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v16    # "stream":Ljava/io/FileOutputStream;
    .end local v17    # "time":J
    :catch_0
    move-exception v7

    .line 1025
    .local v7, "e":Ljava/io/IOException;
    :try_start_3
    const-string v19, "AppOps"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Failed to write state: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1096
    .end local v7    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 1081
    .restart local v8    # "i":I
    .restart local v10    # "j":I
    .restart local v11    # "lastPkg":Ljava/lang/String;
    .restart local v13    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v14    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v15    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v16    # "stream":Ljava/io/FileOutputStream;
    :cond_8
    const/16 v19, 0x0

    :try_start_4
    const-string v21, "uid"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1037
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1083
    .end local v10    # "j":I
    .end local v13    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v15    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_9
    if-eqz v11, :cond_a

    .line 1084
    const/16 v19, 0x0

    const-string v21, "pkg"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1088
    .end local v8    # "i":I
    .end local v11    # "lastPkg":Ljava/lang/String;
    :cond_a
    const/16 v19, 0x0

    const-string v21, "app-ops"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1089
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1095
    .end local v14    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_3
    :try_start_5
    monitor-exit v20

    goto :goto_2

    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v16    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v19

    .line 1091
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v16    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v7

    .line 1092
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_6
    const-string v19, "AppOps"

    const-string v21, "Failed to write state, restoring backup."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method
