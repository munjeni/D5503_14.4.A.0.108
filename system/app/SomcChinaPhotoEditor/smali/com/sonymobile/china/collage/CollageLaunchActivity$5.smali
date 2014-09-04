.class Lcom/sonymobile/china/collage/CollageLaunchActivity$5;
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
    .line 955
    iput-object p1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$5;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 960
    iget-object v11, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$5;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    const v12, 0x7f0c0006

    invoke-virtual {v11, v12}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 961
    .local v6, "list":Landroid/widget/LinearLayout;
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 962
    .local v1, "count":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    .line 963
    .local v9, "selectedViewId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 964
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 965
    .local v0, "btn":Landroid/widget/ImageButton;
    if-ne v9, v2, :cond_0

    .line 966
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iget-object v12, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$5;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectColor:I
    invoke-static {v12}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$800(Lcom/sonymobile/china/collage/CollageLaunchActivity;)I

    move-result v12

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 963
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 968
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1

    .line 973
    .end local v0    # "btn":Landroid/widget/ImageButton;
    :cond_1
    iget-object v11, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$5;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # invokes: Lcom/sonymobile/china/collage/CollageLaunchActivity;->getRecentList()Ljava/util/SortedSet;
    invoke-static {v11}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$900(Lcom/sonymobile/china/collage/CollageLaunchActivity;)Ljava/util/SortedSet;

    move-result-object v7

    .line 974
    .local v7, "recents":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;>;"
    const/4 v8, 0x0

    .line 975
    .local v8, "selectedElement":Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;
    const/4 v3, 0x0

    .line 976
    .local v3, "index":I
    invoke-interface {v7}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 977
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 978
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "selectedElement":Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;
    check-cast v8, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;

    .line 979
    .restart local v8    # "selectedElement":Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;
    if-ne v3, v9, :cond_4

    .line 984
    :cond_2
    if-eqz v8, :cond_3

    .line 985
    iget-boolean v4, v8, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->isGrid:Z

    .line 986
    .local v4, "isGrid":Z
    iget v10, v8, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->templateId:I

    .line 987
    .local v10, "templateId":I
    iget-object v11, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$5;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedTemplate:I
    invoke-static {v11}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$600(Lcom/sonymobile/china/collage/CollageLaunchActivity;)I

    move-result v11

    if-ne v10, v11, :cond_5

    .line 997
    .end local v4    # "isGrid":Z
    .end local v10    # "templateId":I
    :cond_3
    :goto_3
    return-void

    .line 982
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 990
    .restart local v4    # "isGrid":Z
    .restart local v10    # "templateId":I
    :cond_5
    iget-object v11, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$5;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # setter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedTemplate:I
    invoke-static {v11, v10}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$602(Lcom/sonymobile/china/collage/CollageLaunchActivity;I)I

    .line 991
    if-eqz v4, :cond_6

    .line 992
    iget-object v11, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$5;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    const/4 v12, 0x1

    # invokes: Lcom/sonymobile/china/collage/CollageLaunchActivity;->setUpFragment(I)V
    invoke-static {v11, v12}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$1000(Lcom/sonymobile/china/collage/CollageLaunchActivity;I)V

    goto :goto_3

    .line 994
    :cond_6
    iget-object v11, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$5;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    const/4 v12, 0x2

    # invokes: Lcom/sonymobile/china/collage/CollageLaunchActivity;->setUpFragment(I)V
    invoke-static {v11, v12}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$1000(Lcom/sonymobile/china/collage/CollageLaunchActivity;I)V

    goto :goto_3
.end method
