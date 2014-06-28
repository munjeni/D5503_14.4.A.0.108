.class public Lcom/android/phone/am/SomcAmGreetingsSetting;
.super Lcom/android/phone/am/SomcAmMessageSetting;
.source "SomcAmGreetingsSetting.java"


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mFinxedPreferenceCount:I

.field private mGreetingsRootPref:Landroid/preference/PreferenceGroup;

.field private mLongClickMessagePosition:I

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmMessageSetting;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mLongClickMessagePosition:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mDialog:Landroid/app/AlertDialog;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mFinxedPreferenceCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/am/SomcAmGreetingsSetting;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmGreetingsSetting;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mLongClickMessagePosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/am/SomcAmGreetingsSetting;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmGreetingsSetting;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mLongClickMessagePosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/am/SomcAmGreetingsSetting;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmGreetingsSetting;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mFinxedPreferenceCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/am/SomcAmGreetingsSetting;)Landroid/preference/PreferenceGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmGreetingsSetting;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mGreetingsRootPref:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/am/SomcAmGreetingsSetting;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmGreetingsSetting;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/am/SomcAmGreetingsSetting;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmGreetingsSetting;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/phone/am/SomcAmGreetingsSetting;->deleteGreeting(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/am/SomcAmGreetingsSetting;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmGreetingsSetting;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmGreetingsSetting;->getFirstGreetingId()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/am/SomcAmGreetingsSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmGreetingsSetting;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmGreetingsSetting;->refreshMessages()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/am/SomcAmGreetingsSetting;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmGreetingsSetting;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/am/SomcAmGreetingsSetting;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmGreetingsSetting;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/phone/am/SomcAmGreetingsSetting;->renameGreeting(ILjava/lang/String;)V

    return-void
.end method

.method private calculateMessageTime(Landroid/net/Uri;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "messageTimeMilis":I
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v1

    .line 224
    .local v1, "player":Landroid/media/MediaPlayer;
    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 226
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 228
    :cond_0
    return v0
.end method

.method private calculateMessageTime(Ljava/lang/String;)I
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 232
    const/4 v1, 0x0

    .line 233
    .local v1, "messageTimeMilis":I
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 234
    .local v2, "player":Landroid/media/MediaPlayer;
    if-eqz v2, :cond_1

    .line 236
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    .line 244
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 246
    :cond_1
    return v1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    const-string v3, "SomcAmGreetingsSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception with Media Player"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteGreeting(I)V
    .locals 8
    .param p1, "id"    # I

    .prologue
    .line 509
    new-instance v0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;-><init>(Landroid/content/Context;)V

    .line 510
    .local v0, "dbAdapter":Lcom/android/phone/am/SomcAmGreetingDbAdapter;
    const/4 v1, 0x0

    .line 511
    .local v1, "dbDeleteRet":I
    const/4 v3, 0x0

    .line 512
    .local v3, "filePath":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->open()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 513
    invoke-virtual {v0, p1}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->getSelectedGreetingFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 514
    invoke-virtual {v0, p1}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->deleteGreetingById(I)I

    move-result v1

    .line 516
    :cond_0
    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->close()V

    .line 517
    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 518
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 519
    .local v4, "messageFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v2

    .line 520
    .local v2, "fileDeleteRet":Z
    if-nez v2, :cond_1

    .line 521
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 522
    const-string v5, "SomcAmGreetingsSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete file!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .end local v2    # "fileDeleteRet":Z
    .end local v4    # "messageFile":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private getDeleteDialog()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 375
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b016a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/phone/am/SomcAmGreetingsSetting$5;

    invoke-direct {v3, p0}, Lcom/android/phone/am/SomcAmGreetingsSetting$5;-><init>(Lcom/android/phone/am/SomcAmGreetingsSetting;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/phone/am/SomcAmGreetingsSetting$4;

    invoke-direct {v3, p0}, Lcom/android/phone/am/SomcAmGreetingsSetting$4;-><init>(Lcom/android/phone/am/SomcAmGreetingsSetting;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 402
    .local v0, "dialog":Landroid/app/AlertDialog;
    return-object v0
.end method

.method private getDeleteLastDialog()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 406
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d0005

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0b0164

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/phone/am/SomcAmGreetingsSetting$7;

    invoke-direct {v3, p0}, Lcom/android/phone/am/SomcAmGreetingsSetting$7;-><init>(Lcom/android/phone/am/SomcAmGreetingsSetting;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/phone/am/SomcAmGreetingsSetting$6;

    invoke-direct {v3, p0}, Lcom/android/phone/am/SomcAmGreetingsSetting$6;-><init>(Lcom/android/phone/am/SomcAmGreetingsSetting;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 434
    .local v0, "dialog":Landroid/app/AlertDialog;
    return-object v0
.end method

.method private getFirstGreetingId()I
    .locals 3

    .prologue
    .line 537
    const/4 v1, -0x1

    .line 538
    .local v1, "firstGreetingId":I
    new-instance v0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;-><init>(Landroid/content/Context;)V

    .line 539
    .local v0, "dbAdapter":Lcom/android/phone/am/SomcAmGreetingDbAdapter;
    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->open()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->getFirstGreetingId()I

    move-result v1

    .line 542
    :cond_0
    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->close()V

    .line 543
    return v1
.end method

.method private getMaxSavedDialog()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 497
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b015f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/phone/am/SomcAmGreetingsSetting$11;

    invoke-direct {v3, p0}, Lcom/android/phone/am/SomcAmGreetingsSetting$11;-><init>(Lcom/android/phone/am/SomcAmGreetingsSetting;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 505
    .local v0, "dialog":Landroid/app/AlertDialog;
    return-object v0
.end method

.method private getRenameDialog()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    .line 438
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 439
    .local v1, "editText":Landroid/widget/EditText;
    iget-object v3, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mGreetingsRootPref:Landroid/preference/PreferenceGroup;

    iget v4, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mLongClickMessagePosition:I

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/am/SomcAmGreetingPreference;

    move-object v2, v3

    check-cast v2, Lcom/android/phone/am/SomcAmGreetingPreference;

    .line 441
    .local v2, "pref":Lcom/android/phone/am/SomcAmGreetingPreference;
    invoke-virtual {v2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 443
    invoke-virtual {v2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 444
    new-instance v3, Lcom/android/phone/am/SomcAmGreetingsSetting$8;

    invoke-direct {v3, p0}, Lcom/android/phone/am/SomcAmGreetingsSetting$8;-><init>(Lcom/android/phone/am/SomcAmGreetingsSetting;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 462
    new-instance v3, Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0d0005

    invoke-direct {v3, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f0b0161

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/phone/am/SomcAmGreetingsSetting$10;

    invoke-direct {v5, p0, v1}, Lcom/android/phone/am/SomcAmGreetingsSetting$10;-><init>(Lcom/android/phone/am/SomcAmGreetingsSetting;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/phone/am/SomcAmGreetingsSetting$9;

    invoke-direct {v5, p0}, Lcom/android/phone/am/SomcAmGreetingsSetting$9;-><init>(Lcom/android/phone/am/SomcAmGreetingsSetting;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 493
    .local v0, "dialog":Landroid/app/AlertDialog;
    return-object v0
.end method

.method private refreshMessages()V
    .locals 7

    .prologue
    .line 128
    iget-object v5, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mGreetingsRootPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    iget v6, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mFinxedPreferenceCount:I

    if-eq v5, v6, :cond_0

    .line 129
    iget-object v5, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mGreetingsRootPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    .line 130
    .local v3, "numberOfPreference":I
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mFinxedPreferenceCount:I

    add-int/lit8 v5, v5, -0x1

    if-le v2, v5, :cond_0

    .line 131
    iget-object v5, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mGreetingsRootPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/phone/am/SomcAmGreetingPreference;

    move-object v4, v5

    check-cast v4, Lcom/android/phone/am/SomcAmGreetingPreference;

    .line 133
    .local v4, "pref":Lcom/android/phone/am/SomcAmGreetingPreference;
    iget-object v5, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mGreetingsRootPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 130
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 137
    .end local v2    # "i":I
    .end local v3    # "numberOfPreference":I
    .end local v4    # "pref":Lcom/android/phone/am/SomcAmGreetingPreference;
    :cond_0
    new-instance v1, Lcom/android/phone/am/SomcAmGreetingDbAdapter;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;-><init>(Landroid/content/Context;)V

    .line 139
    .local v1, "dbAdapter":Lcom/android/phone/am/SomcAmGreetingDbAdapter;
    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->open()Z

    move-result v5

    if-nez v5, :cond_2

    .line 140
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 141
    const-string v5, "SomcAmGreetingsSetting"

    const-string v6, "SomcAmGreetingDbAdapter open() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1
    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->close()V

    .line 155
    :goto_1
    return-void

    .line 146
    :cond_2
    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->getAllGreetings()Landroid/database/Cursor;

    move-result-object v0

    .line 147
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 149
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/phone/am/SomcAmGreetingsSetting;->setGreetingsData(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_3
    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->close()V

    goto :goto_1

    .line 151
    :catchall_0
    move-exception v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method private renameGreeting(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 529
    new-instance v0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;-><init>(Landroid/content/Context;)V

    .line 530
    .local v0, "dbAdapter":Lcom/android/phone/am/SomcAmGreetingDbAdapter;
    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->open()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    invoke-virtual {v0, p1, p2}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->renameGreeting(ILjava/lang/String;)I

    .line 533
    :cond_0
    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->close()V

    .line 534
    return-void
.end method

.method private setGreetingsData(Landroid/database/Cursor;)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 158
    iget-object v5, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "key_am_greetings"

    const/4 v7, -0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 161
    .local v0, "currentSelectedGreetingID":I
    if-eqz p1, :cond_1

    .line 163
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 164
    new-instance v3, Lcom/android/phone/am/SomcAmGreetingPreference;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5, p0}, Lcom/android/phone/am/SomcAmGreetingPreference;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    .line 166
    .local v3, "message":Lcom/android/phone/am/SomcAmGreetingPreference;
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/phone/am/SomcAmGreetingPreference;->setMessageId(I)V

    .line 167
    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "preset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 172
    .local v2, "isPreset":Z
    if-eqz v2, :cond_2

    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android.resource://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/raw/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 176
    .local v4, "uri":Landroid/net/Uri;
    invoke-direct {p0, v4}, Lcom/android/phone/am/SomcAmGreetingsSetting;->calculateMessageTime(Landroid/net/Uri;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Lcom/android/phone/am/SomcAmMessagePreference;->setTotalRecordedDuration(J)V

    .line 177
    invoke-virtual {v3, v4}, Lcom/android/phone/am/SomcAmMessagePreference;->setAudioSource(Landroid/net/Uri;)V

    .line 186
    .end local v4    # "uri":Landroid/net/Uri;
    :goto_1
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v0, :cond_0

    .line 188
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/phone/am/SomcAmGreetingPreference;->setChecked(Z)V

    .line 190
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/phone/am/SomcAmGreetingsSetting;->setOnClickListeners(Lcom/android/phone/am/SomcAmGreetingPreference;)V

    .line 191
    iget-object v5, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mGreetingsRootPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    .end local v2    # "isPreset":Z
    .end local v3    # "message":Lcom/android/phone/am/SomcAmGreetingPreference;
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "SomcAmGreetingsSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with cursor"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 179
    .restart local v2    # "isPreset":Z
    .restart local v3    # "message":Lcom/android/phone/am/SomcAmGreetingPreference;
    :cond_2
    const/4 v5, 0x3

    :try_start_1
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/am/SomcAmGreetingsSetting;->calculateMessageTime(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Lcom/android/phone/am/SomcAmMessagePreference;->setTotalRecordedDuration(J)V

    .line 181
    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/android/phone/am/SomcAmMessagePreference;->setDate(J)V

    .line 183
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/phone/am/SomcAmGreetingPreference;->setAudioSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private setOnClickListeners(Lcom/android/phone/am/SomcAmGreetingPreference;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/phone/am/SomcAmGreetingPreference;

    .prologue
    .line 251
    new-instance v0, Lcom/android/phone/am/SomcAmGreetingsSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/am/SomcAmGreetingsSetting$2;-><init>(Lcom/android/phone/am/SomcAmGreetingsSetting;)V

    invoke-virtual {p1, v0}, Lcom/android/phone/am/SomcAmMessagePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 277
    new-instance v0, Lcom/android/phone/am/SomcAmGreetingsSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/am/SomcAmGreetingsSetting$3;-><init>(Lcom/android/phone/am/SomcAmGreetingsSetting;)V

    invoke-virtual {p1, v0}, Lcom/android/phone/am/SomcAmGreetingPreference;->setOnPlayerIconClickListener(Lcom/android/phone/am/SomcAmGreetingPreference$onIconClickListener;)V

    .line 300
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x2

    .line 337
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 350
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 339
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mGreetingsRootPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 341
    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 343
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 347
    :pswitch_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f050011

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 69
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.phone_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mPreferences:Landroid/content/SharedPreferences;

    .line 71
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mGreetingsRootPref:Landroid/preference/PreferenceGroup;

    .line 72
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mGreetingsRootPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    iput v0, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mFinxedPreferenceCount:I

    .line 73
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 74
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/phone/am/SomcAmGreetingsSetting$1;

    invoke-direct {v1, p0}, Lcom/android/phone/am/SomcAmGreetingsSetting$1;-><init>(Lcom/android/phone/am/SomcAmGreetingsSetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 82
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v6, 0x0

    .line 305
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    .line 306
    .local v0, "amManager":Lcom/android/phone/am/SomcAmManager;
    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget v4, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mLongClickMessagePosition:I

    iget v5, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mFinxedPreferenceCount:I

    if-lt v4, v5, :cond_0

    .line 315
    iget-object v4, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mGreetingsRootPref:Landroid/preference/PreferenceGroup;

    iget v5, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mLongClickMessagePosition:I

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/am/SomcAmGreetingPreference;

    move-object v3, v4

    check-cast v3, Lcom/android/phone/am/SomcAmGreetingPreference;

    .line 318
    .local v3, "pref":Lcom/android/phone/am/SomcAmGreetingPreference;
    new-instance v1, Lcom/android/phone/am/SomcAmGreetingDbAdapter;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;-><init>(Landroid/content/Context;)V

    .line 319
    .local v1, "dbAdapter":Lcom/android/phone/am/SomcAmGreetingDbAdapter;
    const/4 v2, 0x1

    .line 320
    .local v2, "isPreset":Z
    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->open()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 321
    invoke-virtual {v3}, Lcom/android/phone/am/SomcAmGreetingPreference;->getMessageId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->idPresetGreeting(I)Z

    move-result v2

    .line 323
    :cond_2
    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->close()V

    .line 326
    if-nez v2, :cond_0

    .line 327
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 328
    const/4 v4, 0x1

    const v5, 0x7f0b0160

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 330
    const/4 v4, 0x2

    const v5, 0x7f0b0161

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "dialog":Landroid/app/AlertDialog;
    packed-switch p1, :pswitch_data_0

    .line 371
    :goto_0
    return-object v0

    .line 358
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmGreetingsSetting;->getDeleteDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 359
    goto :goto_0

    .line 361
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmGreetingsSetting;->getDeleteLastDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 362
    goto :goto_0

    .line 364
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmGreetingsSetting;->getRenameDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 365
    iput-object v0, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 368
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmGreetingsSetting;->getMaxSavedDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 114
    iget v0, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mFinxedPreferenceCount:I

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mGreetingsRootPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mGreetingsRootPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/am/SomcAmGreetingPreference;

    move-object v1, v2

    check-cast v1, Lcom/android/phone/am/SomcAmGreetingPreference;

    .line 117
    .local v1, "pref":Lcom/android/phone/am/SomcAmGreetingPreference;
    invoke-virtual {v1, v3}, Lcom/android/phone/am/SomcAmMessagePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 118
    invoke-virtual {v1, v3}, Lcom/android/phone/am/SomcAmGreetingPreference;->setOnPlayerIconClickListener(Lcom/android/phone/am/SomcAmGreetingPreference$onIconClickListener;)V

    .line 119
    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmGreetingPreference;->cleanUp()V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "pref":Lcom/android/phone/am/SomcAmGreetingPreference;
    :cond_0
    iput-object v3, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mGreetingsRootPref:Landroid/preference/PreferenceGroup;

    .line 122
    iput-object v3, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mPreferences:Landroid/content/SharedPreferences;

    .line 123
    iput-object v3, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mDialog:Landroid/app/AlertDialog;

    .line 124
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/phone/am/SomcAmMessageSetting;->onPause()V

    .line 93
    iget v0, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mFinxedPreferenceCount:I

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mGreetingsRootPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/android/phone/am/SomcAmGreetingsSetting;->mGreetingsRootPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/am/SomcAmGreetingPreference;

    move-object v1, v2

    check-cast v1, Lcom/android/phone/am/SomcAmGreetingPreference;

    .line 96
    .local v1, "pref":Lcom/android/phone/am/SomcAmGreetingPreference;
    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmMessagePreference;->removePlayingMessages()V

    .line 97
    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmMessagePreference;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmMessagePreference;->stopPlaying()V

    .line 93
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v1    # "pref":Lcom/android/phone/am/SomcAmGreetingPreference;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->closeContextMenu()V

    .line 105
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 106
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 107
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 108
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 109
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 202
    const-string v4, "key_am_record_new_greeting"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 204
    .local v2, "prefRecordNewGreeting":Landroid/preference/PreferenceScreen;
    if-ne p2, v2, :cond_1

    .line 205
    new-instance v1, Lcom/android/phone/am/SomcAmGreetingDbAdapter;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;-><init>(Landroid/content/Context;)V

    .line 207
    .local v1, "dbAdapter":Lcom/android/phone/am/SomcAmGreetingDbAdapter;
    const/4 v0, 0x0

    .line 208
    .local v0, "count":I
    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->open()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 209
    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->getCountGreetingByUser()I

    move-result v0

    .line 211
    :cond_0
    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->close()V

    .line 212
    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    .line 213
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroid/app/Activity;->showDialog(I)V

    .line 218
    .end local v0    # "count":I
    .end local v1    # "dbAdapter":Lcom/android/phone/am/SomcAmGreetingDbAdapter;
    :cond_1
    :goto_0
    return v3

    .line 216
    .restart local v0    # "count":I
    .restart local v1    # "dbAdapter":Lcom/android/phone/am/SomcAmGreetingDbAdapter;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lcom/android/phone/am/SomcAmMessageSetting;->onResume()V

    .line 87
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmGreetingsSetting;->refreshMessages()V

    .line 88
    return-void
.end method
