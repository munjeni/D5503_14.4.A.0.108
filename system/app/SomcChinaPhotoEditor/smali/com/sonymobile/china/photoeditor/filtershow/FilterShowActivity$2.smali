.class Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$2;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$2;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 510
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$2;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    const/4 v1, 0x1

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mSaveForCollage:Z
    invoke-static {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$1302(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;Z)Z

    .line 511
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$2;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->saveImage(Z)V

    .line 512
    return-void
.end method
