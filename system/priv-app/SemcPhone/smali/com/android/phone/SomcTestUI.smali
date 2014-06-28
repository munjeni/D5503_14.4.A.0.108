.class public Lcom/android/phone/SomcTestUI;
.super Landroid/app/Activity;
.source "SomcTestUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SomcTestUI$TestMmiCode;
    }
.end annotation


# instance fields
.field private mBluetoothStatusVisible:Z

.field private mCallView:Lcom/android/phone/CallView;

.field private mCurrentState:I

.field private mHandler:Landroid/os/Handler;

.field private mIsShowingLargePhoto:Z

.field private mLargePhoto:Landroid/graphics/drawable/Drawable;

.field private mMmiCode:Lcom/android/phone/SomcTestUI$TestMmiCode;

.field private mNetworkSelection:Ljava/lang/String;

.field private mPUKEntryActivity:Landroid/app/Activity;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mSmallPhoto:Landroid/graphics/drawable/Drawable;

.field mcallView:Lcom/android/phone/CallView$CallViewActionListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/phone/SomcTestUI;->mCurrentState:I

    .line 101
    iput-boolean v1, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/phone/SomcTestUI;->mIsShowingLargePhoto:Z

    .line 134
    new-instance v0, Lcom/android/phone/SomcTestUI$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcTestUI$1;-><init>(Lcom/android/phone/SomcTestUI;)V

    iput-object v0, p0, Lcom/android/phone/SomcTestUI;->mcallView:Lcom/android/phone/CallView$CallViewActionListener;

    .line 533
    new-instance v0, Lcom/android/phone/SomcTestUI$3;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcTestUI$3;-><init>(Lcom/android/phone/SomcTestUI;)V

    iput-object v0, p0, Lcom/android/phone/SomcTestUI;->mHandler:Landroid/os/Handler;

    .line 569
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SomcTestUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcTestUI;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/SomcTestUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcTestUI;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/SomcTestUI;)Lcom/android/phone/CallView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcTestUI;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/SomcTestUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcTestUI;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/android/phone/SomcTestUI;->mCurrentState:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/phone/SomcTestUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcTestUI;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/phone/SomcTestUI;->mIsShowingLargePhoto:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/SomcTestUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcTestUI;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/phone/SomcTestUI;->update()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/SomcTestUI;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcTestUI;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/SomcTestUI;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcTestUI;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mNetworkSelection:Ljava/lang/String;

    return-object v0
.end method

.method private getConferenceList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/CallView$ConferenceCallItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 500
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 502
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/CallView$ConferenceCallItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    .line 503
    invoke-static {}, Lcom/android/phone/CallView$ConferenceCallItem;->createConferenceCallItem()Lcom/android/phone/CallView$ConferenceCallItem;

    move-result-object v1

    .line 505
    .local v1, "item":Lcom/android/phone/CallView$ConferenceCallItem;
    const-string v3, "Jan Banan"

    iput-object v3, v1, Lcom/android/phone/CallView$ConferenceCallItem;->name:Ljava/lang/String;

    .line 506
    const-string v3, "0123456"

    iput-object v3, v1, Lcom/android/phone/CallView$ConferenceCallItem;->number:Ljava/lang/String;

    .line 507
    const-string v3, "Seattle, WA"

    iput-object v3, v1, Lcom/android/phone/CallView$ConferenceCallItem;->additionalCallInfo:Ljava/lang/String;

    .line 508
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 510
    .end local v1    # "item":Lcom/android/phone/CallView$ConferenceCallItem;
    :cond_0
    return-object v2
.end method

.method private initComponents()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 526
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->reDraw()V

    .line 527
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcTestUI;->mcallView:Lcom/android/phone/CallView$CallViewActionListener;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V

    .line 528
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setCallTime(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v3, v3}, Lcom/android/phone/CallView;->setForegroundRedirectingCallInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->hideAmAnimation()V

    .line 531
    return-void
.end method

.method private initRejectMsgList()V
    .locals 7

    .prologue
    .line 558
    const/4 v1, 0x0

    .line 559
    .local v1, "isRejectMsgNeeded":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v4, "rejectMsgList":Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/SomcRejectMsgManager;->getRejectMsgsWithDynamicalInfoList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 562
    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/SomcRejectMsgManager;->getRejectMsgs()Ljava/util/HashMap;

    move-result-object v2

    .line 563
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 564
    .local v3, "msg":Ljava/lang/String;
    new-instance v5, Lcom/android/phone/ItemWithIcon;

    const v6, 0x7f0200fb

    invoke-direct {v5, v3, v6}, Lcom/android/phone/ItemWithIcon;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 566
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5, v4}, Lcom/android/phone/CallView;->initRejectMsgList(Ljava/util/List;)V

    .line 567
    return-void
.end method

.method private setBluetoothView(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 518
    iget-object v1, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/phone/CallView;->setSoundRoutingOptionsVisibility(I)V

    .line 519
    return-void

    .line 518
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private update()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 307
    const/4 v4, 0x0

    .line 308
    .local v4, "isHDSpeechCodec":Z
    iget v7, p0, Lcom/android/phone/SomcTestUI;->mCurrentState:I

    packed-switch v7, :pswitch_data_0

    .line 493
    :goto_0
    :pswitch_0
    return-void

    .line 310
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/SomcTestUI;->initComponents()V

    .line 311
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v7, v11, v11, v11}, Lcom/android/phone/CallView;->showSingleCallLayout(ZZZ)V

    .line 312
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v8, "Jan Banan"

    const-string v9, "88888850"

    const-string v10, "Mobile"

    invoke-virtual {v7, v8, v9, v10, v4}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 313
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-object v8, p0, Lcom/android/phone/SomcTestUI;->mLargePhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Lcom/android/phone/CallView;->setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 314
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-boolean v8, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    invoke-virtual {v7, v8}, Lcom/android/phone/CallView;->setBluetoothHeadsetIsConnected(Z)V

    .line 315
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v7, v12}, Lcom/android/phone/CallView;->setCallRecordingOn(Z)V

    .line 316
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/CallView;->setCallRecordingTime(Ljava/lang/String;)V

    .line 317
    iget-boolean v7, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    invoke-direct {p0, v7}, Lcom/android/phone/SomcTestUI;->setBluetoothView(Z)V

    goto :goto_0

    .line 321
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/SomcTestUI;->initComponents()V

    .line 323
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v7, v11, v12, v12}, Lcom/android/phone/CallView;->showTwoCallsLayout(ZZZ)V

    .line 324
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v8, "Jan Banan"

    const-string v9, "88888850"

    const-string v10, "Mobile"

    invoke-virtual {v7, v8, v9, v10, v4}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 325
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v8, "Josefin Apelsin"

    const-string v9, "1234567"

    const-string v10, "Seattle, WA"

    const-string v11, "Mobile"

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/phone/CallView;->setBackgroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-object v8, p0, Lcom/android/phone/SomcTestUI;->mLargePhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Lcom/android/phone/CallView;->setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 328
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-boolean v8, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    invoke-virtual {v7, v8}, Lcom/android/phone/CallView;->setBluetoothHeadsetIsConnected(Z)V

    .line 329
    iget-boolean v7, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    invoke-direct {p0, v7}, Lcom/android/phone/SomcTestUI;->setBluetoothView(Z)V

    goto :goto_0

    .line 333
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/SomcTestUI;->initComponents()V

    .line 334
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v7, v11, v11, v12}, Lcom/android/phone/CallView;->showSingleCallLayout(ZZZ)V

    .line 335
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v8, "Jan Banan"

    const-string v9, "88888850"

    const-string v10, "Mobile"

    invoke-virtual {v7, v8, v9, v10, v4}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 336
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-object v8, p0, Lcom/android/phone/SomcTestUI;->mLargePhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Lcom/android/phone/CallView;->setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 337
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-boolean v8, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    invoke-virtual {v7, v8}, Lcom/android/phone/CallView;->setBluetoothHeadsetIsConnected(Z)V

    .line 338
    iget-boolean v7, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    invoke-direct {p0, v7}, Lcom/android/phone/SomcTestUI;->setBluetoothView(Z)V

    goto/16 :goto_0

    .line 342
    :pswitch_4
    invoke-direct {p0}, Lcom/android/phone/SomcTestUI;->initComponents()V

    .line 343
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v7}, Lcom/android/phone/CallView;->showIncomingCallLayout()V

    .line 344
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v8, "Jan Banan"

    const-string v9, "88888850"

    const-string v10, "Mobile"

    invoke-virtual {v7, v8, v9, v10, v4}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 345
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-object v8, p0, Lcom/android/phone/SomcTestUI;->mLargePhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Lcom/android/phone/CallView;->setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 346
    invoke-direct {p0}, Lcom/android/phone/SomcTestUI;->initRejectMsgList()V

    goto/16 :goto_0

    .line 350
    :pswitch_5
    invoke-direct {p0}, Lcom/android/phone/SomcTestUI;->initComponents()V

    .line 351
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v7, v11, v11, v11}, Lcom/android/phone/CallView;->showSingleCallLayout(ZZZ)V

    .line 352
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v8, "Johnson"

    const-string v9, "01234567890"

    invoke-virtual {v7, v8, v9}, Lcom/android/phone/CallView;->setForegroundRedirectingCallInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v8, "Jan Banan"

    const-string v9, "88888850"

    const-string v10, "Mobile"

    invoke-virtual {v7, v8, v9, v10, v4}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 354
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-object v8, p0, Lcom/android/phone/SomcTestUI;->mLargePhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Lcom/android/phone/CallView;->setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 355
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v8, "Jan Banan"

    invoke-virtual {v7, v8, v12}, Lcom/android/phone/CallView;->setForegroundCallInfoForWaitingCall(Ljava/lang/String;I)V

    .line 356
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v7, v11, v11}, Lcom/android/phone/CallView;->showWaitingCallLayout(ZZ)V

    .line 357
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v8, "Gabriel"

    const-string v9, "0123456789"

    const-string v10, "Mobile"

    invoke-virtual {v7, v8, v9, v10, v4}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 358
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-object v8, p0, Lcom/android/phone/SomcTestUI;->mLargePhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Lcom/android/phone/CallView;->setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 359
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-boolean v8, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    invoke-virtual {v7, v8}, Lcom/android/phone/CallView;->setBluetoothHeadsetIsConnected(Z)V

    .line 360
    iget-boolean v7, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    invoke-direct {p0, v7}, Lcom/android/phone/SomcTestUI;->setBluetoothView(Z)V

    .line 361
    invoke-direct {p0}, Lcom/android/phone/SomcTestUI;->initRejectMsgList()V

    goto/16 :goto_0

    .line 365
    :pswitch_6
    invoke-direct {p0}, Lcom/android/phone/SomcTestUI;->initComponents()V

    .line 366
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-direct {p0}, Lcom/android/phone/SomcTestUI;->getConferenceList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/CallView;->setConferenceListInfo(Ljava/util/List;)V

    .line 367
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v7, v11, v12}, Lcom/android/phone/CallView;->showConferenceCallLayout(ZZ)V

    .line 368
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/phone/CallView;->setForegroundCallPhoto(I)V

    .line 369
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0053

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const-string v10, ""

    invoke-virtual {v7, v8, v9, v10, v4}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 372
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-boolean v8, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    invoke-virtual {v7, v8}, Lcom/android/phone/CallView;->setBluetoothHeadsetIsConnected(Z)V

    .line 373
    iget-boolean v7, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    invoke-direct {p0, v7}, Lcom/android/phone/SomcTestUI;->setBluetoothView(Z)V

    goto/16 :goto_0

    .line 377
    :pswitch_7
    invoke-direct {p0}, Lcom/android/phone/SomcTestUI;->initComponents()V

    .line 378
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v8, "Jan Banan"

    const-string v9, "88888850"

    const-string v10, "Mobile"

    invoke-virtual {v7, v8, v9, v10, v4}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 379
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-object v8, p0, Lcom/android/phone/SomcTestUI;->mLargePhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Lcom/android/phone/CallView;->setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 380
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v8, "Call ended"

    invoke-virtual {v7, v8, v12}, Lcom/android/phone/CallView;->showAllCallsEndedLayout(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 384
    :pswitch_8
    invoke-direct {p0}, Lcom/android/phone/SomcTestUI;->initComponents()V

    .line 385
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v7, v12, v11, v11}, Lcom/android/phone/CallView;->showSingleCallLayout(ZZZ)V

    .line 386
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v8, "Johnson"

    const-string v9, "01234567890"

    invoke-virtual {v7, v8, v9}, Lcom/android/phone/CallView;->setForegroundRedirectingCallInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v8, "Jan Banan"

    const-string v9, "88888850"

    const-string v10, "Mobile"

    invoke-virtual {v7, v8, v9, v10, v4}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 388
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-object v8, p0, Lcom/android/phone/SomcTestUI;->mLargePhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Lcom/android/phone/CallView;->setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 392
    :pswitch_9
    invoke-direct {p0}, Lcom/android/phone/SomcTestUI;->initComponents()V

    .line 393
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v7, v11, v11, v11}, Lcom/android/phone/CallView;->showSingleCallLayout(ZZZ)V

    .line 395
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v8, "Johnson"

    const-string v9, "01234567890"

    invoke-virtual {v7, v8, v9}, Lcom/android/phone/CallView;->setForegroundRedirectingCallInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v8, "Diana Macalister"

    invoke-virtual {v7, v8, v12}, Lcom/android/phone/CallView;->setForegroundCallInfoForWaitingCall(Ljava/lang/String;I)V

    .line 400
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v8, "Duncan Swasson"

    invoke-virtual {v7, v8}, Lcom/android/phone/CallView;->setBackgroundCallInfoFor3rdIncoming(Ljava/lang/String;)V

    .line 402
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v7, v12, v12}, Lcom/android/phone/CallView;->showWaitingCallLayout(ZZ)V

    .line 403
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v8, "Emma Swasson"

    const-string v9, "0738003754"

    const-string v10, "Mobile"

    invoke-virtual {v7, v8, v9, v10, v4}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 405
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-object v8, p0, Lcom/android/phone/SomcTestUI;->mLargePhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Lcom/android/phone/CallView;->setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 406
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-boolean v8, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    invoke-virtual {v7, v8}, Lcom/android/phone/CallView;->setBluetoothHeadsetIsConnected(Z)V

    .line 407
    iget-boolean v7, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    invoke-direct {p0, v7}, Lcom/android/phone/SomcTestUI;->setBluetoothView(Z)V

    .line 408
    invoke-direct {p0}, Lcom/android/phone/SomcTestUI;->initRejectMsgList()V

    goto/16 :goto_0

    .line 412
    :pswitch_a
    invoke-direct {p0}, Lcom/android/phone/SomcTestUI;->initComponents()V

    .line 413
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v7, v11, v11, v11}, Lcom/android/phone/CallView;->showSingleCallLayout(ZZZ)V

    .line 414
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v8, "Jan Banan"

    const-string v9, "88888850"

    const-string v10, "Mobile"

    invoke-virtual {v7, v8, v9, v10, v4}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 415
    iget-object v8, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-boolean v7, p0, Lcom/android/phone/SomcTestUI;->mIsShowingLargePhoto:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mLargePhoto:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v8, v7}, Lcom/android/phone/CallView;->setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 416
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-boolean v8, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    invoke-virtual {v7, v8}, Lcom/android/phone/CallView;->setBluetoothHeadsetIsConnected(Z)V

    .line 417
    iget-boolean v7, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    invoke-direct {p0, v7}, Lcom/android/phone/SomcTestUI;->setBluetoothView(Z)V

    goto/16 :goto_0

    .line 415
    :cond_0
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mSmallPhoto:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 421
    :pswitch_b
    invoke-direct {p0}, Lcom/android/phone/SomcTestUI;->initComponents()V

    .line 422
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v7, v11, v12, v12}, Lcom/android/phone/CallView;->showSingleCallLayout(ZZZ)V

    .line 423
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v8, "Emergency number"

    invoke-virtual {v7, v8, v13, v13, v4}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 424
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/android/phone/CallView;->setForegroundCallPhoto(I)V

    .line 425
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-boolean v8, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    invoke-virtual {v7, v8}, Lcom/android/phone/CallView;->setBluetoothHeadsetIsConnected(Z)V

    .line 426
    iget-boolean v7, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    invoke-direct {p0, v7}, Lcom/android/phone/SomcTestUI;->setBluetoothView(Z)V

    goto/16 :goto_0

    .line 430
    :pswitch_c
    invoke-direct {p0}, Lcom/android/phone/SomcTestUI;->initComponents()V

    .line 431
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v7}, Lcom/android/phone/CallView;->showIncomingCallLayout()V

    .line 432
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v8, "Seattle, WA"

    invoke-virtual {v7, v8}, Lcom/android/phone/CallView;->setForegroundCallCityId(Ljava/lang/String;)V

    .line 433
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v8, "Jan Banan"

    const-string v9, "88888850"

    const-string v10, "Mobile"

    invoke-virtual {v7, v8, v9, v10, v4}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 434
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-object v8, p0, Lcom/android/phone/SomcTestUI;->mLargePhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Lcom/android/phone/CallView;->setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 435
    invoke-direct {p0}, Lcom/android/phone/SomcTestUI;->initRejectMsgList()V

    goto/16 :goto_0

    .line 438
    :pswitch_d
    invoke-direct {p0}, Lcom/android/phone/SomcTestUI;->initComponents()V

    .line 439
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v8, ""

    const-string v9, "88888850"

    const-string v10, "Mobile"

    invoke-virtual {v7, v8, v9, v10, v4}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 440
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-object v8, p0, Lcom/android/phone/SomcTestUI;->mLargePhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Lcom/android/phone/CallView;->setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 441
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v7, v12, v13}, Lcom/android/phone/CallView;->showCallEndedInteractionLayout(ZLjava/lang/Object;)V

    goto/16 :goto_0

    .line 444
    :pswitch_e
    invoke-direct {p0}, Lcom/android/phone/SomcTestUI;->initComponents()V

    .line 445
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v8, "Jan Banan"

    const-string v9, "88888850"

    const-string v10, "Mobile"

    invoke-virtual {v7, v8, v9, v10, v4}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 446
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-object v8, p0, Lcom/android/phone/SomcTestUI;->mLargePhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Lcom/android/phone/CallView;->setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 447
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v7, v11, v13}, Lcom/android/phone/CallView;->showCallEndedInteractionLayout(ZLjava/lang/Object;)V

    goto/16 :goto_0

    .line 450
    :pswitch_f
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mMmiCode:Lcom/android/phone/SomcTestUI$TestMmiCode;

    sget-object v8, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v8, v7, Lcom/android/phone/SomcTestUI$TestMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 451
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/SomcTestUI;->mMmiCode:Lcom/android/phone/SomcTestUI$TestMmiCode;

    invoke-static {v13, v7, v8, v13, v13}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 455
    :pswitch_10
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mMmiCode:Lcom/android/phone/SomcTestUI$TestMmiCode;

    sget-object v8, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v8, v7, Lcom/android/phone/SomcTestUI$TestMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 456
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/SomcTestUI;->mPUKEntryActivity:Landroid/app/Activity;

    .line 457
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mPUKEntryActivity:Landroid/app/Activity;

    if-nez v7, :cond_1

    .line 458
    new-instance v6, Landroid/app/Activity;

    invoke-direct {v6}, Landroid/app/Activity;-><init>()V

    .line 459
    .local v6, "testActivity":Landroid/app/Activity;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/phone/PhoneGlobals;->setPukEntryActivity(Landroid/app/Activity;)V

    .line 461
    .end local v6    # "testActivity":Landroid/app/Activity;
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/SomcTestUI;->mMmiCode:Lcom/android/phone/SomcTestUI$TestMmiCode;

    invoke-static {v13, v7, v8, v13, v13}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    .line 463
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/phone/SomcTestUI;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x75

    invoke-static {v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0x2710

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 467
    :pswitch_11
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mMmiCode:Lcom/android/phone/SomcTestUI$TestMmiCode;

    sget-object v8, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v8, v7, Lcom/android/phone/SomcTestUI$TestMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 468
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/SomcTestUI;->mMmiCode:Lcom/android/phone/SomcTestUI$TestMmiCode;

    invoke-static {v13, v7, v8, v13, v13}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 472
    :pswitch_12
    const-string v2, "Test"

    .line 473
    .local v2, "infoMsg":Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/android/phone/CdmaDisplayInfo;->displayInfoRecord(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 476
    .end local v2    # "infoMsg":Ljava/lang/String;
    :pswitch_13
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 477
    .local v5, "sp":Landroid/content/SharedPreferences;
    const-string v7, "network_selection_key"

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/SomcTestUI;->mNetworkSelection:Ljava/lang/String;

    .line 478
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mNetworkSelection:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 479
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 480
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "network_selection_key"

    const-string v8, "test"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 481
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 483
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v7, "codeaurora.intent.action.ACTION_MANAGED_ROAMING_IND"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 485
    iget-object v7, p0, Lcom/android/phone/SomcTestUI;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/phone/SomcTestUI;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x78

    invoke-static {v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 488
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    :pswitch_14
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/phone/IccDepersonalizationPanel;-><init>(Landroid/content/Context;)V

    .line 490
    .local v0, "dpPanel":Lcom/android/phone/IccDepersonalizationPanel;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 290
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 291
    if-ne p1, v2, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 292
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_data"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 294
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 295
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 296
    .local v8, "index":I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 297
    .local v9, "path":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 298
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 299
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    iput-object v7, p0, Lcom/android/phone/SomcTestUI;->mLargePhoto:Landroid/graphics/drawable/Drawable;

    .line 301
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    .end local v8    # "index":I
    .end local v9    # "path":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    new-instance v0, Lcom/android/phone/LargeCallView;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/LargeCallView;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    .line 124
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcTestUI;->mSmallPhoto:Landroid/graphics/drawable/Drawable;

    .line 126
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcTestUI;->mLargePhoto:Landroid/graphics/drawable/Drawable;

    .line 128
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 129
    invoke-direct {p0}, Lcom/android/phone/SomcTestUI;->update()V

    .line 130
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcTestUI;->mcallView:Lcom/android/phone/CallView$CallViewActionListener;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V

    .line 131
    new-instance v0, Lcom/android/phone/SomcTestUI$TestMmiCode;

    invoke-direct {v0}, Lcom/android/phone/SomcTestUI$TestMmiCode;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SomcTestUI;->mMmiCode:Lcom/android/phone/SomcTestUI$TestMmiCode;

    .line 132
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 283
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 284
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/phone/SomcTestUI;->mCurrentState:I

    .line 285
    invoke-direct {p0}, Lcom/android/phone/SomcTestUI;->update()V

    .line 286
    return-void
.end method

.method public showOptionsMenu(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 143
    new-instance v1, Lcom/android/phone/SomcTestUI$2;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcTestUI$2;-><init>(Lcom/android/phone/SomcTestUI;)V

    .line 240
    .local v1, "menuItemClickListener":Landroid/widget/PopupMenu$OnMenuItemClickListener;
    new-instance v2, Landroid/widget/PopupMenu;

    invoke-direct {v2, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/phone/SomcTestUI;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 241
    iget-object v2, p0, Lcom/android/phone/SomcTestUI;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 242
    iget-object v2, p0, Lcom/android/phone/SomcTestUI;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 243
    .local v0, "menu":Landroid/view/Menu;
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 244
    const/4 v2, 0x1

    const-string v3, "One call"

    invoke-interface {v0, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 245
    const/4 v2, 0x6

    const-string v3, "Two call"

    invoke-interface {v0, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 246
    const/4 v2, 0x2

    const-string v3, "Outgoing call"

    invoke-interface {v0, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 247
    const/4 v2, 0x3

    const-string v3, "Incoming call"

    invoke-interface {v0, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 248
    const/4 v2, 0x4

    const-string v3, "Waiting call"

    invoke-interface {v0, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 249
    const/4 v2, 0x5

    const-string v3, "Conference call"

    invoke-interface {v0, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 250
    const/4 v2, 0x7

    const-string v3, "All calls ended"

    invoke-interface {v0, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 251
    const/16 v2, 0x8

    const-string v3, "Held call"

    invoke-interface {v0, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 252
    const/16 v2, 0xd

    const-string v3, "Incoming call 3rd"

    invoke-interface {v0, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 253
    const/16 v2, 0xf

    const-string v3, "Outgoing call Emergency call"

    invoke-interface {v0, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 254
    const/16 v2, 0x10

    const-string v3, "Incoming call City ID"

    invoke-interface {v0, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 255
    const/16 v2, 0x11

    const-string v3, "End call interaction (unsaved in contact) "

    invoke-interface {v0, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 257
    const/16 v2, 0x12

    const-string v3, "End call interaction (saved in contact)"

    invoke-interface {v0, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 259
    iget-boolean v2, p0, Lcom/android/phone/SomcTestUI;->mIsShowingLargePhoto:Z

    if-eqz v2, :cond_0

    .line 260
    const/16 v2, 0xa

    const-string v3, "Small photo"

    invoke-interface {v0, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 265
    :goto_0
    iget-boolean v2, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    if-eqz v2, :cond_1

    .line 266
    const/16 v2, 0xc

    const-string v3, "Disconnect Bluetooth"

    invoke-interface {v0, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 270
    :goto_1
    const/16 v2, 0x13

    const-string v3, "Mmi dialog(state pending)"

    invoke-interface {v0, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 271
    const/16 v2, 0x14

    const-string v3, "Mmi dialog(state complete)"

    invoke-interface {v0, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 272
    const/16 v2, 0x15

    const-string v3, "Mmi dialog(state failed)"

    invoke-interface {v0, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 273
    const/16 v2, 0x16

    const-string v3, "Cdma network message dialog"

    invoke-interface {v0, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 274
    const/16 v2, 0x17

    const-string v3, "Manage roming dialog"

    invoke-interface {v0, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 275
    const/16 v2, 0x18

    const-string v3, "Sim network unlock pin dialog"

    invoke-interface {v0, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 276
    const/16 v2, 0x19

    const-string v3, "Set contact picture"

    invoke-interface {v0, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 278
    iget-object v2, p0, Lcom/android/phone/SomcTestUI;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    .line 279
    return-void

    .line 262
    :cond_0
    const/16 v2, 0x9

    const-string v3, "Large photo"

    invoke-interface {v0, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 268
    :cond_1
    const/16 v2, 0xb

    const-string v3, "Connect Bluetooth"

    invoke-interface {v0, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1
.end method
