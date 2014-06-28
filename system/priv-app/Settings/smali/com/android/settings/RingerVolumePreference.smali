.class public Lcom/android/settings/RingerVolumePreference;
.super Landroid/preference/VolumePreference;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/RingerVolumePreference$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKBOX_VIEW_ID:[I

.field private static final SEEKBAR_ID:[I

.field private static final SEEKBAR_SECTION_ID:[I

.field private static final SEEKBAR_TYPE:[I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCheckBoxes:[Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

.field private mSeekBars:[Landroid/widget/SeekBar;

.field private mSeekbarMuted:Landroid/content/res/TypedArray;

.field private mSeekbarUnmuted:Landroid/content/res/TypedArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 67
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    .line 74
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    .line 81
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    .line 91
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_SECTION_ID:[I

    return-void

    .line 67
    :array_0
    .array-data 4
        0x7f0800e8
        0x7f0800ec
        0x7f0800f0
        0x7f0800f3
    .end array-data

    .line 74
    :array_1
    .array-data 4
        0x3
        0x2
        0x5
        0x4
    .end array-data

    .line 81
    :array_2
    .array-data 4
        0x7f0800e7
        0x7f0800eb
        0x7f0800ef
        0x7f0800f2
    .end array-data

    .line 91
    :array_3
    .array-data 4
        0x7f0800e6
        0x7f0800e9
        0x7f0800ed
        0x7f0800f1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekbarMuted:Landroid/content/res/TypedArray;

    .line 99
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekbarUnmuted:Landroid/content/res/TypedArray;

    .line 102
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekbarMuted:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    .line 103
    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    .line 105
    new-instance v0, Lcom/android/settings/RingerVolumePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/RingerVolumePreference$1;-><init>(Lcom/android/settings/RingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mHandler:Landroid/os/Handler;

    .line 155
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/preference/VolumePreference;->setStreamType(I)V

    .line 157
    const v0, 0x7f04005e

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogLayoutResource(I)V

    .line 160
    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/preference/VolumePreference$SeekBarVolumizer;

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .line 162
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/RingerVolumePreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/RingerVolumePreference;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/RingerVolumePreference;->updateSlidersAndMutedStates()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/RingerVolumePreference;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RingerVolumePreference;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    return-object v0
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 284
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 285
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 286
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 287
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 291
    :cond_0
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stop()V

    .line 292
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aput-object v4, v2, v1

    .line 284
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    :cond_2
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_3

    .line 296
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 297
    iput-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 299
    :cond_3
    return-void
.end method

.method private getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private updateSlidersAndMutedStates()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mSeekbarMuted:Landroid/content/res/TypedArray;

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 119
    sget-object v4, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v2, v4, v0

    .line 120
    .local v2, "streamType":I
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 122
    .local v1, "muted":Z
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    .line 123
    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    const/4 v4, 0x5

    if-ne v2, v4, :cond_3

    :cond_0
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 126
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    const v5, 0x7f0200ff

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    if-eqz v4, :cond_2

    .line 134
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 135
    .local v3, "volume":I
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 136
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v4

    if-eq v2, v4, :cond_5

    if-eqz v1, :cond_5

    .line 137
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 118
    .end local v3    # "volume":I
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_3
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v5, v4, v0

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mSeekbarMuted:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mSeekbarUnmuted:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_3

    .line 139
    .restart local v3    # "volume":I
    :cond_5
    iget-object v4, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    .line 143
    .end local v1    # "muted":Z
    .end local v2    # "streamType":I
    .end local v3    # "volume":I
    :cond_6
    return-void
.end method


# virtual methods
.method public createActionButtons()V
    .locals 1

    .prologue
    .line 113
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setPositiveButtonText(I)V

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method

.method public onActivityStop()V
    .locals 4

    .prologue
    .line 255
    invoke-super {p0}, Landroid/preference/VolumePreference;->onActivityStop()V

    .line 257
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, "arr$":[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 258
    .local v3, "vol":Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 257
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    .end local v3    # "vol":Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v13, 0x8

    .line 167
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onBindDialogView(Landroid/view/View;)V

    .line 169
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    if-ge v9, v0, :cond_1

    .line 170
    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    aget v0, v0, v9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 171
    .local v3, "seekBar":Landroid/widget/SeekBar;
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aput-object v3, v0, v9

    .line 172
    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v0, v0, v9

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 173
    iget-object v12, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    new-instance v0, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v1, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v4, v1, v9

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/RingerVolumePreference;->getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    aput-object v0, v12, v9

    .line 169
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    new-instance v1, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v4, v4, v9

    invoke-direct {v1, p0, v2, v3, v4}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v1, v0, v9

    goto :goto_1

    .line 182
    .end local v3    # "seekBar":Landroid/widget/SeekBar;
    :cond_1
    const/4 v9, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    array-length v0, v0

    if-ge v9, v0, :cond_2

    .line 183
    sget-object v0, Lcom/android/settings/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    aget v0, v0, v9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 184
    .local v6, "checkbox":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aput-object v6, v0, v9

    .line 182
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 188
    .end local v6    # "checkbox":Landroid/widget/ImageView;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/RingerVolumePreference;->updateSlidersAndMutedStates()V

    .line 191
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_3

    .line 192
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 193
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    new-instance v0, Lcom/android/settings/RingerVolumePreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/RingerVolumePreference$2;-><init>(Lcom/android/settings/RingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 206
    .end local v7    # "filter":Landroid/content/IntentFilter;
    :cond_3
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    .line 208
    .local v11, "useMasterVolume":Z
    if-eqz v11, :cond_6

    .line 212
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 213
    const v10, 0x7f0800e9

    .line 217
    .local v10, "id":I
    :goto_3
    const/4 v9, 0x0

    :goto_4
    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_SECTION_ID:[I

    array-length v0, v0

    if-ge v9, v0, :cond_7

    .line 218
    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_SECTION_ID:[I

    aget v0, v0, v9

    if-eq v0, v10, :cond_4

    .line 219
    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_SECTION_ID:[I

    aget v0, v0, v9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 215
    .end local v10    # "id":I
    :cond_5
    const v10, 0x7f0800e6

    .restart local v10    # "id":I
    goto :goto_3

    .line 225
    .end local v10    # "id":I
    :cond_6
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 226
    const v10, 0x7f0800e9

    .line 230
    .restart local v10    # "id":I
    :goto_5
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 231
    .local v8, "hideSection":Landroid/view/View;
    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 233
    .end local v8    # "hideSection":Landroid/view/View;
    :cond_7
    return-void

    .line 228
    .end local v10    # "id":I
    :cond_8
    const v10, 0x7f0800ed

    .restart local v10    # "id":I
    goto :goto_5
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .param p1, "positiveResult"    # Z

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onDialogClosed(Z)V

    .line 245
    if-nez p1, :cond_1

    .line 246
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, "arr$":[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 247
    .local v3, "vol":Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 246
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    .end local v0    # "arr$":[Landroid/preference/VolumePreference$SeekBarVolumizer;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "vol":Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/RingerVolumePreference;->cleanup()V

    .line 251
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 264
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 265
    .local v0, "isdown":Z
    :goto_0
    sparse-switch p2, :sswitch_data_0

    move v1, v2

    .line 271
    :sswitch_0
    return v1

    .end local v0    # "isdown":Z
    :cond_0
    move v0, v2

    .line 264
    goto :goto_0

    .line 265
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 322
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/RingerVolumePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 324
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 337
    :cond_1
    return-void

    .line 328
    :cond_2
    check-cast p1, Lcom/android/settings/RingerVolumePreference$SavedState;

    .line 329
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 330
    sget-object v0, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/android/settings/RingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v1

    .line 331
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 332
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v0

    .line 333
    if-eqz v2, :cond_3

    .line 334
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 331
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 4
    .param p1, "volumizer"    # Landroid/preference/VolumePreference$SeekBarVolumizer;

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    .line 278
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, "arr$":[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 279
    .local v3, "vol":Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 278
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    .end local v3    # "vol":Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 303
    invoke-super {p0}, Landroid/preference/VolumePreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 304
    .local v2, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 317
    .end local v2    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v2

    .line 309
    .restart local v2    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v1, Lcom/android/settings/RingerVolumePreference$SavedState;

    invoke-direct {v1, v2}, Lcom/android/settings/RingerVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 310
    .local v1, "myState":Lcom/android/settings/RingerVolumePreference$SavedState;
    sget-object v5, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    invoke-virtual {v1, v5}, Lcom/android/settings/RingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v4

    .line 311
    .local v4, "volumeStore":[Landroid/preference/VolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v5, Lcom/android/settings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 312
    iget-object v5, p0, Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v3, v5, v0

    .line 313
    .local v3, "vol":Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_1

    .line 314
    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 311
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3    # "vol":Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_2
    move-object v2, v1

    .line 317
    goto :goto_0
.end method
