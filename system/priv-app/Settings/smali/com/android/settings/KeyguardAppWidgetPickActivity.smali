.class public Lcom/android/settings/KeyguardAppWidgetPickActivity;
.super Landroid/app/Activity;
.source "KeyguardAppWidgetPickActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings/AppWidgetLoader$ItemConstructor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;,
        Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/android/settings/AppWidgetLoader$ItemConstructor",
        "<",
        "Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;",
        ">;"
    }
.end annotation


# instance fields
.field private mAddingToKeyguard:Z

.field private mAppWidgetAdapter:Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

.field private mAppWidgetId:I

.field private mAppWidgetLoader:Lcom/android/settings/AppWidgetLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/AppWidgetLoader",
            "<",
            "Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mExtraConfigureOptions:Landroid/os/Bundle;

.field private mGridView:Landroid/widget/GridView;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResultData:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAddingToKeyguard:Z

    .line 446
    return-void
.end method

.method private finishDelayedAndShowLockScreen(I)V
    .locals 10
    .param p1, "appWidgetId"    # I

    .prologue
    .line 597
    const-string v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 598
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 599
    .local v3, "iWm":Landroid/view/IWindowManager;
    const/4 v4, 0x0

    .line 600
    .local v4, "opts":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 601
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "opts":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 602
    .restart local v4    # "opts":Landroid/os/Bundle;
    const-string v6, "showappwidget"

    invoke-virtual {v4, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 605
    :cond_0
    :try_start_0
    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    :goto_0
    const v6, 0x7f080062

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 611
    .local v5, "root":Landroid/view/ViewGroup;
    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 613
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 614
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 615
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 614
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 617
    :cond_1
    iget-object v6, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mGridView:Landroid/widget/GridView;

    new-instance v7, Lcom/android/settings/KeyguardAppWidgetPickActivity$1;

    invoke-direct {v7, p0}, Lcom/android/settings/KeyguardAppWidgetPickActivity$1;-><init>(Lcom/android/settings/KeyguardAppWidgetPickActivity;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 622
    return-void

    .line 606
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v5    # "root":Landroid/view/ViewGroup;
    :catch_0
    move-exception v6

    goto :goto_0
.end method


# virtual methods
.method public createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 435
    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 437
    .local v1, "label":Ljava/lang/CharSequence;
    new-instance v0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;

    invoke-direct {v0, p1, v1}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 438
    .local v0, "item":Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;
    iget v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iput v2, v0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->appWidgetPreviewId:I

    .line 439
    iget v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    iput v2, v0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->iconId:I

    .line 440
    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->packageName:Ljava/lang/String;

    .line 441
    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->className:Ljava/lang/String;

    .line 442
    iput-object p3, v0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->extras:Landroid/os/Bundle;

    .line 443
    return-object v0
.end method

.method public bridge synthetic createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p3, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v9, 0x7e

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/16 v6, 0x7f

    .line 555
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 556
    if-eq p1, v9, :cond_0

    if-ne p1, v6, :cond_1

    .line 558
    :cond_0
    if-nez p3, :cond_2

    .line 559
    const/4 v1, 0x0

    .line 564
    .local v1, "appWidgetId":I
    :goto_0
    if-ne p1, v9, :cond_4

    if-ne p2, v7, :cond_4

    .line 565
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 567
    .local v2, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    const/4 v0, 0x0

    .line 568
    .local v0, "appWidget":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 570
    iget-object v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v5, :cond_3

    .line 572
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 573
    .local v3, "intent":Landroid/content/Intent;
    iget-object v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 574
    const/high16 v5, 0x800000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 575
    const-string v5, "appWidgetId"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 577
    invoke-virtual {p0, v3, v6}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 594
    .end local v0    # "appWidget":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v1    # "appWidgetId":I
    .end local v2    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 561
    :cond_2
    const-string v5, "appWidgetId"

    invoke-virtual {p3, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "appWidgetId":I
    goto :goto_0

    .line 580
    .restart local v0    # "appWidget":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v2    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    :cond_3
    invoke-virtual {p0, v6, v7, p3}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    .line 582
    .end local v0    # "appWidget":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v2    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    :cond_4
    if-ne p1, v6, :cond_5

    if-ne p2, v7, :cond_5

    .line 583
    iget-object v5, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v1, v8}, Lcom/android/internal/widget/LockPatternUtils;->addAppWidget(II)Z

    .line 584
    invoke-direct {p0, v1}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->finishDelayedAndShowLockScreen(I)V

    goto :goto_1

    .line 586
    :cond_5
    iget-boolean v5, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAddingToKeyguard:Z

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    if-eqz v5, :cond_6

    .line 588
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 589
    .local v4, "userId":I
    iget v5, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    invoke-static {v5, v4}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetIdForSystem(II)V

    .line 591
    .end local v4    # "userId":I
    :cond_6
    invoke-direct {p0, v8}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->finishDelayedAndShowLockScreen(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x200

    invoke-virtual {v3, v4}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 95
    const v3, 0x7f04003f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const/4 v3, 0x0

    invoke-virtual {p0, v5, v3}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 103
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "appWidgetId"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    const-string v3, "appWidgetId"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    .line 109
    :goto_0
    const-string v3, "appWidgetOptions"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mExtraConfigureOptions:Landroid/os/Bundle;

    .line 111
    const v3, 0x7f0800b2

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mGridView:Landroid/widget/GridView;

    .line 112
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 113
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 114
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 117
    .local v2, "maxGridWidth":I
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v2, v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 120
    :cond_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 121
    new-instance v3, Lcom/android/settings/AppWidgetLoader;

    iget-object v4, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-direct {v3, p0, v4, p0}, Lcom/android/settings/AppWidgetLoader;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lcom/android/settings/AppWidgetLoader$ItemConstructor;)V

    iput-object v3, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetLoader:Lcom/android/settings/AppWidgetLoader;

    .line 122
    iget-object v3, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetLoader:Lcom/android/settings/AppWidgetLoader;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/AppWidgetLoader;->getItems(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mItems:Ljava/util/List;

    .line 123
    new-instance v3, Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

    iget-object v4, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mItems:Ljava/util/List;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetAdapter:Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

    .line 124
    iget-object v3, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mGridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetAdapter:Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    iget-object v3, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 127
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 128
    return-void

    .line 107
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "maxGridWidth":I
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetAdapter:Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetAdapter:Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

    invoke-virtual {v0}, Lcom/android/settings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;->cancelAllWidgetPreviewLoaders()V

    .line 550
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 551
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;
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
    .line 508
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mItems:Ljava/util/List;

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;

    .line 509
    .local v3, "item":Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;
    invoke-virtual {v3}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 512
    .local v2, "intent":Landroid/content/Intent;
    iget-object v6, v3, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->extras:Landroid/os/Bundle;

    if-eqz v6, :cond_0

    .line 515
    const/4 v4, -0x1

    .line 516
    .local v4, "result":I
    invoke-virtual {p0, v4, v2}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    .line 539
    :goto_0
    iget-boolean v6, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAddingToKeyguard:Z

    if-eqz v6, :cond_2

    .line 540
    const/16 v6, 0x7e

    iget-object v7, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mResultData:Landroid/content/Intent;

    invoke-virtual {p0, v6, v4, v7}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 544
    :goto_1
    return-void

    .line 519
    .end local v4    # "result":I
    :cond_0
    :try_start_0
    iget-boolean v6, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAddingToKeyguard:Z

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    if-nez v6, :cond_1

    .line 521
    const v0, 0x4b455947

    .line 522
    .local v0, "KEYGUARD_HOST_ID":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 523
    .local v5, "userId":I
    const v6, 0x4b455947

    const-string v7, "com.android.keyguard"

    invoke-static {v6, v5, v7}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetIdForPackage(IILjava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    .line 526
    .end local v0    # "KEYGUARD_HOST_ID":I
    .end local v5    # "userId":I
    :cond_1
    iget-object v6, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v7, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mExtraConfigureOptions:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v8, v9}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    const/4 v4, -0x1

    .line 537
    .restart local v4    # "result":I
    :goto_2
    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lcom/android/settings/KeyguardAppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    goto :goto_0

    .line 529
    .end local v4    # "result":I
    :catch_0
    move-exception v1

    .line 535
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x0

    .restart local v4    # "result":I
    goto :goto_2

    .line 542
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method setResultData(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 136
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 137
    .local v0, "result":Landroid/content/Intent;
    :goto_0
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    iput-object v0, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity;->mResultData:Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 140
    return-void

    .line 136
    .end local v0    # "result":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    goto :goto_0
.end method

.method startActivityForResultSafely(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    const v2, 0x7f0b04b9

    const/4 v1, 0x0

    .line 626
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 633
    :goto_0
    return-void

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 629
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 631
    const-string v1, "KeyguardAppWidgetPickActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
