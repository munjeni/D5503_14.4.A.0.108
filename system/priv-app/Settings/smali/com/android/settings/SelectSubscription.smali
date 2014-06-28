.class public Lcom/android/settings/SelectSubscription;
.super Landroid/app/TabActivity;
.source "SelectSubscription.java"


# instance fields
.field private subscriptionPref:Landroid/widget/TabHost$TabSpec;

.field private tabLabel:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SUB 1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SUB 2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SUB 3"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/SelectSubscription;->tabLabel:[Ljava/lang/String;

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 93
    const-string v0, "SelectSubscription"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const-string v6, "Creating activity"

    invoke-static {v6}, Lcom/android/settings/SelectSubscription;->log(Ljava/lang/String;)V

    .line 67
    const v6, 0x7f040081

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Landroid/app/TabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v4

    .line 71
    .local v4, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 72
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "PACKAGE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "pkg":Ljava/lang/String;
    const-string v6, "TARGET_CLASS"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "targetClass":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    .line 77
    .local v2, "numPhones":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 78
    iget-object v6, p0, Lcom/android/settings/SelectSubscription;->tabLabel:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    .line 79
    iget-object v6, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    iget-object v7, p0, Lcom/android/settings/SelectSubscription;->tabLabel:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 80
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v6, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "subscription"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 82
    iget-object v6, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v6, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 83
    iget-object v6, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v4, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 56
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 90
    return-void
.end method
