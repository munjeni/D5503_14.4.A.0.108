.class public Lcom/android/phone/widget/SomcCallWidgetMenuFragment;
.super Landroid/app/Fragment;
.source "SomcCallWidgetMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/widget/SomcCallWidgetMenuFragment$1;,
        Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuAnimationListener;,
        Lcom/android/phone/widget/SomcCallWidgetMenuFragment$State;,
        Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuOnTouchListener;,
        Lcom/android/phone/widget/SomcCallWidgetMenuFragment$CallWidgetMenuListener;,
        Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;
    }
.end annotation


# instance fields
.field private mButtonMinWidth:I

.field private mExpanded:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemTransition:Landroid/animation/LayoutTransition;

.field private mListener:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$CallWidgetMenuListener;

.field private mMenuAnimationListener:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuAnimationListener;

.field private mMenuHeight:I

.field private mMenuOnTouchListener:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuOnTouchListener;

.field private mMode:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

.field private mNbrOfCurrentActiveAnimations:I

.field private mSingleLayout:Z

.field private mWidgetItems:Landroid/view/ViewGroup;

.field private mWidgetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/widget/ISomcCallWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetMenu:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 55
    new-instance v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuOnTouchListener;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuOnTouchListener;-><init>(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;Lcom/android/phone/widget/SomcCallWidgetMenuFragment$1;)V

    iput-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mMenuOnTouchListener:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuOnTouchListener;

    .line 59
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->DISABLED:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    iput-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mMode:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    .line 61
    new-instance v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuAnimationListener;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuAnimationListener;-><init>(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;Lcom/android/phone/widget/SomcCallWidgetMenuFragment$1;)V

    iput-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mMenuAnimationListener:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuAnimationListener;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mNbrOfCurrentActiveAnimations:I

    .line 89
    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;Landroid/view/ViewGroup;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/widget/SomcCallWidgetMenuFragment;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->getImageFromWidgetLayout(Landroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/widget/SomcCallWidgetMenuFragment;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->getTextFromWidgetLayout(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;Lcom/android/phone/widget/ISomcCallWidget;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/widget/SomcCallWidgetMenuFragment;
    .param p1, "x1"    # Lcom/android/phone/widget/ISomcCallWidget;
    .param p2, "x2"    # Landroid/view/ViewGroup;
    .param p3, "x3"    # Landroid/widget/ImageView;
    .param p4, "x4"    # Landroid/widget/TextView;
    .param p5, "x5"    # Z

    .prologue
    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->setButtonPressed(Lcom/android/phone/widget/ISomcCallWidget;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;)Lcom/android/phone/widget/SomcCallWidgetMenuFragment$CallWidgetMenuListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mListener:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$CallWidgetMenuListener;

    return-object v0
.end method

.method static synthetic access$708(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mNbrOfCurrentActiveAnimations:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mNbrOfCurrentActiveAnimations:I

    return v0
.end method

.method static synthetic access$710(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mNbrOfCurrentActiveAnimations:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mNbrOfCurrentActiveAnimations:I

    return v0
.end method

.method private createWidgetItems(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/widget/ISomcCallWidget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "widgetList":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/widget/ISomcCallWidget;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetList:Ljava/util/List;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_1

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/phone/widget/ISomcCallWidget;

    .line 238
    .local v13, "w":Lcom/android/phone/widget/ISomcCallWidget;
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetItems:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    invoke-interface {v13}, Lcom/android/phone/widget/ISomcCallWidget;->getClassName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 240
    .local v2, "b":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 241
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetItems:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 247
    .end local v2    # "b":Landroid/view/ViewGroup;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v13    # "w":Lcom/android/phone/widget/ISomcCallWidget;
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetList:Ljava/util/List;

    .line 248
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v12, "oldButtons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewGroup;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetItems:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v7, v0, :cond_2

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetItems:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 252
    :cond_2
    const/4 v15, 0x0

    .line 254
    .local v15, "widgetIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetList:Ljava/util/List;

    move-object/from16 v16, v0

    if-eqz v16, :cond_d

    .line 255
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mSingleLayout:Z

    .line 256
    .local v10, "lastSingleLayout":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->getNbrVisibleWidgets()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    const/16 v16, 0x1

    :goto_2
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mSingleLayout:Z

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/phone/widget/ISomcCallWidget;

    .line 258
    .local v14, "widget":Lcom/android/phone/widget/ISomcCallWidget;
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->getButton(Ljava/util/ArrayList;Lcom/android/phone/widget/ISomcCallWidget;)Landroid/view/ViewGroup;

    move-result-object v11

    .line 260
    .local v11, "oldButton":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->isVisibleInCurrentMode(Lcom/android/phone/widget/ISomcCallWidget;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 261
    const/4 v3, 0x0

    .line 266
    .local v3, "button":Landroid/view/ViewGroup;
    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mSingleLayout:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v0, v10, :cond_8

    .line 267
    move-object v3, v11

    .line 275
    :cond_3
    :goto_4
    if-nez v3, :cond_4

    .line 276
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mSingleLayout:Z

    move/from16 v16, v0

    if-eqz v16, :cond_9

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    const v17, 0x7f03002e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetItems:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 280
    .local v5, "buttonLayout":Landroid/view/ViewGroup;
    const v16, 0x7f0700f0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "button":Landroid/view/ViewGroup;
    check-cast v3, Landroid/view/ViewGroup;

    .line 287
    .end local v5    # "buttonLayout":Landroid/view/ViewGroup;
    .restart local v3    # "button":Landroid/view/ViewGroup;
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->getImageFromWidgetLayout(Landroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object v4

    .line 288
    .local v4, "buttonImage":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->getTextFromWidgetLayout(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v6

    .line 289
    .local v6, "buttonText":Landroid/widget/TextView;
    invoke-virtual {v3, v15}, Landroid/view/View;->setId(I)V

    .line 290
    invoke-interface {v14}, Lcom/android/phone/widget/ISomcCallWidget;->getClassName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 291
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mButtonMinWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 292
    invoke-interface {v14}, Lcom/android/phone/widget/ISomcCallWidget;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 293
    .local v9, "icon":Landroid/graphics/drawable/Drawable;
    invoke-interface {v14}, Lcom/android/phone/widget/ISomcCallWidget;->getStatus()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 294
    invoke-interface {v14}, Lcom/android/phone/widget/ISomcCallWidget;->getDisabledIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 295
    const v16, 0x7f0c000a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->getColor(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 297
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mSingleLayout:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 299
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 308
    :cond_5
    :goto_6
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    invoke-interface {v14}, Lcom/android/phone/widget/ISomcCallWidget;->getText()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mMenuOnTouchListener:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuOnTouchListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 311
    if-nez v11, :cond_6

    .line 312
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->insertWidget(Landroid/view/ViewGroup;Lcom/android/phone/widget/ISomcCallWidget;)V

    .line 321
    .end local v3    # "button":Landroid/view/ViewGroup;
    .end local v4    # "buttonImage":Landroid/widget/ImageView;
    .end local v6    # "buttonText":Landroid/widget/TextView;
    .end local v9    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_6
    :goto_7
    add-int/lit8 v15, v15, 0x1

    .line 322
    goto/16 :goto_3

    .line 256
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "oldButton":Landroid/view/ViewGroup;
    .end local v14    # "widget":Lcom/android/phone/widget/ISomcCallWidget;
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 268
    .restart local v3    # "button":Landroid/view/ViewGroup;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v11    # "oldButton":Landroid/view/ViewGroup;
    .restart local v14    # "widget":Lcom/android/phone/widget/ISomcCallWidget;
    :cond_8
    if-eqz v11, :cond_3

    .line 270
    invoke-virtual {v11}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetItems:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 272
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 282
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    const v17, 0x7f03002c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetItems:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 284
    .restart local v5    # "buttonLayout":Landroid/view/ViewGroup;
    const v16, 0x7f0700eb

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "button":Landroid/view/ViewGroup;
    check-cast v3, Landroid/view/ViewGroup;

    .restart local v3    # "button":Landroid/view/ViewGroup;
    goto/16 :goto_5

    .line 302
    .end local v5    # "buttonLayout":Landroid/view/ViewGroup;
    .restart local v4    # "buttonImage":Landroid/widget/ImageView;
    .restart local v6    # "buttonText":Landroid/widget/TextView;
    .restart local v9    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_a
    const v16, 0x7f0c0009

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->getColor(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mSingleLayout:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 304
    const v16, 0x7f02012d

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    .line 315
    .end local v3    # "button":Landroid/view/ViewGroup;
    .end local v4    # "buttonImage":Landroid/widget/ImageView;
    .end local v6    # "buttonText":Landroid/widget/TextView;
    .end local v9    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_b
    if-eqz v11, :cond_6

    .line 317
    invoke-virtual {v11}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetItems:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_7

    .line 323
    .end local v11    # "oldButton":Landroid/view/ViewGroup;
    .end local v14    # "widget":Lcom/android/phone/widget/ISomcCallWidget;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mListener:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$CallWidgetMenuListener;

    move-object/from16 v16, v0

    if-eqz v16, :cond_d

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mListener:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$CallWidgetMenuListener;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetItems:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v17

    invoke-interface/range {v16 .. v17}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$CallWidgetMenuListener;->contentChanged(I)V

    .line 327
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "lastSingleLayout":Z
    :cond_d
    return-void
.end method

.method private getButton(Ljava/util/ArrayList;Lcom/android/phone/widget/ISomcCallWidget;)Landroid/view/ViewGroup;
    .locals 4
    .param p2, "widget"    # Lcom/android/phone/widget/ISomcCallWidget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;",
            "Lcom/android/phone/widget/ISomcCallWidget;",
            ")",
            "Landroid/view/ViewGroup;"
        }
    .end annotation

    .prologue
    .line 369
    .local p1, "buttonList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewGroup;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 370
    .local v0, "button":Landroid/view/ViewGroup;
    invoke-interface {p2}, Lcom/android/phone/widget/ISomcCallWidget;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    .end local v0    # "button":Landroid/view/ViewGroup;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getColor(I)I
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 479
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 480
    .local v0, "r":Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1
.end method

.method private getImageFromWidgetLayout(Landroid/view/ViewGroup;)Landroid/widget/ImageView;
    .locals 1
    .param p1, "button"    # Landroid/view/ViewGroup;

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mSingleLayout:Z

    if-eqz v0, :cond_0

    .line 353
    const v0, 0x7f0700f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 355
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0700ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private getMenuTransition(Z)Landroid/animation/ObjectAnimator;
    .locals 6
    .param p1, "expanded"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 408
    if-eqz p1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetMenu:Landroid/view/ViewGroup;

    const-string v2, "y"

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 413
    .local v0, "widgetAreaYAnimation":Landroid/animation/ObjectAnimator;
    :goto_0
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mMenuAnimationListener:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuAnimationListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 414
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 415
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40800000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 417
    return-object v0

    .line 411
    .end local v0    # "widgetAreaYAnimation":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetMenu:Landroid/view/ViewGroup;

    const-string v2, "y"

    new-array v3, v3, [F

    iget v4, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mMenuHeight:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "widgetAreaYAnimation":Landroid/animation/ObjectAnimator;
    goto :goto_0
.end method

.method private getNbrVisibleWidgets()I
    .locals 4

    .prologue
    .line 378
    const/4 v1, 0x0

    .line 379
    .local v1, "nbrOfVisible":I
    iget-object v3, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/widget/ISomcCallWidget;

    .line 380
    .local v2, "widget":Lcom/android/phone/widget/ISomcCallWidget;
    invoke-direct {p0, v2}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->isVisibleInCurrentMode(Lcom/android/phone/widget/ISomcCallWidget;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    .end local v2    # "widget":Lcom/android/phone/widget/ISomcCallWidget;
    :cond_1
    return v1
.end method

.method private getTextFromWidgetLayout(Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 1
    .param p1, "button"    # Landroid/view/ViewGroup;

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mSingleLayout:Z

    if-eqz v0, :cond_0

    .line 361
    const v0, 0x7f0700f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 363
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0700ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0
.end method

.method private getWidget(Ljava/lang/String;)Lcom/android/phone/widget/ISomcCallWidget;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 343
    iget-object v2, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/widget/ISomcCallWidget;

    .line 344
    .local v1, "w":Lcom/android/phone/widget/ISomcCallWidget;
    invoke-interface {v1}, Lcom/android/phone/widget/ISomcCallWidget;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    .end local v1    # "w":Lcom/android/phone/widget/ISomcCallWidget;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private insertWidget(Landroid/view/ViewGroup;Lcom/android/phone/widget/ISomcCallWidget;)V
    .locals 5
    .param p1, "button"    # Landroid/view/ViewGroup;
    .param p2, "widget"    # Lcom/android/phone/widget/ISomcCallWidget;

    .prologue
    .line 330
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetItems:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 331
    iget-object v3, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetItems:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 332
    .local v0, "b":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->getWidget(Ljava/lang/String;)Lcom/android/phone/widget/ISomcCallWidget;

    move-result-object v2

    .line 334
    .local v2, "w":Lcom/android/phone/widget/ISomcCallWidget;
    invoke-interface {v2}, Lcom/android/phone/widget/ISomcCallWidget;->getPrio()I

    move-result v3

    invoke-interface {p2}, Lcom/android/phone/widget/ISomcCallWidget;->getPrio()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 335
    iget-object v3, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetItems:Landroid/view/ViewGroup;

    invoke-virtual {v3, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 340
    .end local v0    # "b":Landroid/view/View;
    .end local v2    # "w":Lcom/android/phone/widget/ISomcCallWidget;
    :goto_1
    return-void

    .line 330
    .restart local v0    # "b":Landroid/view/View;
    .restart local v2    # "w":Lcom/android/phone/widget/ISomcCallWidget;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    .end local v0    # "b":Landroid/view/View;
    .end local v2    # "w":Lcom/android/phone/widget/ISomcCallWidget;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetItems:Landroid/view/ViewGroup;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private isVisibleInCurrentMode(Lcom/android/phone/widget/ISomcCallWidget;)Z
    .locals 3
    .param p1, "widget"    # Lcom/android/phone/widget/ISomcCallWidget;

    .prologue
    const/4 v0, 0x0

    .line 389
    invoke-interface {p1}, Lcom/android/phone/widget/ISomcCallWidget;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    :goto_0
    return v0

    .line 392
    :cond_0
    sget-object v1, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$1;->$SwitchMap$com$android$phone$widget$SomcCallWidgetMenuFragment$MenuMode:[I

    iget-object v2, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mMode:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 394
    :pswitch_0
    invoke-interface {p1}, Lcom/android/phone/widget/ISomcCallWidget;->getVisibleWhenCalling()Z

    move-result v0

    goto :goto_0

    .line 396
    :pswitch_1
    invoke-interface {p1}, Lcom/android/phone/widget/ISomcCallWidget;->getVisibleOnIncomingCall()Z

    move-result v0

    goto :goto_0

    .line 398
    :pswitch_2
    invoke-interface {p1}, Lcom/android/phone/widget/ISomcCallWidget;->getVisibleDuringCall()Z

    move-result v0

    goto :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setButtonPressed(Lcom/android/phone/widget/ISomcCallWidget;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V
    .locals 1
    .param p1, "widget"    # Lcom/android/phone/widget/ISomcCallWidget;
    .param p2, "button"    # Landroid/view/ViewGroup;
    .param p3, "buttonImage"    # Landroid/widget/ImageView;
    .param p4, "buttonText"    # Landroid/widget/TextView;
    .param p5, "pressed"    # Z

    .prologue
    .line 457
    if-eqz p5, :cond_2

    .line 458
    iget-boolean v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mSingleLayout:Z

    if-eqz v0, :cond_1

    .line 459
    const v0, 0x7f02012e

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 463
    :goto_0
    const v0, 0x106000b

    invoke-direct {p0, v0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->getColor(I)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 464
    invoke-interface {p1}, Lcom/android/phone/widget/ISomcCallWidget;->getIconPressed()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 476
    :cond_0
    :goto_1
    return-void

    .line 461
    :cond_1
    const v0, 0x7f0c000c

    invoke-direct {p0, v0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 466
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mSingleLayout:Z

    if-eqz v0, :cond_3

    .line 467
    const v0, 0x7f02012d

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 471
    :goto_2
    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    .line 472
    const v0, 0x7f0c0009

    invoke-direct {p0, v0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->getColor(I)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 473
    invoke-interface {p1}, Lcom/android/phone/widget/ISomcCallWidget;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 469
    :cond_3
    const v0, 0x7f0c000b

    invoke-direct {p0, v0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2
.end method


# virtual methods
.method public collapse()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 191
    iget-boolean v2, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mExpanded:Z

    if-nez v2, :cond_0

    .line 204
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->isDetached()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->isRemoving()Z

    move-result v2

    if-nez v2, :cond_2

    .line 196
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 197
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-direct {p0, v3}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->getMenuTransition(Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 198
    .local v0, "animatorBuilder":Landroid/animation/AnimatorSet$Builder;
    iget-object v2, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mListener:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$CallWidgetMenuListener;

    if-eqz v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mListener:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$CallWidgetMenuListener;

    invoke-interface {v2, v0, v3}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$CallWidgetMenuListener;->menuTransition(Landroid/animation/AnimatorSet$Builder;Z)V

    .line 201
    :cond_1
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 203
    .end local v0    # "animatorBuilder":Landroid/animation/AnimatorSet$Builder;
    .end local v1    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_2
    iput-boolean v3, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mExpanded:Z

    goto :goto_0
.end method

.method public expand()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 168
    iget-object v2, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetItems:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-boolean v2, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mExpanded:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetItems:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    invoke-virtual {p0}, Landroid/app/Fragment;->isDetached()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->isRemoving()Z

    move-result v2

    if-nez v2, :cond_3

    .line 176
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 177
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-direct {p0, v3}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->getMenuTransition(Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 178
    .local v0, "animatorBuilder":Landroid/animation/AnimatorSet$Builder;
    iget-object v2, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mListener:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$CallWidgetMenuListener;

    if-eqz v2, :cond_2

    .line 179
    iget-object v2, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mListener:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$CallWidgetMenuListener;

    invoke-interface {v2, v0, v3}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$CallWidgetMenuListener;->menuTransition(Landroid/animation/AnimatorSet$Builder;Z)V

    .line 182
    :cond_2
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 184
    .end local v0    # "animatorBuilder":Landroid/animation/AnimatorSet$Builder;
    .end local v1    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_3
    iput-boolean v3, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mExpanded:Z

    goto :goto_0
.end method

.method public getWidgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/widget/ISomcCallWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetList:Ljava/util/List;

    return-object v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mExpanded:Z

    return v0
.end method

.method public isInAnimation()Z
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mNbrOfCurrentActiveAnimations:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 99
    iput-object p1, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 100
    const v3, 0x7f03002d

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetMenu:Landroid/view/ViewGroup;

    .line 101
    iget-object v3, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetMenu:Landroid/view/ViewGroup;

    const v4, 0x7f0700ef

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetItems:Landroid/view/ViewGroup;

    .line 103
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 104
    .local v1, "r":Landroid/content/res/Resources;
    const v3, 0x7f0a0079

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mMenuHeight:I

    .line 106
    iput v5, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mNbrOfCurrentActiveAnimations:I

    .line 107
    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v3, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mItemTransition:Landroid/animation/LayoutTransition;

    .line 108
    iget-object v3, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mItemTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 109
    iget-object v3, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mItemTransition:Landroid/animation/LayoutTransition;

    const/4 v4, 0x4

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v6, 0x40800000

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4, v5}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 113
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 114
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 115
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 119
    iget v3, v2, Landroid/graphics/Point;->x:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0xb

    iput v3, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mButtonMinWidth:I

    .line 121
    iget-object v3, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetMenu:Landroid/view/ViewGroup;

    return-object v3
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 485
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 486
    return-void
.end method

.method public refresh(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/widget/ISomcCallWidget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "widgetList":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/widget/ISomcCallWidget;>;"
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetItems:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mExpanded:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mNbrOfCurrentActiveAnimations:I

    if-nez v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetItems:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mItemTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 138
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->createWidgetItems(Ljava/util/List;)V

    .line 141
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetItems:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mMode:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    sget-object v1, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->INCALL:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mMode:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    sget-object v1, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->CALLING:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mMode:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    sget-object v1, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->INCOMING:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    if-ne v0, v1, :cond_3

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->expand()V

    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetItems:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_1

    .line 146
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->collapse()V

    goto :goto_0
.end method

.method public registerListener(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$CallWidgetMenuListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/phone/widget/SomcCallWidgetMenuFragment$CallWidgetMenuListener;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mListener:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$CallWidgetMenuListener;

    .line 93
    return-void
.end method

.method public updateMenuMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mMode:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    if-eq p1, v0, :cond_0

    .line 216
    iput-object p1, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mMode:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    .line 217
    invoke-virtual {p0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->collapse()V

    .line 219
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mMenuAnimationListener:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuAnimationListener;

    sget-object v1, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$State;->REFRESH_AFTER_COLLAPSE:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$State;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuAnimationListener;->setState(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$State;)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->refresh(Ljava/util/List;)V

    goto :goto_0
.end method
