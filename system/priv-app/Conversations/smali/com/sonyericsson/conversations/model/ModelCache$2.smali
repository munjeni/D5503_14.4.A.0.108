.class Lcom/sonyericsson/conversations/model/ModelCache$2;
.super Landroid/database/ContentObserver;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/model/ModelCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/model/ModelCache;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/model/ModelCache;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/ModelCache$2;->this$0:Lcom/sonyericsson/conversations/model/ModelCache;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache$2;->this$0:Lcom/sonyericsson/conversations/model/ModelCache;

    # getter for: Lcom/sonyericsson/conversations/model/ModelCache;->mPersonPhotoMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/sonyericsson/conversations/model/ModelCache;->access$200(Lcom/sonyericsson/conversations/model/ModelCache;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 101
    return-void
.end method
