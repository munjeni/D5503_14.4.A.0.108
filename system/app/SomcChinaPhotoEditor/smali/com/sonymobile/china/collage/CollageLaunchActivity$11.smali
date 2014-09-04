.class Lcom/sonymobile/china/collage/CollageLaunchActivity$11;
.super Ljava/lang/Object;
.source "CollageLaunchActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/collage/CollageLaunchActivity;->showCollagePicturesNumPopupMenu(Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

.field final synthetic val$anchor:Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;)V
    .locals 0

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$11;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    iput-object p2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$11;->val$anchor:Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$11;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    iget-object v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$11;->val$anchor:Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    # invokes: Lcom/sonymobile/china/collage/CollageLaunchActivity;->setTextForPicBtn(Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;I)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$1600(Lcom/sonymobile/china/collage/CollageLaunchActivity;Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;I)V

    .line 1185
    const/4 v0, 0x1

    return v0
.end method
