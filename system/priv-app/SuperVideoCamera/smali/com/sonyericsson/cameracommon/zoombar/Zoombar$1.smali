.class Lcom/sonyericsson/cameracommon/zoombar/Zoombar$1;
.super Ljava/lang/Object;
.source "Zoombar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/zoombar/Zoombar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/zoombar/Zoombar;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/zoombar/Zoombar;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$1;->this$0:Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar$1;->this$0:Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    return-void
.end method
