.class public Lcom/android/phone/am/SomcAmIncomingMessageSetting;
.super Lcom/android/phone/am/SomcAmMessageSetting;
.source "SomcAmIncomingMessageSetting.java"


# instance fields
.field private mContentHelper:Lcom/android/phone/am/SomcAmContentHelper;

.field private mImcomingMessageRootPref:Landroid/preference/PreferenceGroup;

.field private mLongClickMessagePosition:I

.field private mMessages:[Lcom/android/phone/am/SomcAmMessage;

.field private mNoMessageText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmMessageSetting;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mImcomingMessageRootPref:Landroid/preference/PreferenceGroup;

    .line 44
    iput-object v1, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mContentHelper:Lcom/android/phone/am/SomcAmContentHelper;

    .line 45
    iput-object v1, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mMessages:[Lcom/android/phone/am/SomcAmMessage;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mLongClickMessagePosition:I

    .line 47
    iput-object v1, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mNoMessageText:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/am/SomcAmIncomingMessageSetting;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmIncomingMessageSetting;

    .prologue
    .line 33
    iget v0, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mLongClickMessagePosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/am/SomcAmIncomingMessageSetting;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmIncomingMessageSetting;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mLongClickMessagePosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/am/SomcAmIncomingMessageSetting;Landroid/preference/Preference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmIncomingMessageSetting;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->clickItem(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/am/SomcAmIncomingMessageSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmIncomingMessageSetting;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->stopPlayingAllMessages()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/am/SomcAmIncomingMessageSetting;)[Lcom/android/phone/am/SomcAmMessage;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmIncomingMessageSetting;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mMessages:[Lcom/android/phone/am/SomcAmMessage;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/am/SomcAmIncomingMessageSetting;)Lcom/android/phone/am/SomcAmContentHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmIncomingMessageSetting;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mContentHelper:Lcom/android/phone/am/SomcAmContentHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/am/SomcAmIncomingMessageSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmIncomingMessageSetting;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->showDeleteToast()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/am/SomcAmIncomingMessageSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmIncomingMessageSetting;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->refreshMessages()V

    return-void
.end method

.method private cleanUpMessages()V
    .locals 3

    .prologue
    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mImcomingMessageRootPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mImcomingMessageRootPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/am/SomcAmIncomingMessagePreference;

    move-object v1, v2

    check-cast v1, Lcom/android/phone/am/SomcAmIncomingMessagePreference;

    .line 176
    .local v1, "pref":Lcom/android/phone/am/SomcAmIncomingMessagePreference;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/am/SomcAmMessagePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 177
    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmIncomingMessagePreference;->cleanUp()V

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "pref":Lcom/android/phone/am/SomcAmIncomingMessagePreference;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mImcomingMessageRootPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 180
    return-void
.end method

.method private clickItem(Landroid/preference/Preference;)V
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 183
    const/4 v1, 0x0

    .line 184
    .local v1, "playMessageId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mImcomingMessageRootPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 186
    iget-object v5, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mImcomingMessageRootPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/phone/am/SomcAmIncomingMessagePreference;

    move-object v3, v5

    check-cast v3, Lcom/android/phone/am/SomcAmIncomingMessagePreference;

    .line 188
    .local v3, "pref":Lcom/android/phone/am/SomcAmIncomingMessagePreference;
    if-ne p1, v3, :cond_1

    .line 190
    move v1, v0

    .line 184
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {v3}, Lcom/android/phone/am/SomcAmMessagePreference;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 193
    invoke-virtual {v3}, Lcom/android/phone/am/SomcAmMessagePreference;->toggle()V

    goto :goto_1

    .line 197
    .end local v3    # "pref":Lcom/android/phone/am/SomcAmIncomingMessagePreference;
    :cond_2
    iget-object v5, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mImcomingMessageRootPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/phone/am/SomcAmIncomingMessagePreference;

    move-object v2, v5

    check-cast v2, Lcom/android/phone/am/SomcAmIncomingMessagePreference;

    .line 200
    .local v2, "playPref":Lcom/android/phone/am/SomcAmIncomingMessagePreference;
    invoke-virtual {v2}, Lcom/android/phone/am/SomcAmMessagePreference;->toggle()V

    .line 201
    invoke-virtual {v2}, Lcom/android/phone/am/SomcAmIncomingMessagePreference;->isMessageRead()Z

    move-result v5

    if-nez v5, :cond_3

    .line 202
    iget-object v5, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mMessages:[Lcom/android/phone/am/SomcAmMessage;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/android/phone/am/SomcAmMessage;->mUri:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 203
    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mContentHelper:Lcom/android/phone/am/SomcAmContentHelper;

    invoke-virtual {v5, v4}, Lcom/android/phone/am/SomcAmContentHelper;->updateVoicemailToReadByUri(Landroid/net/Uri;)V

    .line 205
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_3
    return-void
.end method

.method private refreshMessages()V
    .locals 13

    .prologue
    const v12, 0x7f0b01c8

    const v11, 0x7f0b01c7

    const v9, 0x7f0b01c6

    const/4 v10, -0x1

    .line 96
    iget-object v7, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mImcomingMessageRootPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 97
    iget-object v7, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mContentHelper:Lcom/android/phone/am/SomcAmContentHelper;

    invoke-virtual {v7}, Lcom/android/phone/am/SomcAmContentHelper;->getIncomingMessages()[Lcom/android/phone/am/SomcAmMessage;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mMessages:[Lcom/android/phone/am/SomcAmMessage;

    .line 98
    iget-object v7, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mMessages:[Lcom/android/phone/am/SomcAmMessage;

    if-nez v7, :cond_1

    .line 99
    iget-object v7, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mNoMessageText:Landroid/widget/TextView;

    if-nez v7, :cond_0

    .line 100
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mNoMessageText:Landroid/widget/TextView;

    .line 101
    iget-object v7, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mNoMessageText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0167

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->density:F

    .line 105
    .local v1, "density":F
    iget-object v7, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mNoMessageText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00db

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    div-float/2addr v8, v1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 107
    iget-object v7, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mNoMessageText:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 108
    iget-object v7, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mNoMessageText:Landroid/widget/TextView;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v7, v8}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    .end local v1    # "density":F
    :cond_0
    return-void

    .line 114
    :cond_1
    iget-object v7, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mNoMessageText:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 115
    iget-object v7, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mNoMessageText:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 116
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mNoMessageText:Landroid/widget/TextView;

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mMessages:[Lcom/android/phone/am/SomcAmMessage;

    .local v0, "arr$":[Lcom/android/phone/am/SomcAmMessage;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 120
    .local v4, "message":Lcom/android/phone/am/SomcAmMessage;
    new-instance v5, Lcom/android/phone/am/SomcAmIncomingMessagePreference;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7, p0}, Lcom/android/phone/am/SomcAmIncomingMessagePreference;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    .line 122
    .local v5, "pref":Lcom/android/phone/am/SomcAmIncomingMessagePreference;
    const/4 v6, 0x0

    .line 124
    .local v6, "title":Ljava/lang/String;
    iget-object v7, v4, Lcom/android/phone/am/SomcAmMessage;->mName:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 125
    iget-object v6, v4, Lcom/android/phone/am/SomcAmMessage;->mName:Ljava/lang/String;

    .line 137
    :cond_3
    :goto_1
    if-nez v6, :cond_4

    .line 138
    iget v7, v4, Lcom/android/phone/am/SomcAmMessage;->mNumberPresentation:I

    packed-switch v7, :pswitch_data_0

    .line 149
    iget-object v6, v4, Lcom/android/phone/am/SomcAmMessage;->mNumber:Ljava/lang/String;

    .line 154
    :cond_4
    :goto_2
    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    iget-boolean v7, v4, Lcom/android/phone/am/SomcAmMessage;->mIsRead:Z

    invoke-virtual {v5, v7}, Lcom/android/phone/am/SomcAmIncomingMessagePreference;->setIsReadFlagAndIcon(Z)V

    .line 156
    iget-wide v7, v4, Lcom/android/phone/am/SomcAmMessage;->mDate:J

    invoke-virtual {v5, v7, v8}, Lcom/android/phone/am/SomcAmMessagePreference;->setDate(J)V

    .line 157
    iget-wide v7, v4, Lcom/android/phone/am/SomcAmMessage;->mDuration:J

    invoke-virtual {v5, v7, v8}, Lcom/android/phone/am/SomcAmMessagePreference;->setTotalRecordedDuration(J)V

    .line 158
    iget-boolean v7, v4, Lcom/android/phone/am/SomcAmMessage;->mIsRead:Z

    invoke-virtual {v5, v7}, Lcom/android/phone/am/SomcAmIncomingMessagePreference;->setIsReadFlagAndIcon(Z)V

    .line 159
    iget-object v7, v4, Lcom/android/phone/am/SomcAmMessage;->mUri:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/phone/am/SomcAmMessagePreference;->setAudioSource(Landroid/net/Uri;)V

    .line 161
    new-instance v7, Lcom/android/phone/am/SomcAmIncomingMessageSetting$2;

    invoke-direct {v7, p0}, Lcom/android/phone/am/SomcAmIncomingMessageSetting$2;-><init>(Lcom/android/phone/am/SomcAmIncomingMessageSetting;)V

    invoke-virtual {v5, v7}, Lcom/android/phone/am/SomcAmMessagePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 168
    iget-object v7, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mImcomingMessageRootPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_5
    const-string v7, "-1"

    iget-object v8, v4, Lcom/android/phone/am/SomcAmMessage;->mNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 129
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 130
    :cond_6
    const-string v7, "-2"

    iget-object v8, v4, Lcom/android/phone/am/SomcAmMessage;->mNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 131
    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 132
    :cond_7
    const-string v7, "-3"

    iget-object v8, v4, Lcom/android/phone/am/SomcAmMessage;->mNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 133
    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 140
    :pswitch_0
    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 141
    goto :goto_2

    .line 143
    :pswitch_1
    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 144
    goto :goto_2

    .line 146
    :pswitch_2
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 147
    goto :goto_2

    .line 138
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private showDeleteToast()V
    .locals 3

    .prologue
    .line 291
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b016b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 294
    return-void
.end method

.method private stopPlayingAllMessages()V
    .locals 3

    .prologue
    .line 280
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mImcomingMessageRootPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 281
    iget-object v2, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mImcomingMessageRootPref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/am/SomcAmMessagePreference;

    move-object v1, v2

    check-cast v1, Lcom/android/phone/am/SomcAmMessagePreference;

    .line 283
    .local v1, "pref":Lcom/android/phone/am/SomcAmMessagePreference;
    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmMessagePreference;->removePlayingMessages()V

    .line 284
    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmMessagePreference;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmMessagePreference;->stopPlaying()V

    .line 280
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    .end local v1    # "pref":Lcom/android/phone/am/SomcAmMessagePreference;
    :cond_1
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 217
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 225
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 219
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 222
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/am/SomcAmContentHelper;->getSomcAmContentHelperInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmContentHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mContentHelper:Lcom/android/phone/am/SomcAmContentHelper;

    .line 54
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b014b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    const v0, 0x7f050012

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 57
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mImcomingMessageRootPref:Landroid/preference/PreferenceGroup;

    .line 58
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 59
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/phone/am/SomcAmIncomingMessageSetting$1;

    invoke-direct {v1, p0}, Lcom/android/phone/am/SomcAmIncomingMessageSetting$1;-><init>(Lcom/android/phone/am/SomcAmIncomingMessageSetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 67
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 210
    const/4 v0, 0x1

    const v1, 0x7f0b0160

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 211
    const/4 v0, 0x2

    const v1, 0x7f0b016d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 213
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const v2, 0x7f0d0005

    const v4, 0x104000a

    const/high16 v3, 0x1040000

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "dialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 276
    :goto_0
    return-object v0

    .line 233
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0b016a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/am/SomcAmIncomingMessageSetting$4;

    invoke-direct {v2, p0}, Lcom/android/phone/am/SomcAmIncomingMessageSetting$4;-><init>(Lcom/android/phone/am/SomcAmIncomingMessageSetting;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/am/SomcAmIncomingMessageSetting$3;

    invoke-direct {v2, p0}, Lcom/android/phone/am/SomcAmIncomingMessageSetting$3;-><init>(Lcom/android/phone/am/SomcAmIncomingMessageSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 253
    goto :goto_0

    .line 255
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0b016e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/am/SomcAmIncomingMessageSetting$6;

    invoke-direct {v2, p0}, Lcom/android/phone/am/SomcAmIncomingMessageSetting$6;-><init>(Lcom/android/phone/am/SomcAmIncomingMessageSetting;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/am/SomcAmIncomingMessageSetting$5;

    invoke-direct {v2, p0}, Lcom/android/phone/am/SomcAmIncomingMessageSetting$5;-><init>(Lcom/android/phone/am/SomcAmIncomingMessageSetting;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 88
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->cleanUpMessages()V

    .line 89
    iput-object v0, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mImcomingMessageRootPref:Landroid/preference/PreferenceGroup;

    .line 90
    iput-object v0, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mContentHelper:Lcom/android/phone/am/SomcAmContentHelper;

    .line 91
    iput-object v0, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mMessages:[Lcom/android/phone/am/SomcAmMessage;

    .line 92
    iput-object v0, p0, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->mNoMessageText:Landroid/widget/TextView;

    .line 93
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/phone/am/SomcAmMessageSetting;->onPause()V

    .line 79
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->stopPlayingAllMessages()V

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->closeContextMenu()V

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 82
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 83
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/phone/am/SomcAmMessageSetting;->onResume()V

    .line 72
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmIncomingMessageSetting;->refreshMessages()V

    .line 73
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->clearAmNotification()V

    .line 74
    return-void
.end method
