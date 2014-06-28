.class public Lcom/android/settings/MediaFormat;
.super Landroid/app/Activity;
.source "MediaFormat.java"


# instance fields
.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mStorageInfo:Lcom/android/settings/StorageInfo;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 63
    new-instance v0, Lcom/android/settings/MediaFormat$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MediaFormat$1;-><init>(Lcom/android/settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 115
    new-instance v0, Lcom/android/settings/MediaFormat$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MediaFormat$2;-><init>(Lcom/android/settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MediaFormat;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MediaFormat;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/MediaFormat;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/MediaFormat;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MediaFormat;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 4

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04004a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 129
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    const v2, 0x7f0800c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    .line 131
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    const v2, 0x7f0800c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 135
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mStorageInfo:Lcom/android/settings/StorageInfo;

    invoke-virtual {v1}, Lcom/android/settings/StorageInfo;->getMediaFormatFinalText()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 136
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mStorageInfo:Lcom/android/settings/StorageInfo;

    invoke-virtual {v1}, Lcom/android/settings/StorageInfo;->getMediaFormatTitle()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 138
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 139
    return-void
.end method

.method private establishInitialState()V
    .locals 4

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04004b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 156
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    const v2, 0x7f0800ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    .line 158
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    const v2, 0x7f0800c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 162
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mStorageInfo:Lcom/android/settings/StorageInfo;

    invoke-virtual {v1}, Lcom/android/settings/StorageInfo;->getMediaFormatPrimaryText()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 163
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/MediaFormat;->mStorageInfo:Lcom/android/settings/StorageInfo;

    invoke-virtual {v2}, Lcom/android/settings/StorageInfo;->getMediaFormatButton()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 164
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mStorageInfo:Lcom/android/settings/StorageInfo;

    invoke-virtual {v1}, Lcom/android/settings/StorageInfo;->getMediaFormatTitle()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 166
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 167
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .param p1, "request"    # I

    .prologue
    .line 85
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0b0440

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MediaFormat;->mStorageInfo:Lcom/android/settings/StorageInfo;

    invoke-virtual {v2}, Lcom/android/settings/StorageInfo;->getGeExplanation()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 93
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 95
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 102
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishFinalConfirmationState()V

    goto :goto_0

    .line 103
    :cond_1
    if-nez p2, :cond_2

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 106
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 173
    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 174
    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 175
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    .line 177
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "storage_volume"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 180
    .local v1, "storageVolume":Landroid/os/storage/StorageVolume;
    iget-object v2, p0, Lcom/android/settings/MediaFormat;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v2, :cond_0

    .line 181
    const-string v2, "storage"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, Lcom/android/settings/MediaFormat;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 184
    :cond_0
    if-nez v1, :cond_1

    .line 186
    .local v0, "mountPoint":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/settings/MediaFormat;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {v2, v0}, Lcom/android/settings/StorageInfo;->getStorageInfo(Landroid/os/storage/StorageManager;Ljava/lang/String;)Lcom/android/settings/StorageInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/MediaFormat;->mStorageInfo:Lcom/android/settings/StorageInfo;

    .line 188
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishInitialState()V

    .line 189
    return-void

    .line 184
    .end local v0    # "mountPoint":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 199
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishInitialState()V

    .line 202
    :cond_0
    return-void
.end method
