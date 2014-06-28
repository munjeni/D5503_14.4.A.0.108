.class public Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;
.super Landroid/app/Activity;
.source "ExpandedPileViewActivity.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/PileViewListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "ExpandedPileViewActivity"


# instance fields
.field private mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

.field private mMasterPileView:Lcom/sonyericsson/conversations/ui/PileView;

.field private mOriginLocale:Ljava/util/Locale;

.field private mSlavePileView:Lcom/sonyericsson/conversations/ui/PileView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private abortFlowAndExit()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mMasterPileView:Lcom/sonyericsson/conversations/ui/PileView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 237
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;)Lcom/sonyericsson/conversations/ui/MessageContentAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->abortFlowAndExit()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mOriginLocale:Ljava/util/Locale;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->abortFlowAndExit()V

    .line 226
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v7, -0x1

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v6, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mOriginLocale:Ljava/util/Locale;

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 48
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "message_content_adapter"

    invoke-virtual {v2, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 50
    .local v0, "contentAdapterKey":J
    const-string v6, "master_pile_view"

    invoke-virtual {v2, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 52
    .local v3, "masterPileKey":J
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/SharedPileDataPool;->getMessageContentAdapter(J)Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    .line 53
    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/ui/SharedPileDataPool;->getMasterPileView(J)Lcom/sonyericsson/conversations/ui/PileView;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mMasterPileView:Lcom/sonyericsson/conversations/ui/PileView;

    .line 54
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mMasterPileView:Lcom/sonyericsson/conversations/ui/PileView;

    if-nez v6, :cond_1

    .line 55
    :cond_0
    const-string v6, "ExpandedPileViewActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get adapter or master pileview! Adapter key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Adapter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Pile key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Pile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mMasterPileView:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 116
    :goto_0
    return-void

    .line 62
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 64
    const v6, 0x7f030008

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setContentView(I)V

    .line 66
    const v6, 0x7f0a0016

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/conversations/ui/PileView;

    iput-object v6, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mSlavePileView:Lcom/sonyericsson/conversations/ui/PileView;

    .line 67
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mSlavePileView:Lcom/sonyericsson/conversations/ui/PileView;

    const/high16 v7, 0x3f800000

    invoke-virtual {v6, v7}, Lcom/sonyericsson/conversations/ui/PileView;->setRelativeHeight(F)V

    .line 68
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mSlavePileView:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v6, p0}, Lcom/sonyericsson/conversations/ui/PileView;->setPileViewExpansionlistener(Lcom/sonyericsson/conversations/ui/PileViewListener;)V

    .line 69
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mSlavePileView:Lcom/sonyericsson/conversations/ui/PileView;

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mMasterPileView:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v6, v7}, Lcom/sonyericsson/conversations/ui/PileView;->cloneCollapsedBounds(Lcom/sonyericsson/conversations/ui/PileView;)V

    .line 71
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mSlavePileView:Lcom/sonyericsson/conversations/ui/PileView;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setGravity(I)V

    .line 72
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mSlavePileView:Lcom/sonyericsson/conversations/ui/PileView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 74
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mSlavePileView:Lcom/sonyericsson/conversations/ui/PileView;

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    invoke-virtual {v6, v7}, Lcom/sonyericsson/conversations/ui/PileView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mSlavePileView:Lcom/sonyericsson/conversations/ui/PileView;

    new-instance v7, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity$1;

    invoke-direct {v7, p0}, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity$1;-><init>(Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 100
    .local v5, "state":Ljava/lang/Integer;
    if-eqz v5, :cond_3

    .line 103
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x28

    if-lt v6, v7, :cond_2

    .line 106
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->abortFlowAndExit()V

    goto :goto_0

    .line 110
    :cond_2
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mSlavePileView:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sonyericsson/conversations/ui/PileView;->setState(I)V

    goto :goto_0

    .line 113
    :cond_3
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mSlavePileView:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/ui/PileView;->expand()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mSlavePileView:Lcom/sonyericsson/conversations/ui/PileView;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mSlavePileView:Lcom/sonyericsson/conversations/ui/PileView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/PileView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 142
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 146
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mSlavePileView:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/PileView;->getState()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mSlavePileView:Lcom/sonyericsson/conversations/ui/PileView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mMasterPileView:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/PileView;->cloneCollapsedBounds(Lcom/sonyericsson/conversations/ui/PileView;)V

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mSlavePileView:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/PileView;->collapse()V

    .line 153
    :goto_0
    const/4 v0, 0x0

    .line 155
    :goto_1
    return v0

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->abortFlowAndExit()V

    goto :goto_0

    .line 155
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mSlavePileView:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/PileView;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mMasterPileView:Lcom/sonyericsson/conversations/ui/PileView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 130
    return-void
.end method

.method public onPileDrawnForTheFirstTime(Lcom/sonyericsson/conversations/ui/PileView;)V
    .locals 2
    .param p1, "pv"    # Lcom/sonyericsson/conversations/ui/PileView;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mSlavePileView:Lcom/sonyericsson/conversations/ui/PileView;

    if-ne p1, v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mMasterPileView:Lcom/sonyericsson/conversations/ui/PileView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    :cond_0
    return-void
.end method

.method public onPileViewStateSet(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 173
    sparse-switch p1, :sswitch_data_0

    .line 212
    :goto_0
    return-void

    .line 177
    :sswitch_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->setTextLabelEnabled(Z)V

    .line 178
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->setDeleteButtonEnabled(Z)V

    goto :goto_0

    .line 183
    :sswitch_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->setTextLabelEnabled(Z)V

    .line 184
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->setDeleteButtonEnabled(Z)V

    .line 186
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x3f800000

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    goto :goto_0

    .line 192
    :sswitch_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mMasterPileView:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 196
    :sswitch_3
    new-instance v0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity$2;-><init>(Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;)V

    .line 201
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mSlavePileView:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 206
    .end local v0    # "r":Ljava/lang/Runnable;
    :sswitch_4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 208
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x3f4ccccd

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    goto :goto_0

    .line 173
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_0
        0x1e -> :sswitch_4
        0x32 -> :sswitch_1
        0x3c -> :sswitch_2
        0x46 -> :sswitch_3
    .end sparse-switch
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    .line 165
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;->mSlavePileView:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/PileView;->getState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 168
    .local v0, "state":Ljava/lang/Integer;
    return-object v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method
