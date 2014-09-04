.class Lcom/sonymobile/china/collage/CollageLaunchActivity$10;
.super Ljava/lang/Object;
.source "CollageLaunchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/collage/CollageLaunchActivity;->addBgSelectListener()V
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
    .line 1140
    iput-object p1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$10;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$10;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/china/collage/utils/ImageUtils;->pickImage(Ljava/lang/Object;I)V

    .line 1145
    return-void
.end method
