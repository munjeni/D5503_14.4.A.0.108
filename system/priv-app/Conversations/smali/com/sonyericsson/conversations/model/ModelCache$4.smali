.class Lcom/sonyericsson/conversations/model/ModelCache$4;
.super Landroid/util/LruCache;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/model/ModelCache;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Landroid/net/Uri;",
        "Lcom/android/mms/model/SlideshowModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/model/ModelCache;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/model/ModelCache;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 169
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/ModelCache$4;->this$0:Lcom/sonyericsson/conversations/model/ModelCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)I
    .locals 1
    .param p1, "key"    # Landroid/net/Uri;
    .param p2, "value"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 172
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    return v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 169
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/mms/model/SlideshowModel;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/model/ModelCache$4;->sizeOf(Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)I

    move-result v0

    return v0
.end method
