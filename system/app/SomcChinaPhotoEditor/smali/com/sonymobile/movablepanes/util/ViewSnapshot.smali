.class public Lcom/sonymobile/movablepanes/util/ViewSnapshot;
.super Ljava/lang/Object;
.source "ViewSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/movablepanes/util/ViewSnapshot$ViewRenderer;
    }
.end annotation


# static fields
.field private static mSpecialRenderers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/sonymobile/movablepanes/util/ViewSnapshot$ViewRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/movablepanes/util/ViewSnapshot;->mSpecialRenderers:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 54
    sget-object v2, Lcom/sonymobile/movablepanes/util/ViewSnapshot;->mSpecialRenderers:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/movablepanes/util/ViewSnapshot$ViewRenderer;

    .line 55
    .local v1, "renderer":Lcom/sonymobile/movablepanes/util/ViewSnapshot$ViewRenderer;
    if-eqz v1, :cond_0

    .line 56
    invoke-interface {v1, p0}, Lcom/sonymobile/movablepanes/util/ViewSnapshot$ViewRenderer;->getSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 59
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 60
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 62
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static registerRenderer(Ljava/lang/Class;Lcom/sonymobile/movablepanes/util/ViewSnapshot$ViewRenderer;)V
    .locals 1
    .param p1, "viewRenderer"    # Lcom/sonymobile/movablepanes/util/ViewSnapshot$ViewRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/sonymobile/movablepanes/util/ViewSnapshot$ViewRenderer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/sonymobile/movablepanes/util/ViewSnapshot;->mSpecialRenderers:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public static unregisterRenderer(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/sonymobile/movablepanes/util/ViewSnapshot;->mSpecialRenderers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method
