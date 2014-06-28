.class public abstract Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;
.super Ljava/lang/Object;
.source "TextInputInfoBoxHandler.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$ToastMonitor;,
        Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;
    }
.end annotation


# static fields
.field private static final ENCODING_16BIT_ONE_SEGMENT_CHARACTERS_LIMIT:I = 0x46

.field private static final ENCODING_16BIT_OTHER_SEGMENT_CHARACTERS_LIMIT:I = 0x43

.field private static final ENCODING_7BIT_ONE_SEGMENT_CHARACTERS_LIMIT:I = 0xa0

.field private static final ENCODING_7BIT_OTHER_SEGMENT_CHARACTERS_LIMIT:I = 0x99

.field private static final TAG:Ljava/lang/String; = "TextInputInfoBoxHandler"

.field protected static final TEXT_INPUT_COMMAND_ARG_PRIMARY_INFO:Ljava/lang/String; = "primary_info"

.field protected static final TEXT_INPUT_COMMAND_ARG_SECONDARY_INFO:Ljava/lang/String; = "secondary_info"

.field private static final TEXT_INPUT_INFO_BOX_MINUS_CHARACTERS_LIMIT:I = 0x14

.field private static final TEXT_INPUT_INFO_BOX_PLUS_CHARACTERS_LIMIT:I = 0x9


# instance fields
.field private mAddOrDeleteListener:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;

.field private mBeforeMsgText:Ljava/lang/CharSequence;

.field private mComposer:Lcom/sonyericsson/conversations/ui/Composer;

.field protected mContext:Landroid/content/Context;

.field private mCurrentMaxLenFil:I

.field private mHandler:Landroid/os/Handler;

.field private mNewNbrLines:I

.field private mOldNbrLines:I

.field private mReverseMsgFlg:Z

.field private mShowLimitReachedToast:Z

.field protected mTextInput:Landroid/widget/TextView;

.field protected mTextInputCommandArgs:Landroid/os/Bundle;

.field private mToast:Landroid/widget/Toast;

.field private mToastMonitor:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$ToastMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/Composer;Landroid/widget/TextView;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;
    .param p3, "textInput"    # Landroid/widget/TextView;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInputCommandArgs:Landroid/os/Bundle;

    .line 85
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mShowLimitReachedToast:Z

    .line 88
    iput v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mNewNbrLines:I

    .line 91
    iput v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mOldNbrLines:I

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mBeforeMsgText:Ljava/lang/CharSequence;

    .line 97
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mReverseMsgFlg:Z

    .line 100
    iput v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mCurrentMaxLenFil:I

    .line 124
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    .line 126
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    .line 127
    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mHandler:Landroid/os/Handler;

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mToast:Landroid/widget/Toast;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;)Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$ToastMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mToastMonitor:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$ToastMonitor;

    return-object v0
.end method

.method private adjustTextViewHeight()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mNewNbrLines:I

    .line 324
    iget v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mOldNbrLines:I

    iget v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mNewNbrLines:I

    if-eq v0, v1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 329
    :cond_0
    iget v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mNewNbrLines:I

    iput v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mOldNbrLines:I

    .line 330
    return-void
.end method

.method private getMaxLengthFilter(II)I
    .locals 3
    .param p1, "encoding"    # I
    .param p2, "segment"    # I

    .prologue
    const/4 v2, 0x1

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "length":I
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 134
    if-ne p2, v2, :cond_0

    .line 135
    const/16 v0, 0x46

    .line 146
    :goto_0
    return v0

    .line 137
    :cond_0
    mul-int/lit8 v0, p2, 0x43

    goto :goto_0

    .line 140
    :cond_1
    if-ne p2, v2, :cond_2

    .line 141
    const/16 v0, 0xa0

    goto :goto_0

    .line 143
    :cond_2
    mul-int/lit16 v0, p2, 0x99

    goto :goto_0
.end method

.method private showMessageInfoToast(ILcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;Z)V
    .locals 2
    .param p1, "messageType"    # I
    .param p2, "smsCounterInfo"    # Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;
    .param p3, "showConvertedText"    # Z

    .prologue
    .line 453
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->getMessageInfoText(ILcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;Z)Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 456
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->showToast(Ljava/lang/String;I)V

    .line 458
    :cond_0
    return-void
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "length"    # I

    .prologue
    .line 558
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;-><init>(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 582
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 151
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mReverseMsgFlg:Z

    if-eqz v1, :cond_0

    .line 153
    iput-boolean v4, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mReverseMsgFlg:Z

    .line 154
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mShowLimitReachedToast:Z

    .line 155
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mBeforeMsgText:Ljava/lang/CharSequence;

    invoke-interface {p1, v4, v1, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 157
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    iget v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mCurrentMaxLenFil:I

    if-lt v1, v2, :cond_1

    .line 158
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mShowLimitReachedToast:Z

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getText()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "originalText":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/Composer;->setText(Ljava/lang/String;)V

    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 169
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mAddOrDeleteListener:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;

    if-eqz v1, :cond_2

    .line 170
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mAddOrDeleteListener:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;

    invoke-interface {v1}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;->onAllTextDeleted()V

    .line 188
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->adjustTextViewHeight()V

    .line 190
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mShowLimitReachedToast:Z

    if-eqz v1, :cond_3

    .line 191
    iput-boolean v4, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mShowLimitReachedToast:Z

    .line 192
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getMessageType()I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 193
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->showLengthLimitReachedToast()V

    .line 196
    :cond_3
    return-void

    .line 174
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 176
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mAddOrDeleteListener:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;

    if-eqz v1, :cond_5

    .line 177
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mAddOrDeleteListener:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;

    invoke-interface {v1}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;->onFirstTextEntered()V

    .line 181
    :cond_5
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mShowLimitReachedToast:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getSmsCounterInfo()Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/Composer;->isTextTooLong(Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mShowLimitReachedToast:Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 199
    return-void
.end method

.method protected abstract forceRefreshInfoBoxes()V
.end method

.method getMessageInfoText(ILcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;Z)Ljava/lang/String;
    .locals 12
    .param p1, "messageType"    # I
    .param p2, "smsCounterInfo"    # Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;
    .param p3, "showConvertedText"    # Z

    .prologue
    .line 462
    const/4 v7, 0x0

    .line 464
    .local v7, "text":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 537
    :cond_0
    :goto_0
    return-object v7

    .line 466
    :pswitch_0
    if-eqz p3, :cond_1

    .line 467
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mContext:Landroid/content/Context;

    const v9, 0x7f07006f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p2, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrSegments:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 473
    :cond_1
    iget v8, p2, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrSegments:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    .line 474
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mContext:Landroid/content/Context;

    const v9, 0x7f070078

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p2, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrSegments:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 484
    :pswitch_1
    if-eqz p3, :cond_4

    .line 486
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mContext:Landroid/content/Context;

    const v9, 0x7f07006e

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 494
    :goto_1
    const/4 v2, 0x0

    .line 495
    .local v2, "mediaItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    const/4 v4, 0x0

    .line 496
    .local v4, "mediaModel":Lcom/android/mms/model/MediaModel;
    const/4 v5, 0x0

    .line 497
    .local v5, "nbrMediaItems":I
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v8, :cond_2

    .line 498
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/Composer;->getSupportedMediaItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 499
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 501
    :cond_2
    if-lez v5, :cond_0

    .line 502
    if-eqz p3, :cond_3

    .line 503
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 505
    :cond_3
    const/4 v0, 0x0

    .line 506
    .local v0, "attachmentSize":I
    const/4 v6, 0x0

    .line 507
    .local v6, "percentFull":I
    invoke-virtual {v2}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 508
    .local v3, "mediaIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/mms/model/MediaModel;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 509
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "mediaModel":Lcom/android/mms/model/MediaModel;
    check-cast v4, Lcom/android/mms/model/MediaModel;

    .line 510
    .restart local v4    # "mediaModel":Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v8

    add-int/2addr v0, v8

    goto :goto_2

    .line 490
    .end local v0    # "attachmentSize":I
    .end local v2    # "mediaItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v3    # "mediaIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/mms/model/MediaModel;>;"
    .end local v4    # "mediaModel":Lcom/android/mms/model/MediaModel;
    .end local v5    # "nbrMediaItems":I
    .end local v6    # "percentFull":I
    :cond_4
    const-string v7, ""

    goto :goto_1

    .line 512
    .restart local v0    # "attachmentSize":I
    .restart local v2    # "mediaItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .restart local v3    # "mediaIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/mms/model/MediaModel;>;"
    .restart local v4    # "mediaModel":Lcom/android/mms/model/MediaModel;
    .restart local v5    # "nbrMediaItems":I
    .restart local v6    # "percentFull":I
    :cond_5
    const/16 v8, 0x400

    if-le v0, v8, :cond_6

    .line 513
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(I)V

    .line 514
    .local v1, "bd":Ljava/math/BigDecimal;
    new-instance v8, Ljava/math/BigDecimal;

    const/16 v9, 0x400

    invoke-direct {v8, v9}, Ljava/math/BigDecimal;-><init>(I)V

    const/4 v9, 0x6

    invoke-virtual {v1, v8, v9}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    .line 517
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mContext:Landroid/content/Context;

    const v10, 0x7f0700e9

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 526
    goto/16 :goto_0

    .line 527
    .end local v1    # "bd":Ljava/math/BigDecimal;
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mContext:Landroid/content/Context;

    const v10, 0x7f0700ea

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 464
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public mediaAddedOrRemoved()V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->showMessageInfoToast(Z)V

    .line 320
    return-void
.end method

.method public messageTypeChanged(II)V
    .locals 4
    .param p1, "oldType"    # I
    .param p2, "newType"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 293
    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->updateTextInputInfoBoxes(Z)V

    .line 299
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getSmsCounterInfo()Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    move-result-object v0

    .line 301
    .local v0, "smsCounterInfo":Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;
    if-eq p1, v2, :cond_0

    if-ne p2, v2, :cond_2

    .line 302
    :cond_0
    invoke-direct {p0, p2, v0, v2}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->showMessageInfoToast(ILcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;Z)V

    .line 307
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->forceRefreshInfoBoxes()V

    .line 314
    :cond_1
    :goto_0
    return-void

    .line 308
    :cond_2
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    if-nez p2, :cond_1

    .line 312
    invoke-direct {p0, p2, v0, v3}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->showMessageInfoToast(ILcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;Z)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 203
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    const/4 v6, 0x3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSmsSegments()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->getMaxLengthFilter(II)I

    move-result v1

    .line 209
    .local v1, "maxLengthFilter16bit":I
    const/4 v6, 0x1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSmsSegments()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->getMaxLengthFilter(II)I

    move-result v2

    .line 214
    .local v2, "maxLengthFilter7bit":I
    const/4 v6, 0x0

    invoke-static {p1, v6}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v3

    .line 221
    .local v3, "params":[I
    const-string v6, "Conversations"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 222
    const-string v6, "TextInputInfoBoxHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "params[0] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v6, "TextInputInfoBoxHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "params[1] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v6, "TextInputInfoBoxHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "params[2] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v6, "TextInputInfoBoxHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "params[3] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    aget v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v6, "TextInputInfoBoxHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "params[4] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    aget v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_2
    const/4 v6, 0x3

    aget v6, v3, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 231
    iget v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mCurrentMaxLenFil:I

    if-eq v6, v2, :cond_3

    .line 232
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/text/InputFilter;

    const/4 v8, 0x0

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v9, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 236
    iput v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mCurrentMaxLenFil:I

    .line 238
    const-string v6, "Conversations"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 239
    const-string v6, "TextInputInfoBoxHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Changed MaxLength("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") : 7bit"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_3
    :goto_1
    const/4 v6, 0x0

    aget v6, v3, v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSmsSegments()I

    move-result v7

    if-gt v6, v7, :cond_5

    .line 258
    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {p1, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mBeforeMsgText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 243
    :cond_4
    iget v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mCurrentMaxLenFil:I

    if-eq v6, v1, :cond_3

    .line 244
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/text/InputFilter;

    const/4 v8, 0x0

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v9, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 248
    iput v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mCurrentMaxLenFil:I

    .line 250
    const-string v6, "Conversations"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 251
    const-string v6, "TextInputInfoBoxHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Changed MaxLength("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") : 16bit"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 260
    :cond_5
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mReverseMsgFlg:Z

    .line 262
    const/4 v6, 0x3

    aget v6, v3, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 263
    const/4 v6, 0x1

    aget v6, v3, v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    aget v8, v3, v8

    add-int/lit8 v8, v8, -0x1

    invoke-direct {p0, v7, v8}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->getMaxLengthFilter(II)I

    move-result v7

    if-le v6, v7, :cond_0

    .line 267
    move v5, v2

    .line 268
    .local v5, "subLength":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v6, v2, :cond_6

    .line 269
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 271
    :cond_6
    const/4 v6, 0x0

    invoke-interface {p1, v6, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 272
    .local v4, "reverseMsgText":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    .line 273
    .local v0, "calc":[I
    const/4 v6, 0x0

    aget v6, v0, v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSmsSegments()I

    move-result v7

    if-gt v6, v7, :cond_0

    .line 274
    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mBeforeMsgText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 278
    .end local v0    # "calc":[I
    .end local v4    # "reverseMsgText":Ljava/lang/CharSequence;
    .end local v5    # "subLength":I
    :cond_7
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mBeforeMsgText:Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    .line 279
    .restart local v0    # "calc":[I
    const/4 v6, 0x1

    aget v6, v0, v6

    if-ge v6, v1, :cond_8

    .line 280
    const/4 v6, 0x0

    invoke-interface {p1, v6, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mBeforeMsgText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 281
    :cond_8
    const/4 v6, 0x3

    aget v6, v0, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 282
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/text/InputFilter;

    const/4 v8, 0x0

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v9, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 286
    iput v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mCurrentMaxLenFil:I

    goto/16 :goto_0
.end method

.method public setTextAddedOrDeletedListener(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mAddOrDeleteListener:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;

    .line 586
    return-void
.end method

.method setToastMonitor(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$ToastMonitor;)V
    .locals 0
    .param p1, "monitor"    # Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$ToastMonitor;

    .prologue
    .line 547
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mToastMonitor:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$ToastMonitor;

    .line 548
    return-void
.end method

.method public showLengthLimitReachedToast()V
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0700c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->showToast(Ljava/lang/String;I)V

    .line 592
    return-void
.end method

.method public showMessageInfoToast(Z)V
    .locals 2
    .param p1, "showConvertedText"    # Z

    .prologue
    .line 447
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getMessageType()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getSmsCounterInfo()Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->showMessageInfoToast(ILcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;Z)V

    .line 449
    return-void
.end method

.method public smsCounterInfoChanged(Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;)V
    .locals 3
    .param p1, "oldInfo"    # Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;
    .param p2, "newInfo"    # Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    .prologue
    const/4 v2, 0x0

    .line 333
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->updateTextInputInfoBoxes(Z)V

    .line 335
    iget v0, p1, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrSegments:I

    iget v1, p2, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrSegments:I

    if-eq v0, v1, :cond_0

    .line 336
    invoke-direct {p0, v2, p2, v2}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->showMessageInfoToast(ILcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;Z)V

    .line 338
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/Composer;->setComposerListener(Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;)V

    .line 597
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 599
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->setComposerListener(Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;)V

    .line 603
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInput:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 604
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->updateTextInputInfoBoxes(Z)V

    .line 437
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->forceRefreshInfoBoxes()V

    .line 438
    return-void
.end method

.method protected updateTextInputCommandArgs()Z
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x1

    .line 343
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/ui/Composer;->getMessageType()I

    move-result v0

    .line 344
    .local v0, "messageType":I
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/ui/Composer;->getSmsCounterInfo()Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;

    move-result-object v4

    .line 345
    .local v4, "smsCounterInfo":Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;
    const-string v2, ""

    .line 346
    .local v2, "primaryInfo":Ljava/lang/String;
    const-string v3, ""

    .line 347
    .local v3, "secondaryInfo":Ljava/lang/String;
    const/4 v5, 0x0

    .line 349
    .local v5, "updated":Z
    packed-switch v0, :pswitch_data_0

    .line 412
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInputCommandArgs:Landroid/os/Bundle;

    const-string v7, "primary_info"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 414
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInputCommandArgs:Landroid/os/Bundle;

    const-string v7, "primary_info"

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const/4 v5, 0x1

    .line 418
    :cond_1
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInputCommandArgs:Landroid/os/Bundle;

    const-string v7, "secondary_info"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 421
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mTextInputCommandArgs:Landroid/os/Bundle;

    const-string v7, "secondary_info"

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const/4 v5, 0x1

    .line 425
    :cond_2
    return v5

    .line 351
    :pswitch_0
    iget v6, v4, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrSegments:I

    if-lez v6, :cond_0

    .line 352
    iget v6, v4, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrSegments:I

    if-le v6, v8, :cond_3

    .line 353
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mContext:Landroid/content/Context;

    const v7, 0x7f0700c1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v4, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrSegments:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 360
    :cond_3
    iget v6, v4, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrRemainingCharsInSegment:I

    const/16 v7, 0x14

    if-gt v6, v7, :cond_4

    .line 363
    iget v6, v4, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrRemainingCharsInSegment:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 364
    :cond_4
    iget v6, v4, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrSegments:I

    if-ne v6, v10, :cond_5

    .line 367
    const/4 v1, 0x0

    .line 368
    .local v1, "nrSpillOverCharacters":I
    iget v6, v4, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->encoding:I

    packed-switch v6, :pswitch_data_1

    .line 379
    const/4 v1, 0x7

    .line 382
    :goto_1
    iget v6, v4, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrUsedCharsInSegment:I

    add-int/lit8 v7, v1, 0x9

    if-gt v6, v7, :cond_0

    .line 391
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrUsedCharsInSegment:I

    sub-int/2addr v7, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 370
    :pswitch_1
    const/4 v1, 0x3

    .line 371
    goto :goto_1

    .line 374
    :pswitch_2
    const/4 v1, 0x6

    .line 375
    goto :goto_1

    .line 395
    .end local v1    # "nrSpillOverCharacters":I
    :cond_5
    iget v6, v4, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrSegments:I

    if-le v6, v10, :cond_0

    iget v6, v4, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrUsedCharsInSegment:I

    const/16 v7, 0x9

    if-gt v6, v7, :cond_0

    .line 398
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/sonyericsson/conversations/ui/Composer$SmsCounterInfo;->nrUsedCharsInSegment:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 404
    :pswitch_3
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mContext:Landroid/content/Context;

    const v7, 0x7f0700c0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 406
    goto/16 :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 368
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract updateTextInputInfoBoxes(Z)V
.end method
