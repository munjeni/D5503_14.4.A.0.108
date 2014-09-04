.class Lcom/sonymobile/china/collage/CollageLaunchActivity$8;
.super Ljava/lang/Object;
.source "CollageLaunchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/collage/CollageLaunchActivity;
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
    .line 1025
    iput-object p1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$8;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x1

    .line 1029
    iget-object v8, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$8;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    new-instance v9, Landroid/util/Pair;

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/graphics/Bitmap;

    sget-object v11, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-direct {v9, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    # setter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mBgBitmaps:Landroid/util/Pair;
    invoke-static {v8, v9}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$1202(Lcom/sonymobile/china/collage/CollageLaunchActivity;Landroid/util/Pair;)Landroid/util/Pair;

    .line 1030
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 1032
    .local v7, "selectedId":I
    iget-object v8, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$8;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    const v9, 0x7f0c000c

    invoke-virtual {v8, v9}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 1033
    .local v5, "list":Landroid/widget/LinearLayout;
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 1034
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 1035
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 1036
    .local v1, "btn":Landroid/widget/ImageButton;
    if-ne v7, v4, :cond_0

    .line 1037
    invoke-virtual {v1, v12}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1038
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget-object v9, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$8;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectColor:I
    invoke-static {v9}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$800(Lcom/sonymobile/china/collage/CollageLaunchActivity;)I

    move-result v9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1034
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1040
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1041
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1

    .line 1046
    .end local v1    # "btn":Landroid/widget/ImageButton;
    :cond_1
    invoke-static {}, Lcom/sonymobile/china/collage/CollageConfigurer;->getBackgrounds()Ljava/util/ArrayList;

    move-result-object v0

    .line 1047
    .local v0, "bgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1049
    .local v6, "selectedBg":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$8;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedBg:Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$700(Lcom/sonymobile/china/collage/CollageLaunchActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1063
    :cond_2
    :goto_2
    return-void

    .line 1052
    :cond_3
    iget-object v8, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$8;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # setter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mChangeBg:Z
    invoke-static {v8, v12}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$1302(Lcom/sonymobile/china/collage/CollageLaunchActivity;Z)Z

    .line 1053
    iget-object v8, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$8;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # setter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedBg:Ljava/lang/String;
    invoke-static {v8, v6}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$702(Lcom/sonymobile/china/collage/CollageLaunchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1054
    iget-object v8, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$8;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    const v9, 0x7f0c0011

    # invokes: Lcom/sonymobile/china/collage/CollageLaunchActivity;->getFragmentById(I)Landroid/app/Fragment;
    invoke-static {v8, v9}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$1400(Lcom/sonymobile/china/collage/CollageLaunchActivity;I)Landroid/app/Fragment;

    move-result-object v3

    .line 1055
    .local v3, "frag":Landroid/app/Fragment;
    if-eqz v3, :cond_2

    .line 1056
    instance-of v8, v3, Lcom/sonymobile/china/collage/free/FreeCollageFragment;

    if-eqz v8, :cond_4

    .line 1057
    check-cast v3, Lcom/sonymobile/china/collage/free/FreeCollageFragment;

    .end local v3    # "frag":Landroid/app/Fragment;
    iget-object v8, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$8;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedBg:Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$700(Lcom/sonymobile/china/collage/CollageLaunchActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->updateBackground(Ljava/lang/String;)V

    goto :goto_2

    .line 1058
    .restart local v3    # "frag":Landroid/app/Fragment;
    :cond_4
    instance-of v8, v3, Lcom/sonymobile/china/collage/GridCollageFragment;

    if-eqz v8, :cond_2

    .line 1059
    check-cast v3, Lcom/sonymobile/china/collage/GridCollageFragment;

    .end local v3    # "frag":Landroid/app/Fragment;
    iget-object v8, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$8;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedBg:Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$700(Lcom/sonymobile/china/collage/CollageLaunchActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/sonymobile/china/collage/GridCollageFragment;->updateBackground(Ljava/lang/String;)V

    goto :goto_2
.end method
