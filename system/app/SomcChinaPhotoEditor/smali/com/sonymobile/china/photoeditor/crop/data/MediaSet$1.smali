.class final Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$1;
.super Ljava/lang/Object;
.source "MediaSet.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/crop/util/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/data/MediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonymobile/china/photoeditor/crop/util/Future",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 244
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public get()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaSet$1;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method public waitDone()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method
