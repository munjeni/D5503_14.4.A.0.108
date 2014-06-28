.class public Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
.super Ljava/lang/Object;
.source "WhitelistGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/xssm/WhitelistGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


# instance fields
.field children:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$NodeListener;

.field parents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;",
            ">;"
        }
    .end annotation
.end field

.field process:Lcom/sony/stamina/ProcessInfo;


# direct methods
.method public constructor <init>(Lcom/sony/stamina/ProcessInfo;Lcom/sonymobile/superstamina/xssm/WhitelistGraph$NodeListener;)V
    .locals 1
    .param p1, "process"    # Lcom/sony/stamina/ProcessInfo;
    .param p2, "listener"    # Lcom/sonymobile/superstamina/xssm/WhitelistGraph$NodeListener;

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->parents:Ljava/util/HashSet;

    .line 242
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->children:Ljava/util/HashSet;

    .line 247
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->process:Lcom/sony/stamina/ProcessInfo;

    .line 248
    iput-object p2, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->listener:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$NodeListener;

    .line 249
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;ILjava/util/HashMap;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;",
            "Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p3, "visitedNodes":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;>;"
    invoke-virtual {p3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 391
    :cond_0
    return-void

    .line 383
    :cond_1
    invoke-virtual {p3, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 385
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->process:Lcom/sony/stamina/ProcessInfo;

    iget v4, v4, Lcom/sony/stamina/ProcessInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->process:Lcom/sony/stamina/ProcessInfo;

    iget-object v4, v4, Lcom/sony/stamina/ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->children:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    .line 389
    .local v0, "child":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    add-int/lit8 v3, p2, 0x1

    invoke-direct {v0, p1, v3, p3}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->dumpInternal(Ljava/io/PrintWriter;ILjava/util/HashMap;)V

    goto :goto_1
.end method

.method private findInternal(ILjava/lang/String;ZLjava/util/HashSet;)Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    .locals 6
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "checkProcessName"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;",
            ">;)",
            "Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;"
        }
    .end annotation

    .prologue
    .local p4, "visitedNodes":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;>;"
    const/4 v4, 0x0

    .line 276
    iget-object v5, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->process:Lcom/sony/stamina/ProcessInfo;

    iget v5, v5, Lcom/sony/stamina/ProcessInfo;->uid:I

    if-ne p1, v5, :cond_1

    .line 277
    if-eqz p3, :cond_0

    iget-object v5, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->process:Lcom/sony/stamina/ProcessInfo;

    iget-object v5, v5, Lcom/sony/stamina/ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 280
    .local v3, "sameProcess":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 296
    .end local v3    # "sameProcess":Z
    .end local p0    # "this":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    :goto_1
    return-object p0

    .line 277
    .restart local p0    # "this":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 284
    :cond_1
    invoke-virtual {p4, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object p0, v4

    .line 286
    goto :goto_1

    .line 289
    :cond_2
    invoke-virtual {p4, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v5, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->children:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    .line 291
    .local v1, "node":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->findInternal(ILjava/lang/String;ZLjava/util/HashSet;)Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    move-result-object v2

    .line 292
    .local v2, "result":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    if-eqz v2, :cond_3

    move-object p0, v2

    .line 293
    goto :goto_1

    .end local v1    # "node":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    .end local v2    # "result":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    :cond_4
    move-object p0, v4

    .line 296
    goto :goto_1
.end method

.method private isPartOfGraph(Ljava/util/HashSet;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "visitedNodes":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 300
    # getter for: Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->ROOT:Lcom/sony/stamina/ProcessInfo;
    invoke-static {}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph;->access$600()Lcom/sony/stamina/ProcessInfo;

    move-result-object v5

    iget v5, v5, Lcom/sony/stamina/ProcessInfo;->uid:I

    iget-object v6, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->process:Lcom/sony/stamina/ProcessInfo;

    iget v6, v6, Lcom/sony/stamina/ProcessInfo;->uid:I

    if-ne v5, v6, :cond_0

    .line 315
    :goto_0
    return v3

    .line 303
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    .line 305
    goto :goto_0

    .line 308
    :cond_1
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v5, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->parents:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    .line 310
    .local v1, "node":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    invoke-direct {v1, p1}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->isPartOfGraph(Ljava/util/HashSet;)Z

    move-result v2

    .line 311
    .local v2, "result":Z
    if-eqz v2, :cond_2

    goto :goto_0

    .end local v1    # "node":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    .end local v2    # "result":Z
    :cond_3
    move v3, v4

    .line 315
    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;)V
    .locals 1
    .param p1, "child"    # Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->children:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->children:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p1, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->parents:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->listener:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$NodeListener;

    invoke-interface {v0, p1}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$NodeListener;->onNodeAdded(Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;)V

    .line 268
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 372
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->children:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    .line 373
    .local v0, "child":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, p1, v2, v3}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->dumpInternal(Ljava/io/PrintWriter;ILjava/util/HashMap;)V

    goto :goto_0

    .line 375
    .end local v0    # "child":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    :cond_0
    return-void
.end method

.method public find(Lcom/sony/stamina/ProcessInfo;)Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    .locals 4
    .param p1, "process"    # Lcom/sony/stamina/ProcessInfo;

    .prologue
    .line 271
    iget v0, p1, Lcom/sony/stamina/ProcessInfo;->uid:I

    iget-object v1, p1, Lcom/sony/stamina/ProcessInfo;->processName:Ljava/lang/String;

    const/4 v2, 0x1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->findInternal(ILjava/lang/String;ZLjava/util/HashSet;)Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    move-result-object v0

    return-object v0
.end method

.method public findUid(I)Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 259
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->findInternal(ILjava/lang/String;ZLjava/util/HashSet;)Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    move-result-object v0

    return-object v0
.end method

.method public populateDependencyList(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, "uidList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .local p2, "visitedNodes":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;>;"
    invoke-virtual {p2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    :cond_0
    return-void

    .line 360
    :cond_1
    invoke-virtual {p2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->process:Lcom/sony/stamina/ProcessInfo;

    iget v2, v2, Lcom/sony/stamina/ProcessInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 363
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->process:Lcom/sony/stamina/ProcessInfo;

    iget v2, v2, Lcom/sony/stamina/ProcessInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->children:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    .line 367
    .local v0, "child":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->populateDependencyList(Ljava/util/HashSet;Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method public remove()V
    .locals 6

    .prologue
    .line 323
    iget-object v4, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->parents:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    .line 324
    .local v3, "parent":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    iget-object v4, v3, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->children:Ljava/util/HashSet;

    invoke-virtual {v4, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    .end local v3    # "parent":Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->children:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->children:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v5, v5, [Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    invoke-virtual {v4, v5}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    .line 328
    .local v0, "arr":[Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 329
    aget-object v4, v0, v1

    invoke-virtual {p0, v4}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->remove(Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;)V

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 331
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->listener:Lcom/sonymobile/superstamina/xssm/WhitelistGraph$NodeListener;

    invoke-interface {v4, p0}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$NodeListener;->onNodeRemoved(Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;)V

    .line 332
    return-void
.end method

.method public remove(Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;)V
    .locals 1
    .param p1, "child"    # Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->children:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 343
    iget-object v0, p1, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->parents:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 344
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p1, v0}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->isPartOfGraph(Ljava/util/HashSet;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    invoke-virtual {p1}, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->remove()V

    .line 348
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->process:Lcom/sony/stamina/ProcessInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " children = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->children:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   parents = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/WhitelistGraph$Node;->parents:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
