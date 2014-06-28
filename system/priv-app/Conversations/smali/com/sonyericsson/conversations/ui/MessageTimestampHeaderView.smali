.class public Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;
.super Landroid/widget/LinearLayout;
.source "MessageTimestampHeaderView.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/MessageContent;


# instance fields
.field private defaultController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

.field private mAnimationShowing:Z

.field private mAttachmentIndicator:Landroid/widget/ImageView;

.field private mDateFormatter:Lcom/sonyericsson/conversations/ui/util/DateFormatter;

.field private mHasWallpaper:Z

.field private mHeaderIcon:Landroid/widget/ImageView;

.field private mHeaderText:Landroid/widget/TextView;

.field private mMessage:Lcom/sonyericsson/conversations/model/Message;

.field private mPriorityIcon:Landroid/widget/ImageView;

.field private mReceiverString:Ljava/lang/String;

.field private mSenderString:Ljava/lang/String;

.field private mShowStarredIconAnim:Landroid/view/animation/Animation;

.field private mStar:Landroid/widget/ImageView;

.field private mStarOutLight:Landroid/widget/ImageView;

.field private mStarOutLightDimAnim:Landroid/view/animation/Animation;

.field private mStarOutLightShowAnim:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mAnimationShowing:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mAnimationShowing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->defaultController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mStarOutLightDimAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mStarOutLight:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getDeliveredIconId()I
    .locals 2

    .prologue
    .line 287
    const v0, 0x7f020019

    .line 288
    .local v0, "deliveredIconId":I
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mHasWallpaper:Z

    if-eqz v1, :cond_0

    .line 289
    const v0, 0x7f02001a

    .line 291
    :cond_0
    return v0
.end method

.method private getGroupIconId()I
    .locals 2

    .prologue
    .line 295
    const v0, 0x7f020033

    .line 296
    .local v0, "groupIconId":I
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mHasWallpaper:Z

    if-eqz v1, :cond_0

    .line 297
    const v0, 0x7f020034

    .line 299
    :cond_0
    return v0
.end method

.method private getHeaderViewTextColor()I
    .locals 2

    .prologue
    .line 279
    const v0, 0x7f0c0009

    .line 280
    .local v0, "textColorId":I
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mHasWallpaper:Z

    if-eqz v1, :cond_0

    .line 281
    const v0, 0x7f0c000c

    .line 283
    :cond_0
    return v0
.end method

.method private getMessageHeaderText(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 190
    iget v4, p2, Lcom/sonyericsson/conversations/model/Message;->box:I

    packed-switch v4, :pswitch_data_0

    .line 204
    :pswitch_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mDateFormatter:Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    iget-wide v5, p2, Lcom/sonyericsson/conversations/model/Message;->date:J

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->format(JZ)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "headerText":Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->showParticipantsInMessageHeader()Z

    move-result v4

    if-nez v4, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-object v0

    .line 192
    .end local v0    # "headerText":Ljava/lang/String;
    :pswitch_1
    const v4, 0x7f0700a2

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    .restart local v0    # "headerText":Ljava/lang/String;
    goto :goto_0

    .line 196
    .end local v0    # "headerText":Ljava/lang/String;
    :pswitch_2
    const v4, 0x7f0700a1

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    .restart local v0    # "headerText":Ljava/lang/String;
    goto :goto_0

    .line 200
    .end local v0    # "headerText":Ljava/lang/String;
    :pswitch_3
    const v4, 0x7f0700a0

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    .restart local v0    # "headerText":Ljava/lang/String;
    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/model/Message;->getDirection()I

    move-result v4

    if-nez v4, :cond_2

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mSenderString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 211
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSenderNameVisible()Z

    move-result v3

    .line 212
    .local v3, "senderNameVisible":Z
    instance-of v4, p2, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v4, :cond_4

    move-object v1, p2

    .line 214
    check-cast v1, Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 215
    .local v1, "mms":Lcom/sonyericsson/conversations/model/MmsMessage;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->fetchParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    move-result-object v2

    .line 216
    .local v2, "pi":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->hasMultipleRecipients()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mReceiverString:Ljava/lang/String;

    invoke-direct {p0, v1, v5}, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->messageHeaderTextForMms(Lcom/sonyericsson/conversations/model/MmsMessage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 219
    .end local v1    # "mms":Lcom/sonyericsson/conversations/model/MmsMessage;
    .end local v2    # "pi":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    :cond_4
    if-eqz v3, :cond_0

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mReceiverString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getUnTaggedStarIconId()I
    .locals 2

    .prologue
    .line 303
    const v0, 0x7f020011

    .line 304
    .local v0, "unTaggedStarIconId":I
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mHasWallpaper:Z

    if-eqz v1, :cond_0

    .line 305
    const v0, 0x7f020012

    .line 307
    :cond_0
    return v0
.end method

.method private initStarAnimation()V
    .locals 3

    .prologue
    .line 315
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 316
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mStarOutLightShowAnim:Landroid/view/animation/Animation;

    if-nez v1, :cond_1

    .line 320
    const v1, 0x7f040004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mStarOutLightShowAnim:Landroid/view/animation/Animation;

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mStarOutLight:Landroid/widget/ImageView;

    const v2, 0x7f020013

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 324
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mStarOutLightDimAnim:Landroid/view/animation/Animation;

    if-nez v1, :cond_2

    .line 325
    const v1, 0x7f040005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mStarOutLightDimAnim:Landroid/view/animation/Animation;

    .line 327
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mStarOutLightShowAnim:Landroid/view/animation/Animation;

    new-instance v2, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView$2;-><init>(Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 338
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mStarOutLightDimAnim:Landroid/view/animation/Animation;

    new-instance v2, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView$3;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView$3;-><init>(Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 351
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mShowStarredIconAnim:Landroid/view/animation/Animation;

    if-nez v1, :cond_3

    .line 352
    const v1, 0x7f040006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mShowStarredIconAnim:Landroid/view/animation/Animation;

    .line 354
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mShowStarredIconAnim:Landroid/view/animation/Animation;

    new-instance v2, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView$4;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView$4;-><init>(Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 366
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mAnimationShowing:Z

    goto :goto_0
.end method

.method private messageHeaderTextForMms(Lcom/sonyericsson/conversations/model/MmsMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/MmsMessage;
    .param p2, "receiverString"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->fetchParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    move-result-object v2

    .line 237
    .local v2, "pi":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    const-string v0, ""

    .line 238
    .local v0, "headerText":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->hasMultipleRecipients()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 239
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->getSender()Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Participant;->getPersonName()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "personName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->getSender()Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Participant;->getPersonName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    .end local v1    # "personName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 248
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setIcons()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "headerIcon":I
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    iget v2, v2, Lcom/sonyericsson/conversations/model/Message;->box:I

    if-ne v2, v5, :cond_2

    .line 105
    const v0, 0x7f020018

    .line 144
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 145
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    iget v2, v2, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    if-ne v2, v3, :cond_5

    .line 153
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mStar:Landroid/widget/ImageView;

    const v3, 0x7f020014

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    :goto_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mStar:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mStarOutLight:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->getPriority()I

    move-result v2

    if-nez v2, :cond_6

    .line 162
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mPriorityIcon:Landroid/widget/ImageView;

    const v3, 0x7f02003f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mPriorityIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    :goto_3
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v2, v2, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v2, :cond_1

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v2

    const-string v3, "semc_pref_key_enable_attachment_indicator"

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v2, Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->isFileAttached()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mAttachmentIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    :cond_1
    return-void

    .line 113
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    iget v2, v2, Lcom/sonyericsson/conversations/model/Message;->deliveryStatus:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 130
    :pswitch_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->getDirection()I

    move-result v2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v2, v2, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v2, Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->fetchParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    move-result-object v1

    .line 134
    .local v1, "pi":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->hasMultipleRecipients()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->getGroupIconId()I

    move-result v0

    goto/16 :goto_0

    .line 115
    .end local v1    # "pi":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->getDirection()I

    move-result v2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    instance-of v2, v2, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v2, :cond_3

    .line 116
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v2, Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->fetchParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    move-result-object v1

    .line 117
    .restart local v1    # "pi":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->hasMultipleRecipients()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->getGroupIconId()I

    move-result v0

    goto/16 :goto_0

    .line 121
    .end local v1    # "pi":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->getDeliveredIconId()I

    move-result v0

    .line 123
    goto/16 :goto_0

    .line 126
    :pswitch_2
    const v0, 0x7f020018

    .line 127
    goto/16 :goto_0

    .line 147
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 155
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mStar:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->getUnTaggedStarIconId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 164
    :cond_6
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->getPriority()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 165
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mPriorityIcon:Landroid/widget/ImageView;

    const v3, 0x7f020040

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mPriorityIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 168
    :cond_7
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mPriorityIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 68
    const v0, 0x7f0a00ae

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mHeaderIcon:Landroid/widget/ImageView;

    .line 69
    const v0, 0x7f0a00af

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mHeaderText:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f0a00b0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mPriorityIcon:Landroid/widget/ImageView;

    .line 71
    const v0, 0x7f0a00b1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mAttachmentIndicator:Landroid/widget/ImageView;

    .line 72
    const v0, 0x7f0a00b3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mStarOutLight:Landroid/widget/ImageView;

    .line 73
    const v0, 0x7f0a00b4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mStar:Landroid/widget/ImageView;

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mStar:Landroid/widget/ImageView;

    new-instance v1, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView$1;-><init>(Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method public setDateFormatter(Lcom/sonyericsson/conversations/ui/util/DateFormatter;)V
    .locals 0
    .param p1, "dateFormatter"    # Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mDateFormatter:Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    .line 260
    return-void
.end method

.method public setDefaultActionsController(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V
    .locals 0
    .param p1, "controller"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->defaultController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .line 312
    return-void
.end method

.method public setMessage(Lcom/sonyericsson/conversations/model/Message;J)V
    .locals 4
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "threadId"    # J

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 87
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 88
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 92
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    move-result-object v2

    invoke-virtual {v2, v0, p2, p3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->hasWallpaper(Landroid/content/Context;J)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mHasWallpaper:Z

    .line 93
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->setIcons()V

    .line 94
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mHeaderText:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->getMessageHeaderText(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mHeaderText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->getHeaderViewTextColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setParticipantStrings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "senderString"    # Ljava/lang/String;
    .param p2, "receiverString"    # Ljava/lang/String;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mSenderString:Ljava/lang/String;

    .line 255
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mReceiverString:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public starMessageWithAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mStarOutLightShowAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->initStarAnimation()V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    iget v0, v0, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    if-ne v0, v2, :cond_1

    .line 268
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mStar:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->getUnTaggedStarIconId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mStar:Landroid/widget/ImageView;

    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mStarOutLight:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mStarOutLightShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mStarOutLight:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mStar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mShowStarredIconAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 274
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mAnimationShowing:Z

    goto :goto_0
.end method
