.class Lcom/sonymobile/china/collage/CollageLaunchActivity$9;
.super Ljava/lang/Object;
.source "CollageLaunchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateImageNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;)V
    .locals 0

    .prologue
    .line 1121
    iput-object p1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$9;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1125
    instance-of v0, p1, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$9;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    check-cast p1, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;

    .end local p1    # "v":Landroid/view/View;
    # invokes: Lcom/sonymobile/china/collage/CollageLaunchActivity;->showCollagePicturesNumPopupMenu(Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;)V
    invoke-static {v0, p1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$1500(Lcom/sonymobile/china/collage/CollageLaunchActivity;Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;)V

    .line 1128
    :cond_0
    return-void
.end method
