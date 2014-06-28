.class Lcom/sonyericsson/conversations/model/ModelCache$1;
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
    .line 69
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/ModelCache$1;->this$0:Lcom/sonyericsson/conversations/model/ModelCache;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache$1;->this$0:Lcom/sonyericsson/conversations/model/ModelCache;

    # getter for: Lcom/sonyericsson/conversations/model/ModelCache;->mMessageMap:Lcom/sonyericsson/conversations/util/SoftHashMap;
    invoke-static {v0}, Lcom/sonyericsson/conversations/model/ModelCache;->access$000(Lcom/sonyericsson/conversations/model/ModelCache;)Lcom/sonyericsson/conversations/util/SoftHashMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->clear()V

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache$1;->this$0:Lcom/sonyericsson/conversations/model/ModelCache;

    # getter for: Lcom/sonyericsson/conversations/model/ModelCache;->mVCardContactNameMap:Lcom/sonyericsson/conversations/util/SoftHashMap;
    invoke-static {v0}, Lcom/sonyericsson/conversations/model/ModelCache;->access$100(Lcom/sonyericsson/conversations/model/ModelCache;)Lcom/sonyericsson/conversations/util/SoftHashMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/SoftHashMapWithExtra;->clear()V

    .line 78
    return-void
.end method
