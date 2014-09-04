.class public Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;
.super Ljava/lang/Object;
.source "ChangeNotifier.java"


# instance fields
.field private mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMediaSet:Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;


# direct methods
.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;Landroid/net/Uri;Lcom/sonymobile/china/photoeditor/crop/GalleryApp;)V
    .locals 2
    .param p1, "set"    # Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "application"    # Lcom/sonymobile/china/photoeditor/crop/GalleryApp;

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;->mMediaSet:Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    .line 34
    invoke-interface {p3}, Lcom/sonymobile/china/photoeditor/crop/GalleryApp;->getDataManager()Lcom/sonymobile/china/photoeditor/crop/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->registerChangeNotifier(Landroid/net/Uri;Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;)V

    .line 35
    return-void
.end method


# virtual methods
.method public clearDirty()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 48
    return-void
.end method

.method public fakeChange()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;->onChange(Z)V

    .line 44
    return-void
.end method

.method public isDirty()Z
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method protected onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/data/ChangeNotifier;->mMediaSet:Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;->notifyContentChanged()V

    .line 54
    :cond_0
    return-void
.end method
