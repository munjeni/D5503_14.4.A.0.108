.class final Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;
.super Landroid/content/AsyncTaskLoader;
.source "PrintSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrintJobsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/print/PrintJobInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

.field private mPrintJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrintManager:Landroid/print/PrintManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 457
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobs:Ljava/util/List;

    .line 458
    const-string v0, "print"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintManager:Landroid/print/PrintManager;

    .line 461
    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;

    .prologue
    .line 444
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->onForceLoad()V

    return-void
.end method

.method private static shouldShowToUser(Landroid/print/PrintJobInfo;)Z
    .locals 1
    .param p0, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 540
    invoke-virtual {p0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 548
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 545
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 444
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 465
    .local p1, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-virtual {p0}, Landroid/content/Loader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    invoke-super {p0, p1}, Landroid/content/Loader;->deliverResult(Ljava/lang/Object;)V

    .line 468
    :cond_0
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    const/4 v3, 0x0

    .line 525
    .local v3, "printJobInfos":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    iget-object v5, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v5}, Landroid/print/PrintManager;->getPrintJobs()Ljava/util/List;

    move-result-object v4

    .line 526
    .local v4, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJob;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 527
    .local v2, "printJobCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 528
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrintJob;

    invoke-virtual {v5}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v1

    .line 529
    .local v1, "printJob":Landroid/print/PrintJobInfo;
    invoke-static {v1}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->shouldShowToUser(Landroid/print/PrintJobInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 530
    if-nez v3, :cond_0

    .line 531
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "printJobInfos":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .restart local v3    # "printJobInfos":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 536
    .end local v1    # "printJob":Landroid/print/PrintJobInfo;
    :cond_2
    return-object v3
.end method

.method protected onReset()V
    .locals 2

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->onStopLoading()V

    .line 513
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 515
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->removePrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 518
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    .line 520
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobs:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->deliverResult(Ljava/util/List;)V

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    if-nez v0, :cond_1

    .line 481
    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader$1;

    invoke-direct {v0, p0}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader$1;-><init>(Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    .line 487
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->addPrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->mPrintJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 492
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->onForceLoad()V

    .line 494
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 502
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->onCancelLoad()Z

    .line 503
    return-void
.end method
