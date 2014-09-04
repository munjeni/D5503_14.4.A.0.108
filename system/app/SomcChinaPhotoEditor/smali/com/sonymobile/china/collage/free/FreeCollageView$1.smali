.class Lcom/sonymobile/china/collage/free/FreeCollageView$1;
.super Ljava/lang/Object;
.source "FreeCollageView.java"

# interfaces
.implements Lcom/sonymobile/china/collage/free/model/FreeCollage$FreeCollageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/collage/free/FreeCollageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/collage/free/FreeCollageView;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/collage/free/FreeCollageView;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sonymobile/china/collage/free/FreeCollageView$1;->this$0:Lcom/sonymobile/china/collage/free/FreeCollageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFreeCollageUpdated()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonymobile/china/collage/free/FreeCollageView$1;->this$0:Lcom/sonymobile/china/collage/free/FreeCollageView;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/free/FreeCollageView;->invalidate()V

    .line 88
    return-void
.end method
