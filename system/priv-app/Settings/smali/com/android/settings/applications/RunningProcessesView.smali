.class public Lcom/android/settings/applications/RunningProcessesView;
.super Landroid/widget/FrameLayout;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;,
        Lcom/android/settings/applications/RunningProcessesView$TimeTicker;,
        Lcom/android/settings/applications/RunningProcessesView$ViewHolder;,
        Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    }
.end annotation


# instance fields
.field SECONDARY_SERVER_MEM:J

.field final mActiveItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/settings/applications/RunningProcessesView$ActiveItem;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

.field mAm:Landroid/app/ActivityManager;

.field mBackgroundProcessText:Landroid/widget/TextView;

.field mBuilder:Ljava/lang/StringBuilder;

.field mColorBar:Lcom/android/settings/applications/LinearColorBar;

.field mCurSelected:Lcom/android/settings/applications/RunningState$BaseItem;

.field mDataAvail:Ljava/lang/Runnable;

.field mForegroundProcessText:Landroid/widget/TextView;

.field mLastAvailMemory:J

.field mLastBackgroundProcessMemory:J

.field mLastForegroundProcessMemory:J

.field mLastNumBackgroundProcesses:I

.field mLastNumForegroundProcesses:I

.field mLastNumServiceProcesses:I

.field mLastServiceProcessMemory:J

.field mListView:Landroid/widget/ListView;

.field mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

.field final mMyUserId:I

.field mOwner:Landroid/app/Fragment;

.field mState:Lcom/android/settings/applications/RunningState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, -0x1

    const-wide/16 v2, -0x1

    .line 429
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    .line 83
    iput v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    .line 84
    iput v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    .line 85
    iput v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    .line 86
    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    .line 87
    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    .line 88
    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    .line 89
    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastAvailMemory:J

    .line 93
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    .line 430
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mMyUserId:I

    .line 431
    return-void
.end method

.method private startServiceDetailsActivity(Lcom/android/settings/applications/RunningState$MergedItem;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 408
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    .line 410
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 411
    iget-object v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eqz v0, :cond_0

    .line 412
    const-string v0, "uid"

    iget-object v1, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v1, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 413
    const-string v0, "process"

    iget-object v1, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_0
    const-string v0, "user_id"

    iget v1, p1, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 416
    const-string v0, "background"

    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v1, v1, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 418
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 419
    const-class v1, Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b053e

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 422
    :cond_1
    return-void
.end method


# virtual methods
.method public doCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 434
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    .line 435
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    .line 436
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 438
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f04007d

    invoke-virtual {v1, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 439
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    .line 440
    const v3, 0x1020004

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 441
    .local v0, "emptyView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 442
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 444
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 445
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 446
    new-instance v3, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;-><init>(Lcom/android/settings/applications/RunningProcessesView;Lcom/android/settings/applications/RunningState;)V

    iput-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    .line 447
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 448
    const v3, 0x7f080143

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/LinearColorBar;

    iput-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    .line 449
    const v3, 0x7f080145

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    .line 450
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    new-instance v4, Lcom/android/settings/applications/RunningProcessesView$1;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/RunningProcessesView$1;-><init>(Lcom/android/settings/applications/RunningProcessesView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    const v3, 0x7f080144

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    .line 457
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    new-instance v4, Lcom/android/settings/applications/RunningProcessesView$2;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/RunningProcessesView$2;-><init>(Lcom/android/settings/applications/RunningProcessesView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 465
    .local v2, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v3, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 466
    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v3, p0, Lcom/android/settings/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    .line 467
    return-void
.end method

.method public doPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 470
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->pause()V

    .line 471
    iput-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 472
    iput-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 473
    return-void
.end method

.method public doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "owner"    # Landroid/app/Fragment;
    .param p2, "dataAvail"    # Ljava/lang/Runnable;

    .prologue
    const/4 v0, 0x1

    .line 476
    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 477
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1, p0}, Lcom/android/settings/applications/RunningState;->resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V

    .line 478
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningState;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 485
    :goto_0
    return v0

    .line 484
    :cond_0
    iput-object p2, p0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 485
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 400
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    .line 401
    .local v0, "l":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 402
    .local v1, "mi":Lcom/android/settings/applications/RunningState$MergedItem;
    iput-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurSelected:Lcom/android/settings/applications/RunningState$BaseItem;

    .line 403
    invoke-direct {p0, v1}, Lcom/android/settings/applications/RunningProcessesView;->startServiceDetailsActivity(Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 404
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 503
    packed-switch p1, :pswitch_data_0

    .line 516
    :goto_0
    return-void

    .line 505
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 508
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 509
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 512
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 513
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 503
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method refreshUi(Z)V
    .locals 15
    .param p1, "dataChanged"    # Z

    .prologue
    .line 335
    if-eqz p1, :cond_0

    .line 336
    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    check-cast v9, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    move-object v0, v9

    check-cast v0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    .line 337
    .local v0, "adapter":Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 338
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 341
    .end local v0    # "adapter":Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;
    :cond_0
    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    if-eqz v9, :cond_1

    .line 342
    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 343
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 348
    :cond_1
    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 349
    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v9

    iget-object v11, p0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v11

    add-long/2addr v9, v11

    iget-wide v11, p0, Lcom/android/settings/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    sub-long v1, v9, v11

    .line 351
    .local v1, "availMem":J
    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-gez v9, :cond_2

    .line 352
    const-wide/16 v1, 0x0

    .line 355
    :cond_2
    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v10, v9, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 356
    :try_start_0
    iget v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    iget-object v11, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v11, v11, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    if-ne v9, v11, :cond_3

    iget-wide v11, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v13, v9, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    cmp-long v9, v11, v13

    if-nez v9, :cond_3

    iget-wide v11, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastAvailMemory:J

    cmp-long v9, v11, v1

    if-eqz v9, :cond_4

    .line 359
    :cond_3
    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v9, v9, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    iput v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    .line 360
    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v11, v9, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    iput-wide v11, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    .line 361
    iput-wide v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastAvailMemory:J

    .line 362
    iget-wide v11, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastAvailMemory:J

    iget-wide v13, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    add-long v4, v11, v13

    .line 363
    .local v4, "freeMem":J
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v3

    .line 364
    .local v3, "bidiFormatter":Landroid/text/BidiFormatter;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 366
    .local v6, "sizeStr":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0534

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v11, p0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v11

    sub-long/2addr v11, v4

    invoke-static {v9, v11, v12}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 371
    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0535

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    .end local v3    # "bidiFormatter":Landroid/text/BidiFormatter;
    .end local v4    # "freeMem":J
    .end local v6    # "sizeStr":Ljava/lang/String;
    :cond_4
    iget v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    iget-object v11, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v11, v11, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    if-ne v9, v11, :cond_5

    iget-wide v11, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v13, v9, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    cmp-long v9, v11, v13

    if-nez v9, :cond_5

    iget v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    iget-object v11, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v11, v11, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    if-ne v9, v11, :cond_5

    iget-wide v11, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v13, v9, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    cmp-long v9, v11, v13

    if-eqz v9, :cond_6

    .line 378
    :cond_5
    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v9, v9, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    iput v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    .line 379
    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v11, v9, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    iput-wide v11, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    .line 380
    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v9, v9, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    iput v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    .line 381
    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v11, v9, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    iput-wide v11, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    .line 390
    :cond_6
    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v11

    long-to-float v7, v11

    .line 391
    .local v7, "totalMem":F
    iget-wide v11, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    add-long/2addr v11, v1

    iget-wide v13, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    add-long/2addr v11, v13

    long-to-float v8, v11

    .line 393
    .local v8, "totalShownMem":F
    iget-object v9, p0, Lcom/android/settings/applications/RunningProcessesView;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    sub-float v11, v7, v8

    div-float/2addr v11, v7

    iget-wide v12, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    long-to-float v12, v12

    div-float/2addr v12, v7

    iget-wide v13, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    long-to-float v13, v13

    div-float/2addr v13, v7

    invoke-virtual {v9, v11, v12, v13}, Lcom/android/settings/applications/LinearColorBar;->setRatios(FFF)V

    .line 396
    monitor-exit v10

    .line 397
    return-void

    .line 396
    .end local v7    # "totalMem":F
    .end local v8    # "totalShownMem":F
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 489
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 490
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/applications/RunningProcessesView$ActiveItem;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 491
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    .line 492
    .local v0, "ai":Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    iget-object v2, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 494
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 497
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 499
    .end local v0    # "ai":Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    :cond_1
    return-void
.end method
