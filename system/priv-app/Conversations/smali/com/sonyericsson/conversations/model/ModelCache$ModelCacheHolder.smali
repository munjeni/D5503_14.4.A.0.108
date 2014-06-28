.class Lcom/sonyericsson/conversations/model/ModelCache$ModelCacheHolder;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/model/ModelCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModelCacheHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sonyericsson/conversations/model/ModelCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/sonyericsson/conversations/model/ModelCache;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/model/ModelCache;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/model/ModelCache$ModelCacheHolder;->INSTANCE:Lcom/sonyericsson/conversations/model/ModelCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
