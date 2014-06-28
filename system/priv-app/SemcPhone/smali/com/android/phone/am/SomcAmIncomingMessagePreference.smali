.class public Lcom/android/phone/am/SomcAmIncomingMessagePreference;
.super Lcom/android/phone/am/SomcAmMessagePreference;
.source "SomcAmIncomingMessagePreference.java"


# instance fields
.field private mIsRead:Z

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/phone/am/SomcAmMessagePreference;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/am/SomcAmIncomingMessagePreference;->mTitleView:Landroid/widget/TextView;

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/am/SomcAmIncomingMessagePreference;->mIsRead:Z

    .line 46
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/android/phone/am/SomcAmMessagePreference;->cleanUp()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/am/SomcAmIncomingMessagePreference;->mTitleView:Landroid/widget/TextView;

    .line 82
    return-void
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/android/phone/am/SomcAmMessagePreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "view":Landroid/view/View;
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/am/SomcAmIncomingMessagePreference;->mTitleView:Landroid/widget/TextView;

    .line 52
    iget-boolean v1, p0, Lcom/android/phone/am/SomcAmIncomingMessagePreference;->mIsRead:Z

    if-nez v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f02000e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    iget-object v1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b017d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p0, Lcom/android/phone/am/SomcAmIncomingMessagePreference;->mTitleView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 58
    :cond_0
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 63
    invoke-super {p0, p1}, Lcom/android/phone/am/SomcAmMessagePreference;->handleMessage(Landroid/os/Message;)Z

    .line 64
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 72
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 66
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/phone/am/SomcAmIncomingMessagePreference;->mTitleView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 68
    iput-boolean v0, p0, Lcom/android/phone/am/SomcAmIncomingMessagePreference;->mIsRead:Z

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
    .end packed-switch
.end method

.method public isMessageRead()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/phone/am/SomcAmIncomingMessagePreference;->mIsRead:Z

    return v0
.end method

.method public setIsReadFlagAndIcon(Z)V
    .locals 3
    .param p1, "isRed"    # Z

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/am/SomcAmMessagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b017d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    iput-boolean p1, p0, Lcom/android/phone/am/SomcAmIncomingMessagePreference;->mIsRead:Z

    .line 96
    return-void
.end method
