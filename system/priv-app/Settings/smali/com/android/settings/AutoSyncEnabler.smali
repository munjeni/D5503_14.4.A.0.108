.class public final Lcom/android/settings/AutoSyncEnabler;
.super Ljava/lang/Object;
.source "AutoSyncEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoSyncSwitch"    # Landroid/widget/Switch;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lcom/android/settings/AutoSyncEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AutoSyncEnabler$1;-><init>(Lcom/android/settings/AutoSyncEnabler;)V

    iput-object v0, p0, Lcom/android/settings/AutoSyncEnabler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    iput-object p1, p0, Lcom/android/settings/AutoSyncEnabler;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/settings/AutoSyncEnabler;->mSwitch:Landroid/widget/Switch;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AutoSyncEnabler;->mValidListener:Z

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AutoSyncEnabler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AutoSyncEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/AutoSyncEnabler;->setChecked(Z)V

    return-void
.end method

.method private setChecked(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/AutoSyncEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 98
    iget-boolean v0, p0, Lcom/android/settings/AutoSyncEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/settings/AutoSyncEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AutoSyncEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 102
    iget-boolean v0, p0, Lcom/android/settings/AutoSyncEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/settings/AutoSyncEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    :cond_1
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .prologue
    .line 84
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 85
    const-string v0, "enabling"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 87
    const-string v0, "com.android.settings"

    const-class v3, Lcom/sonymobile/settings/SomcSyncSettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object v0, p0, Lcom/android/settings/AutoSyncEnabler;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settings/AutoSyncEnabler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 92
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/AutoSyncEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AutoSyncEnabler;->mValidListener:Z

    .line 70
    iget-object v0, p0, Lcom/android/settings/AutoSyncEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/AutoSyncEnabler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 71
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/AutoSyncEnabler;->setChecked(Z)V

    .line 58
    iget-object v1, p0, Lcom/android/settings/AutoSyncEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 59
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/AutoSyncEnabler;->mValidListener:Z

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/android/settings/AutoSyncEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/AutoSyncEnabler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 3
    .param p1, "autoSyncSwitch"    # Landroid/widget/Switch;

    .prologue
    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lcom/android/settings/AutoSyncEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AutoSyncEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    iput-object p1, p0, Lcom/android/settings/AutoSyncEnabler;->mSwitch:Landroid/widget/Switch;

    .line 77
    iget-object v1, p0, Lcom/android/settings/AutoSyncEnabler;->mSwitch:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/android/settings/AutoSyncEnabler;->mValidListener:Z

    if-eqz v2, :cond_1

    move-object v0, p0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 78
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/AutoSyncEnabler;->setChecked(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/AutoSyncEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
