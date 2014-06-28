.class public Lcom/android/mms/dom/smil/SmilPlayer;
.super Ljava/lang/Object;
.source "SmilPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;,
        Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;,
        Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    }
.end annotation


# static fields
.field private static final BACK_SLIDE_TIME:J = 0x5dcL

.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field public static final MEDIA_TIME_UPDATED_EVENT:Ljava/lang/String; = "mediaTimeUpdated"

.field private static final TAG:Ljava/lang/String; = "SmilPlayer"

.field private static final TIMESLICE:I = 0xc8

.field private static final WAIT_TIME:J = 0x1f4L

.field private static sPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

.field private static final sTimelineEntryComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

.field private mActiveElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/ElementTime;",
            ">;"
        }
    .end annotation
.end field

.field private mAllEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mAllEntriesSize:I

.field private mCurrentElement:I

.field private mCurrentSlide:I

.field private mCurrentTime:J

.field private mMediaTimeUpdatedEvent:Lorg/w3c/dom/events/Event;

.field private mPlayerThread:Ljava/lang/Thread;

.field private mRoot:Lorg/w3c/dom/smil/ElementTime;

.field private mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$1;

    invoke-direct {v0}, Lcom/android/mms/dom/smil/SmilPlayer$1;-><init>()V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer;->sTimelineEntryComparator:Ljava/util/Comparator;

    .line 91
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-direct {v0}, Lcom/android/mms/dom/smil/SmilPlayer;-><init>()V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer;->sPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->INITIALIZED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    .line 100
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntriesSize:I

    .line 268
    return-void
.end method

.method private declared-synchronized actionBackSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .locals 12
    .param p1, "currentEntry"    # Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .prologue
    const/4 v7, 0x0

    const-wide v10, 0x408f400000000000L

    .line 696
    monitor-enter p0

    :try_start_0
    sget-object v6, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 697
    const/4 v2, 0x0

    .line 700
    .local v2, "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    iget-object v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    iget v8, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    invoke-virtual {v6}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v8

    mul-double/2addr v8, v10

    double-to-long v0, v8

    .line 702
    .local v0, "begin":J
    iget-wide v8, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    sub-long v4, v8, v0

    .line 709
    .local v4, "passed":J
    invoke-direct {p0, v4, v5}, Lcom/android/mms/dom/smil/SmilPlayer;->isPossibleBackSlide(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    move-object p1, v7

    .line 750
    .end local p1    # "currentEntry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object p1

    .line 713
    .restart local p1    # "currentEntry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_1
    const-wide/16 v8, 0x5dc

    cmp-long v6, v4, v8

    if-lez v6, :cond_2

    if-eqz p1, :cond_2

    .line 717
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/mms/dom/smil/SmilPlayer;->seekEndEntryFromCurrent(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    move-result-object v2

    .line 718
    iget v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 719
    iput-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 721
    if-eqz v2, :cond_0

    move-object p1, v2

    goto :goto_0

    .line 723
    :cond_2
    iget v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_3

    move-object p1, v7

    .line 725
    goto :goto_0

    .line 729
    :cond_3
    iget v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_1
    if-lez v3, :cond_5

    .line 730
    iget-object v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    check-cast v2, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 732
    .restart local v2    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v2}, Lcom/android/mms/dom/smil/SmilPlayer;->isBeginOfSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 737
    invoke-virtual {v2}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v6

    mul-double/2addr v6, v10

    double-to-long v6, v6

    iput-wide v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 740
    if-eqz p1, :cond_4

    .line 742
    invoke-direct {p0, p1}, Lcom/android/mms/dom/smil/SmilPlayer;->seekEndEntryFromCurrent(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    move-result-object v2

    .line 746
    :cond_4
    add-int/lit8 v6, v3, -0x1

    iput v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 750
    :cond_5
    if-eqz v2, :cond_0

    move-object p1, v2

    goto :goto_0

    .line 729
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 696
    .end local v0    # "begin":J
    .end local v2    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .end local v3    # "i":I
    .end local v4    # "passed":J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private declared-synchronized actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .prologue
    .line 589
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 590
    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getAction()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 611
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 596
    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->beginElement()Z

    .line 597
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 589
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 604
    :pswitch_1
    :try_start_2
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->endElement()Z

    .line 605
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 590
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized actionForwardSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .locals 6
    .param p1, "currentEntry"    # Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .prologue
    const/4 v2, 0x0

    .line 657
    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v3, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 658
    const/4 v0, 0x0

    .line 660
    .local v0, "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    iget v3, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    iget v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v3, v4, :cond_1

    .line 677
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 665
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntriesSize:I

    if-ge v1, v3, :cond_2

    .line 666
    iget-object v3, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 668
    .restart local v0    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isBeginOfSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 669
    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    iput-wide v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 677
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/mms/dom/smil/SmilPlayer;->seekEndEntryFromCurrent(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    move-result-object v2

    goto :goto_0

    .line 672
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isEndOfSlideshow(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 665
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 657
    .end local v0    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized actionPause()V
    .locals 1

    .prologue
    .line 623
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->pauseActiveElements()V

    .line 624
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PAUSED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    .line 625
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    monitor-exit p0

    return-void

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized actionReload()V
    .locals 1

    .prologue
    .line 638
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->reloadActiveSlide()V

    .line 639
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    monitor-exit p0

    return-void

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized actionStop()V
    .locals 2

    .prologue
    .line 629
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->endActiveElements()V

    .line 630
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 631
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 632
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 633
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->STOPPED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    .line 634
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    monitor-exit p0

    return-void

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized beginSmilDocument()V
    .locals 3

    .prologue
    .line 464
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 465
    .local v0, "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    monitor-exit p0

    return-void

    .line 464
    .end local v0    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized endActiveElements()V
    .locals 3

    .prologue
    .line 540
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 541
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 546
    .local v0, "element":Lorg/w3c/dom/smil/ElementTime;
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->endElement()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 548
    .end local v0    # "element":Lorg/w3c/dom/smil/ElementTime;
    :cond_0
    monitor-exit p0

    return-void

    .line 540
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized getOffsetTime(Lorg/w3c/dom/smil/ElementTime;)D
    .locals 6
    .param p1, "element"    # Lorg/w3c/dom/smil/ElementTime;

    .prologue
    .line 469
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    if-ge v1, v2, :cond_1

    .line 470
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 471
    .local v0, "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 473
    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    .line 477
    .end local v0    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :goto_1
    monitor-exit p0

    return-wide v2

    .line 469
    .restart local v0    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 477
    .end local v0    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_1
    const-wide/high16 v2, -0x4010000000000000L

    goto :goto_1

    .line 469
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private static getParTimeline(Lorg/w3c/dom/smil/ElementParallelTimeContainer;DD)Ljava/util/ArrayList;
    .locals 23
    .param p0, "par"    # Lorg/w3c/dom/smil/ElementParallelTimeContainer;
    .param p1, "offset"    # D
    .param p3, "maxOffset"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/ElementParallelTimeContainer;",
            "DD)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v19, "timeline":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v16

    .line 117
    .local v16, "myBeginList":Lorg/w3c/dom/smil/TimeList;
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v5

    .line 118
    .local v5, "begin":Lorg/w3c/dom/smil/Time;
    invoke-interface {v5}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v20

    add-double v6, v20, p1

    .line 119
    .local v6, "beginOffset":D
    cmpl-double v20, v6, p3

    if-lez v20, :cond_0

    .line 161
    :goto_0
    return-object v19

    .line 123
    :cond_0
    new-instance v15, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v15, v6, v7, v0, v1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 124
    .local v15, "myBegin":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v18

    .line 131
    .local v18, "myEndList":Lorg/w3c/dom/smil/TimeList;
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v11

    .line 132
    .local v11, "end":Lorg/w3c/dom/smil/Time;
    invoke-interface {v11}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v20

    add-double v12, v20, p1

    .line 133
    .local v12, "endOffset":D
    cmpl-double v20, v12, p3

    if-lez v20, :cond_1

    .line 134
    move-wide/from16 v12, p3

    .line 136
    :cond_1
    new-instance v17, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v12, v13, v1, v2}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 138
    .local v17, "myEnd":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    move-wide/from16 p3, v12

    .line 140
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 141
    .local v10, "children":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    move/from16 v0, v20

    if-ge v14, v0, :cond_2

    .line 142
    invoke-interface {v10, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/smil/ElementTime;

    .line 143
    .local v8, "child":Lorg/w3c/dom/smil/ElementTime;
    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-static {v8, v0, v1, v2, v3}, Lcom/android/mms/dom/smil/SmilPlayer;->getTimeline(Lorg/w3c/dom/smil/ElementTime;DD)Ljava/util/ArrayList;

    move-result-object v9

    .line 144
    .local v9, "childTimeline":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 141
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 147
    .end local v8    # "child":Lorg/w3c/dom/smil/ElementTime;
    .end local v9    # "childTimeline":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    :cond_2
    sget-object v20, Lcom/android/mms/dom/smil/SmilPlayer;->sTimelineEntryComparator:Ljava/util/Comparator;

    invoke-static/range {v19 .. v20}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 150
    sub-double v20, v12, p1

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x447a0000

    mul-float v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 152
    .local v4, "activeChildrenAtEnd":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    :goto_2
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    move/from16 v0, v20

    if-ge v14, v0, :cond_3

    .line 153
    new-instance v21, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    invoke-interface {v4, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/smil/ElementTime;

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-direct {v0, v12, v13, v1, v2}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 159
    :cond_3
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static getPlayer()Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer;->sPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object v0
.end method

.method private static getSeqTimeline(Lorg/w3c/dom/smil/ElementSequentialTimeContainer;DD)Ljava/util/ArrayList;
    .locals 25
    .param p0, "seq"    # Lorg/w3c/dom/smil/ElementSequentialTimeContainer;
    .param p1, "offset"    # D
    .param p3, "maxOffset"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/ElementSequentialTimeContainer;",
            "DD)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v21, "timeline":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    move-wide/from16 v19, p1

    .line 170
    .local v19, "orgOffset":D
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v16

    .line 175
    .local v16, "myBeginList":Lorg/w3c/dom/smil/TimeList;
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v5

    .line 176
    .local v5, "begin":Lorg/w3c/dom/smil/Time;
    invoke-interface {v5}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v22

    add-double v6, v22, p1

    .line 177
    .local v6, "beginOffset":D
    cmpl-double v22, v6, p3

    if-lez v22, :cond_0

    .line 221
    :goto_0
    return-object v21

    .line 181
    :cond_0
    new-instance v15, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v15, v6, v7, v0, v1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 182
    .local v15, "myBegin":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v18

    .line 189
    .local v18, "myEndList":Lorg/w3c/dom/smil/TimeList;
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v11

    .line 190
    .local v11, "end":Lorg/w3c/dom/smil/Time;
    invoke-interface {v11}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v22

    add-double v12, v22, p1

    .line 191
    .local v12, "endOffset":D
    cmpl-double v22, v12, p3

    if-lez v22, :cond_1

    .line 192
    move-wide/from16 v12, p3

    .line 194
    :cond_1
    new-instance v17, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v12, v13, v1, v2}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 196
    .local v17, "myEnd":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    move-wide/from16 p3, v12

    .line 199
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 200
    .local v10, "children":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v14, v0, :cond_2

    .line 201
    invoke-interface {v10, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/smil/ElementTime;

    .line 202
    .local v8, "child":Lorg/w3c/dom/smil/ElementTime;
    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-static {v8, v0, v1, v2, v3}, Lcom/android/mms/dom/smil/SmilPlayer;->getTimeline(Lorg/w3c/dom/smil/ElementTime;DD)Ljava/util/ArrayList;

    move-result-object v9

    .line 203
    .local v9, "childTimeline":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 206
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide p1

    .line 200
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 210
    .end local v8    # "child":Lorg/w3c/dom/smil/ElementTime;
    .end local v9    # "childTimeline":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    :cond_2
    sub-double v22, v12, v19

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 212
    .local v4, "activeChildrenAtEnd":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    :goto_2
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v14, v0, :cond_3

    .line 213
    new-instance v23, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    invoke-interface {v4, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    check-cast v22, Lorg/w3c/dom/smil/ElementTime;

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-direct {v0, v12, v13, v1, v2}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 219
    :cond_3
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private static getTimeline(Lorg/w3c/dom/smil/ElementTime;DD)Ljava/util/ArrayList;
    .locals 13
    .param p0, "element"    # Lorg/w3c/dom/smil/ElementTime;
    .param p1, "offset"    # D
    .param p3, "maxOffset"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/ElementTime;",
            "DD)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    instance-of v11, p0, Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    if-eqz v11, :cond_0

    .line 227
    check-cast p0, Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    .end local p0    # "element":Lorg/w3c/dom/smil/ElementTime;
    invoke-static/range {p0 .. p4}, Lcom/android/mms/dom/smil/SmilPlayer;->getParTimeline(Lorg/w3c/dom/smil/ElementParallelTimeContainer;DD)Ljava/util/ArrayList;

    move-result-object v10

    .line 262
    :goto_0
    return-object v10

    .line 228
    .restart local p0    # "element":Lorg/w3c/dom/smil/ElementTime;
    :cond_0
    instance-of v11, p0, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    if-eqz v11, :cond_1

    .line 229
    check-cast p0, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    .end local p0    # "element":Lorg/w3c/dom/smil/ElementTime;
    invoke-static/range {p0 .. p4}, Lcom/android/mms/dom/smil/SmilPlayer;->getSeqTimeline(Lorg/w3c/dom/smil/ElementSequentialTimeContainer;DD)Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_0

    .line 232
    .restart local p0    # "element":Lorg/w3c/dom/smil/ElementTime;
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v10, "timeline":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementTime;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v1

    .line 235
    .local v1, "beginList":Lorg/w3c/dom/smil/TimeList;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v11

    if-ge v9, v11, :cond_3

    .line 236
    invoke-interface {v1, v9}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v0

    .line 237
    .local v0, "begin":Lorg/w3c/dom/smil/Time;
    invoke-interface {v0}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 238
    invoke-interface {v0}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v11

    add-double v2, v11, p1

    .line 239
    .local v2, "beginOffset":D
    cmpg-double v11, v2, p3

    if-gtz v11, :cond_2

    .line 240
    new-instance v8, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    const/4 v11, 0x0

    invoke-direct {v8, v2, v3, p0, v11}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 242
    .local v8, "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v2    # "beginOffset":D
    .end local v8    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 247
    .end local v0    # "begin":Lorg/w3c/dom/smil/Time;
    :cond_3
    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementTime;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v5

    .line 248
    .local v5, "endList":Lorg/w3c/dom/smil/TimeList;
    const/4 v9, 0x0

    :goto_2
    invoke-interface {v5}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v11

    if-ge v9, v11, :cond_5

    .line 249
    invoke-interface {v5, v9}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v4

    .line 250
    .local v4, "end":Lorg/w3c/dom/smil/Time;
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 251
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v11

    add-double v6, v11, p1

    .line 252
    .local v6, "endOffset":D
    cmpg-double v11, v6, p3

    if-gtz v11, :cond_4

    .line 253
    new-instance v8, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    const/4 v11, 0x1

    invoke-direct {v8, v6, v7, p0, v11}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 255
    .restart local v8    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v6    # "endOffset":D
    .end local v8    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 260
    .end local v4    # "end":Lorg/w3c/dom/smil/Time;
    :cond_5
    sget-object v11, Lcom/android/mms/dom/smil/SmilPlayer;->sTimelineEntryComparator:Ljava/util/Comparator;

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private declared-synchronized isBackSlideAction()Z
    .locals 2

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->BACK:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isBeginOfSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z
    .locals 2
    .param p1, "entry"    # Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .prologue
    const/4 v0, 0x0

    .line 416
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 417
    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v1

    instance-of v1, v1, Lcom/android/mms/dom/smil/SmilParElementImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 420
    :cond_0
    monitor-exit p0

    return v0

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isEndOfSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z
    .locals 3
    .param p1, "entry"    # Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 430
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 431
    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getAction()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v2

    instance-of v2, v2, Lcom/android/mms/dom/smil/SmilParElementImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 434
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    move v0, v1

    .line 431
    goto :goto_0

    :cond_1
    move v0, v1

    .line 434
    goto :goto_0

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isEndOfSlideshow(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z
    .locals 3
    .param p1, "entry"    # Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 444
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 445
    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getAction()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v2

    instance-of v2, v2, Lcom/android/mms/dom/smil/SmilDocumentImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 448
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    move v0, v1

    .line 445
    goto :goto_0

    :cond_1
    move v0, v1

    .line 448
    goto :goto_0

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isForwardSlideAction()Z
    .locals 2

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->FORWARD:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isPauseAction()Z
    .locals 2

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isPossibleBackSlide(J)Z
    .locals 5
    .param p1, "passed"    # J

    .prologue
    const-wide/16 v3, 0x1f4

    .line 796
    const/4 v0, 0x1

    .line 798
    .local v0, "bRet":Z
    cmp-long v2, p1, v3

    if-gez v2, :cond_0

    .line 799
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 801
    sub-long v2, v3, p1

    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :cond_0
    :goto_0
    return v0

    .line 803
    :catch_0
    move-exception v1

    .line 804
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "SmilPlayer"

    const-string v3, "Unexpected InterruptedException."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 807
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized isReloadAction()Z
    .locals 2

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->RELOAD:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isStartAction()Z
    .locals 2

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->START:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isStopAction()Z
    .locals 2

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->STOP:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized pauseActiveElements()V
    .locals 3

    .prologue
    .line 551
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 552
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 557
    .local v0, "element":Lorg/w3c/dom/smil/ElementTime;
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->pauseElement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 559
    .end local v0    # "element":Lorg/w3c/dom/smil/ElementTime;
    :cond_0
    monitor-exit p0

    return-void

    .line 551
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized reloadActiveSlide()V
    .locals 3

    .prologue
    .line 453
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 454
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->beginSmilDocument()V

    .line 456
    iget v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    if-ge v1, v2, :cond_0

    .line 457
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 458
    .local v0, "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 460
    .end local v0    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->seekActiveMedia()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    monitor-exit p0

    return-void

    .line 453
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized reloadCurrentEntry()Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .locals 2

    .prologue
    .line 615
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 616
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resumeActiveElements()V
    .locals 4

    .prologue
    .line 562
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 563
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 564
    iget-object v3, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 569
    .local v0, "element":Lorg/w3c/dom/smil/ElementTime;
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->resumeElement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 571
    .end local v0    # "element":Lorg/w3c/dom/smil/ElementTime;
    :cond_0
    monitor-exit p0

    return-void

    .line 562
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized seekActiveMedia()V
    .locals 6

    .prologue
    .line 481
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 482
    iget-object v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 483
    .local v0, "element":Lorg/w3c/dom/smil/ElementTime;
    instance-of v4, v0, Lcom/android/mms/dom/smil/SmilParElementImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 495
    .end local v0    # "element":Lorg/w3c/dom/smil/ElementTime;
    :cond_0
    monitor-exit p0

    return-void

    .line 486
    .restart local v0    # "element":Lorg/w3c/dom/smil/ElementTime;
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->getOffsetTime(Lorg/w3c/dom/smil/ElementTime;)D

    move-result-wide v2

    .line 487
    .local v2, "offset":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_2

    iget-wide v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    long-to-double v4, v4

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_2

    .line 492
    iget-wide v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    long-to-double v4, v4

    sub-double/2addr v4, v2

    double-to-float v4, v4

    invoke-interface {v0, v4}, Lorg/w3c/dom/smil/ElementTime;->seekElement(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0    # "element":Lorg/w3c/dom/smil/ElementTime;
    .end local v1    # "i":I
    .end local v2    # "offset":D
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private seekEndEntryFromCurrent(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .locals 3
    .param p1, "currentEntry"    # Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .prologue
    .line 765
    invoke-direct {p0, p1}, Lcom/android/mms/dom/smil/SmilPlayer;->isEndOfSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 767
    invoke-direct {p0, p1}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 768
    iget v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 770
    const/4 v0, 0x0

    .line 773
    .local v0, "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    iget v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntriesSize:I

    if-ge v1, v2, :cond_1

    .line 774
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 776
    .restart local v0    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isEndOfSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 778
    iput v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 787
    .end local v0    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .end local v1    # "i":I
    :goto_1
    return-object v0

    .line 783
    .restart local v0    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .restart local v1    # "i":I
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 773
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 787
    .end local v0    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private declared-synchronized waitForEntry(J)V
    .locals 10
    .param p1, "interval"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0xc8

    .line 503
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 505
    .local v0, "overhead":J
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-lez v6, :cond_0

    .line 506
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStopAction()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isReloadAction()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPauseAction()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isForwardSlideAction()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isBackSlideAction()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 526
    :cond_0
    monitor-exit p0

    return-void

    .line 511
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 512
    .local v4, "startAt":J
    const-wide/16 v6, 0xc8

    invoke-static {p1, p2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 513
    .local v2, "sleep":J
    cmp-long v6, v0, v2

    if-gez v6, :cond_2

    .line 514
    sub-long v6, v2, v0

    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 515
    iget-wide v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 521
    :goto_1
    iget-object v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mRoot:Lorg/w3c/dom/smil/ElementTime;

    check-cast v6, Lorg/w3c/dom/events/EventTarget;

    iget-object v7, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mMediaTimeUpdatedEvent:Lorg/w3c/dom/events/Event;

    invoke-interface {v6, v7}, Lorg/w3c/dom/events/EventTarget;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 523
    sub-long/2addr p1, v8

    .line 524
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    sub-long v0, v6, v2

    .line 525
    goto :goto_0

    .line 517
    :cond_2
    const-wide/16 v2, 0x0

    .line 518
    iget-wide v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 503
    .end local v2    # "sleep":J
    .end local v4    # "startAt":J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private declared-synchronized waitForWakeUp()V
    .locals 3

    .prologue
    .line 575
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStartAction()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStopAction()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isReloadAction()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isForwardSlideAction()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isBackSlideAction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 577
    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "SmilPlayer"

    const-string v2, "Unexpected InterruptedException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 579
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStartAction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 581
    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYING:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 575
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized backSlide()V
    .locals 1

    .prologue
    .line 411
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->BACK:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 412
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    monitor-exit p0

    return-void

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized forwardSlide()V
    .locals 1

    .prologue
    .line 396
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    :goto_0
    monitor-exit p0

    return-void

    .line 399
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->FORWARD:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 400
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentPosition()I
    .locals 2

    .prologue
    .line 536
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDuration()I
    .locals 2

    .prologue
    .line 529
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    # getter for: Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mOffsetTime:D
    invoke-static {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->access$000(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 532
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 529
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Lorg/w3c/dom/smil/ElementTime;)V
    .locals 5
    .param p1, "root"    # Lorg/w3c/dom/smil/ElementTime;

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mRoot:Lorg/w3c/dom/smil/ElementTime;

    .line 324
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mRoot:Lorg/w3c/dom/smil/ElementTime;

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x43e0000000000000L

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/dom/smil/SmilPlayer;->getTimeline(Lorg/w3c/dom/smil/ElementTime;DD)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    .line 326
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntriesSize:I

    .line 328
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mRoot:Lorg/w3c/dom/smil/ElementTime;

    check-cast v0, Lorg/w3c/dom/events/DocumentEvent;

    const-string v1, "Event"

    invoke-interface {v0, v1}, Lorg/w3c/dom/events/DocumentEvent;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mMediaTimeUpdatedEvent:Lorg/w3c/dom/events/Event;

    .line 329
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mMediaTimeUpdatedEvent:Lorg/w3c/dom/events/Event;

    const-string v1, "mediaTimeUpdated"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lorg/w3c/dom/events/Event;->initEvent(Ljava/lang/String;ZZ)V

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    monitor-exit p0

    return-void

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPausedState()Z
    .locals 2

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PAUSED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPlayedState()Z
    .locals 2

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPlayingState()Z
    .locals 2

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYING:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isStoppedState()Z
    .locals 2

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->STOPPED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 2

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 349
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    :goto_0
    monitor-exit p0

    return-void

    .line 351
    :cond_0
    :try_start_1
    const-string v0, "SmilPlayer"

    const-string v1, "Error State: Playback is not playing!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized play()V
    .locals 2

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 336
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 337
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 338
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mPlayerThread:Ljava/lang/Thread;

    .line 339
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYING:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    .line 340
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mPlayerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    :goto_0
    monitor-exit p0

    return-void

    .line 342
    :cond_0
    :try_start_1
    const-string v0, "SmilPlayer"

    const-string v1, "Error State: Playback is playing!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reload()V
    .locals 1

    .prologue
    .line 381
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 382
    :cond_0
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->RELOAD:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 383
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 384
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionReload()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 10

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStoppedState()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 902
    :goto_0
    return-void

    .line 823
    :cond_0
    monitor-enter p0

    .line 824
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 825
    .local v4, "size":I
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    :goto_1
    iget v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    if-ge v6, v4, :cond_d

    .line 826
    iget-object v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 827
    .local v1, "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilPlayer;->isBeginOfSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 828
    iget v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    iput v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 830
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L

    mul-double/2addr v6, v8

    double-to-long v2, v6

    .line 836
    .local v2, "offset":J
    :cond_2
    :goto_2
    iget-wide v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v6, v2, v6

    if-lez v6, :cond_c

    .line 838
    :try_start_1
    iget-wide v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    sub-long v6, v2, v6

    invoke-direct {p0, v6, v7}, Lcom/android/mms/dom/smil/SmilPlayer;->waitForEntry(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 844
    :cond_3
    :goto_3
    :try_start_2
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPauseAction()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStopAction()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isReloadAction()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isForwardSlideAction()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isBackSlideAction()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 845
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPauseAction()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 846
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionPause()V

    .line 847
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->waitForWakeUp()V

    .line 850
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStopAction()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 851
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionStop()V

    .line 852
    monitor-exit p0

    goto :goto_0

    .line 901
    .end local v1    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .end local v2    # "offset":J
    .end local v4    # "size":I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 839
    .restart local v1    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .restart local v2    # "offset":J
    .restart local v4    # "size":I
    :catch_0
    move-exception v0

    .line 840
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v6, "SmilPlayer"

    const-string v7, "Unexpected InterruptedException."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 855
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_6
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isReloadAction()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 856
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionReload()V

    .line 857
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->reloadCurrentEntry()Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    move-result-object v1

    .line 858
    if-nez v1, :cond_7

    .line 859
    monitor-exit p0

    goto/16 :goto_0

    .line 862
    :cond_7
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isForwardSlideAction()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 863
    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilPlayer;->actionForwardSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    move-result-object v5

    .line 864
    .local v5, "tle":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    if-eqz v5, :cond_8

    .line 865
    move-object v1, v5

    .line 866
    iget-wide v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 868
    :cond_8
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 869
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->reload()V

    .line 870
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->waitForWakeUp()V

    goto :goto_2

    .line 875
    .end local v5    # "tle":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_9
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isBackSlideAction()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 876
    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilPlayer;->actionBackSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    move-result-object v5

    .line 877
    .restart local v5    # "tle":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    if-eqz v5, :cond_a

    .line 878
    move-object v1, v5

    .line 879
    iget-wide v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 881
    :cond_a
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 882
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->reload()V

    .line 883
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->waitForWakeUp()V

    goto/16 :goto_2

    .line 888
    .end local v5    # "tle":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_b
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 889
    sget-object v6, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    goto/16 :goto_3

    .line 893
    :cond_c
    iput-wide v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 894
    invoke-direct {p0, v1}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 825
    iget v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    goto/16 :goto_1

    .line 897
    .end local v1    # "entry":Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .end local v2    # "offset":J
    :cond_d
    sget-object v6, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    .line 901
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->resumeActiveElements()V

    .line 358
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->START:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 359
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :goto_0
    monitor-exit p0

    return-void

    .line 360
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 363
    :cond_1
    :try_start_2
    const-string v0, "SmilPlayer"

    const-string v1, "Error State: Playback can not be started!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 368
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    :cond_0
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->STOP:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 370
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 371
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopWhenReload()V
    .locals 1

    .prologue
    .line 377
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->endActiveElements()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    monitor-exit p0

    return-void

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
