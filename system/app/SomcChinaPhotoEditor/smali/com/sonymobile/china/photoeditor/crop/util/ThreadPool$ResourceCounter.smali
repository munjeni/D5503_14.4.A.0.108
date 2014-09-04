.class Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceCounter"
.end annotation


# instance fields
.field public value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$ResourceCounter;->value:I

    .line 94
    return-void
.end method
