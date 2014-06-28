.class public Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;
.super Ljava/lang/Object;
.source "BatteryThresholdHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;
    }
.end annotation


# instance fields
.field private mActivation:Landroid/view/View;

.field private mActivationDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mDataProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataProvider"    # Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "state"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mDataProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    .line 50
    iput-object p3, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mActivation:Landroid/view/View;

    .line 54
    if-eqz p4, :cond_0

    const-string v0, "key_dialog_state"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "key_dialog_state"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->show(Landroid/os/Bundle;)V

    .line 58
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->updateTextViewWithProgress(Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;)Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mDataProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mActivationDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private updateTextViewWithProgress(Landroid/widget/TextView;I)V
    .locals 6
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "progress"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x64

    add-int/lit8 v5, p2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    return-void
.end method


# virtual methods
.method public onDetach()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mActivationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mActivationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mActivationDialog:Landroid/app/AlertDialog;

    .line 146
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mActivationDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mActivationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 151
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "key_dialog_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 153
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public show(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    iget-object v8, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 62
    .local v2, "li":Landroid/view/LayoutInflater;
    const v8, 0x7f040089

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 63
    .local v1, "contentView":Landroid/view/View;
    const v8, 0x7f080163

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 64
    .local v7, "tv":Landroid/widget/TextView;
    const v8, 0x7f080164

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    .line 67
    .local v5, "sb":Landroid/widget/SeekBar;
    iget-object v8, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mDataProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    invoke-interface {v8}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;->getValue()I

    move-result v6

    .line 68
    .local v6, "threshold":I
    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 69
    invoke-direct {p0, v7, v6}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->updateTextViewWithProgress(Landroid/widget/TextView;I)V

    .line 71
    new-instance v8, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$1;

    invoke-direct {v8, p0, v7}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$1;-><init>(Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;Landroid/widget/TextView;)V

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 87
    new-instance v3, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$2;

    invoke-direct {v3, p0, v5}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$2;-><init>(Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;Landroid/widget/SeekBar;)V

    .line 101
    .local v3, "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$3;

    invoke-direct {v4, p0}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$3;-><init>(Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;)V

    .line 109
    .local v4, "onDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v8, 0x7f0b0009

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x104000a

    invoke-virtual {v8, v9, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/high16 v9, 0x1040000

    invoke-virtual {v8, v9, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mActivationDialog:Landroid/app/AlertDialog;

    .line 114
    iget-object v8, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mActivationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 115
    if-eqz p1, :cond_0

    .line 116
    iget-object v8, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mActivationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 118
    :cond_0
    iget-object v8, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mActivationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 119
    return-void
.end method

.method public updateView(I)V
    .locals 6
    .param p1, "level"    # I

    .prologue
    .line 129
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mActivation:Landroid/view/View;

    const v2, 0x7f080171

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 131
    .local v0, "tv":Landroid/widget/TextView;
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 132
    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 139
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
