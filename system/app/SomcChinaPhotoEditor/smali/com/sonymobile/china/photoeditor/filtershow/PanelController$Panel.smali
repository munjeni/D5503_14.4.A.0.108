.class Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;
.super Ljava/lang/Object;
.source "PanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/filtershow/PanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Panel"
.end annotation


# instance fields
.field private final mContainer:Landroid/view/View;

.field private mPosition:I

.field private final mSubviews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "container"    # Landroid/view/View;
    .param p4, "position"    # I

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->mPosition:I

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->mSubviews:Ljava/util/Vector;

    .line 101
    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->mView:Landroid/view/View;

    .line 102
    iput-object p3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    .line 103
    iput p4, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->mPosition:I

    .line 104
    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->mSubviews:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public getContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->mPosition:I

    return v0
.end method

.method public select(II)Landroid/view/ViewPropertyAnimator;
    .locals 6
    .param p1, "oldPos"    # I
    .param p2, "move"    # I

    .prologue
    const/4 v5, 0x0

    .line 159
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->mView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 160
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setX(F)V

    .line 162
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setY(F)V

    .line 163
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 164
    .local v0, "anim":Landroid/view/ViewPropertyAnimator;
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mRowPanel:Landroid/view/View;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$000(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 165
    .local v2, "w":I
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mRowPanel:Landroid/view/View;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$000(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 166
    .local v1, "h":I
    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->HORIZONTAL_MOVE:I
    invoke-static {}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$100()I

    move-result v3

    if-ne p2, v3, :cond_2

    .line 167
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->mPosition:I

    if-ge p1, v3, :cond_1

    .line 168
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    .line 172
    :goto_0
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 177
    :cond_0
    :goto_1
    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 178
    return-object v0

    .line 170
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    goto :goto_0

    .line 173
    :cond_2
    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->VERTICAL_MOVE:I
    invoke-static {}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$200()I

    move-result v3

    if-ne p2, v3, :cond_0

    .line 174
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    .line 175
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method

.method public unselect(II)Landroid/view/ViewPropertyAnimator;
    .locals 7
    .param p1, "newPos"    # I
    .param p2, "move"    # I

    .prologue
    const/4 v6, 0x0

    .line 126
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 127
    .local v0, "anim":Landroid/view/ViewPropertyAnimator;
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->mView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    .line 128
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setX(F)V

    .line 129
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setY(F)V

    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, "delta":I
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mRowPanel:Landroid/view/View;
    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$000(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 132
    .local v3, "w":I
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->mRowPanel:Landroid/view/View;
    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$000(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 133
    .local v2, "h":I
    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->HORIZONTAL_MOVE:I
    invoke-static {}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$100()I

    move-result v4

    if-ne p2, v4, :cond_2

    .line 134
    iget v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;->mPosition:I

    if-le p1, v4, :cond_1

    .line 135
    neg-int v1, v3

    .line 139
    :goto_0
    int-to-float v4, v1

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 143
    :cond_0
    :goto_1
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel$1;

    invoke-direct {v5, p0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel$1;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/PanelController$Panel;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 149
    return-object v0

    .line 137
    :cond_1
    move v1, v3

    goto :goto_0

    .line 140
    :cond_2
    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->VERTICAL_MOVE:I
    invoke-static {}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->access$200()I

    move-result v4

    if-ne p2, v4, :cond_0

    .line 141
    int-to-float v4, v2

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method
