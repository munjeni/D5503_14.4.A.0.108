.class Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;
.super Ljava/lang/Object;
.source "ContentPallet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$1;

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->access$100(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->access$100(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    move-result-object v1

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->viewContent(Landroid/app/Activity;)V

    .line 217
    :cond_0
    return-void
.end method
