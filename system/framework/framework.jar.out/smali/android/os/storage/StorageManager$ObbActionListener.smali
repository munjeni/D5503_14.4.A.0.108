.class Landroid/os/storage/StorageManager$ObbActionListener;
.super Landroid/os/storage/IObbActionListener$Stub;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObbActionListener"
.end annotation


# instance fields
.field private mListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/storage/StorageManager$ObbListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/os/storage/StorageManager;


# direct methods
.method private constructor <init>(Landroid/os/storage/StorageManager;)V
    .locals 1

    .prologue
    .line 117
    iput-object p1, p0, Landroid/os/storage/StorageManager$ObbActionListener;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {p0}, Landroid/os/storage/IObbActionListener$Stub;-><init>()V

    .line 118
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/storage/StorageManager$ObbActionListener;->mListeners:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/storage/StorageManager;
    .param p2, "x1"    # Landroid/os/storage/StorageManager$1;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Landroid/os/storage/StorageManager$ObbActionListener;-><init>(Landroid/os/storage/StorageManager;)V

    return-void
.end method


# virtual methods
.method public addListener(Landroid/os/storage/OnObbStateChangeListener;)I
    .locals 4
    .param p1, "listener"    # Landroid/os/storage/OnObbStateChangeListener;

    .prologue
    .line 137
    new-instance v0, Landroid/os/storage/StorageManager$ObbListenerDelegate;

    iget-object v1, p0, Landroid/os/storage/StorageManager$ObbActionListener;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {v0, v1, p1}, Landroid/os/storage/StorageManager$ObbListenerDelegate;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/OnObbStateChangeListener;)V

    .line 139
    .local v0, "delegate":Landroid/os/storage/StorageManager$ObbListenerDelegate;
    iget-object v2, p0, Landroid/os/storage/StorageManager$ObbActionListener;->mListeners:Landroid/util/SparseArray;

    monitor-enter v2

    .line 140
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager$ObbActionListener;->mListeners:Landroid/util/SparseArray;

    # getter for: Landroid/os/storage/StorageManager$ObbListenerDelegate;->nonce:I
    invoke-static {v0}, Landroid/os/storage/StorageManager$ObbListenerDelegate;->access$200(Landroid/os/storage/StorageManager$ObbListenerDelegate;)I

    move-result v3

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    # getter for: Landroid/os/storage/StorageManager$ObbListenerDelegate;->nonce:I
    invoke-static {v0}, Landroid/os/storage/StorageManager$ObbListenerDelegate;->access$200(Landroid/os/storage/StorageManager$ObbListenerDelegate;)I

    move-result v1

    return v1

    .line 141
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onObbResult(Ljava/lang/String;II)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "nonce"    # I
    .param p3, "status"    # I

    .prologue
    .line 124
    iget-object v2, p0, Landroid/os/storage/StorageManager$ObbActionListener;->mListeners:Landroid/util/SparseArray;

    monitor-enter v2

    .line 125
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager$ObbActionListener;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager$ObbListenerDelegate;

    .line 126
    .local v0, "delegate":Landroid/os/storage/StorageManager$ObbListenerDelegate;
    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Landroid/os/storage/StorageManager$ObbActionListener;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 129
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0, p1, p3}, Landroid/os/storage/StorageManager$ObbListenerDelegate;->sendObbStateChanged(Ljava/lang/String;I)V

    .line 134
    :cond_1
    return-void

    .line 129
    .end local v0    # "delegate":Landroid/os/storage/StorageManager$ObbListenerDelegate;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
