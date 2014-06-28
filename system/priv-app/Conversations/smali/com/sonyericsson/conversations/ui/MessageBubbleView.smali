.class public Lcom/sonyericsson/conversations/ui/MessageBubbleView;
.super Lcom/sonyericsson/conversations/view/ExpandableLinearLayout;
.source "MessageBubbleView.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/MessageContent;
.implements Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/MessageBubbleView$SetSingleContactImageTask;
    }
.end annotation


# static fields
.field private static final ATTACHMENT_MIMETYPE:I = 0x7f0a007f

.field protected static final ATTACHMENT_URI:I = 0x7f0a007e


# instance fields
.field private mBubbleContent:Landroid/view/View;

.field private mBubbleLayout:Landroid/view/ViewGroup;

.field private mContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

.field private mContextMenu:Landroid/view/ContextMenu;

.field private mDefaultActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

.field private mMessage:Lcom/sonyericsson/conversations/model/Message;

.field private mMessageTimestamp:Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;

.field private mObjectContextListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mSetImageTask:Lcom/sonyericsson/conversations/ui/MessageBubbleView$SetSingleContactImageTask;

.field private mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/view/ExpandableLinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$1;-><init>(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mObjectContextListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 81
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$2;-><init>(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/view/ExpandableLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$1;-><init>(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mObjectContextListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 81
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$2;-><init>(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mThreadId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/model/Message;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonyericsson/conversations/ui/MessageBubbleView;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageBubbleView;
    .param p1, "x1"    # Landroid/view/ContextMenu;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContextMenu:Landroid/view/ContextMenu;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/ui/ConversationContactBadge;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    return-object v0
.end method

.method private setMessageStyleByDirection()V
    .locals 5

    .prologue
    .line 198
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 199
    .local v1, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getAccentColor()I

    move-result v0

    .line 204
    .local v0, "accentColor":I
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Message;->getDirection()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 205
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 215
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 208
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 209
    instance-of v3, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_2

    move-object v3, v1

    .line 210
    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    const v4, 0x7f0a00b7

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 212
    .local v2, "borderDrawable":Landroid/graphics/drawable/Drawable;
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1
.end method


# virtual methods
.method public getActionController()Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mDefaultActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    return-object v0
.end method

.method public getMessage()Lcom/sonyericsson/conversations/model/Message;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    return-object v0
.end method

.method public getTimestampHeaderView()Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessageTimestamp:Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 143
    const v1, 0x7f0a00a2

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 144
    .local v0, "headerStub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessageTimestamp:Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;

    .line 145
    const v1, 0x7f0a009f

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleLayout:Landroid/view/ViewGroup;

    .line 146
    const v1, 0x7f0a009e

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .line 147
    return-void
.end method

.method public onShortClick(Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContextMenu:Landroid/view/ContextMenu;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContextMenu:Landroid/view/ContextMenu;

    invoke-interface {v1}, Landroid/view/ContextMenu;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContextMenu:Landroid/view/ContextMenu;

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    if-eqz p2, :cond_0

    .line 120
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mThreadId:J

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    const/4 v6, 0x0

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;-><init>(Landroid/content/Context;JLcom/sonyericsson/conversations/model/Message;Landroid/net/Uri;ILjava/lang/String;)V

    .line 122
    .local v0, "controller":Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "text/x-vCard"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->saveVCardContact()V

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->viewObject()V

    goto :goto_0
.end method

.method public setBubbleContent(Landroid/view/View;)V
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    .line 151
    return-void
.end method

.method public setContactBadge(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 224
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Participant;->isInCache()Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mSetImageTask:Lcom/sonyericsson/conversations/ui/MessageBubbleView$SetSingleContactImageTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mSetImageTask:Lcom/sonyericsson/conversations/ui/MessageBubbleView$SetSingleContactImageTask;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->getStatus()Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;->FINISHED:Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mSetImageTask:Lcom/sonyericsson/conversations/ui/MessageBubbleView$SetSingleContactImageTask;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/util/PrioritizedAsyncTask;->cancel(Z)Z

    .line 229
    :cond_0
    new-instance v1, Lcom/sonyericsson/conversations/ui/MessageBubbleView$SetSingleContactImageTask;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v1, p0, v2, v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$SetSingleContactImageTask;-><init>(Lcom/sonyericsson/conversations/ui/MessageBubbleView;Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mSetImageTask:Lcom/sonyericsson/conversations/ui/MessageBubbleView$SetSingleContactImageTask;

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mSetImageTask:Lcom/sonyericsson/conversations/ui/MessageBubbleView$SetSingleContactImageTask;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView$SetSingleContactImageTask;->start()V

    .line 235
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContactBadge:Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    invoke-static {v0, p1, v1}, Lcom/sonyericsson/conversations/ui/util/ConversationItemDecorator;->setContactImage(Landroid/content/Context;Ljava/util/List;Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V

    goto :goto_0
.end method

.method public setDateFormatter(Lcom/sonyericsson/conversations/ui/util/DateFormatter;)V
    .locals 1
    .param p1, "dateFormatter"    # Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessageTimestamp:Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->setDateFormatter(Lcom/sonyericsson/conversations/ui/util/DateFormatter;)V

    .line 254
    return-void
.end method

.method public setHighlightPattern(Ljava/util/regex/Pattern;)V
    .locals 1
    .param p1, "highlightPattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    instance-of v0, v0, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    check-cast v0, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 264
    :cond_0
    return-void
.end method

.method public setMessage(Lcom/sonyericsson/conversations/model/Message;J)V
    .locals 8
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "threadId"    # J

    .prologue
    .line 168
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 169
    iput-wide p2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mThreadId:J

    .line 170
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getDefaultMessageOptions(Lcom/sonyericsson/conversations/model/Message;)I

    move-result v5

    move-wide v2, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;-><init>(Landroid/content/Context;JLcom/sonyericsson/conversations/model/Message;I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mDefaultActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .line 172
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setMessageStyleByDirection()V

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessageTimestamp:Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->setMessage(Lcom/sonyericsson/conversations/model/Message;J)V

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessageTimestamp:Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mDefaultActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->setDefaultActionsController(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    instance-of v0, v0, Lcom/sonyericsson/conversations/ui/MessageContent;

    if-eqz v0, :cond_1

    .line 176
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mBubbleContent:Landroid/view/View;

    check-cast v7, Lcom/sonyericsson/conversations/ui/MessageContent;

    .line 177
    .local v7, "content":Lcom/sonyericsson/conversations/ui/MessageContent;
    instance-of v0, v7, Lcom/sonyericsson/conversations/ui/MessageContentClickable;

    if-eqz v0, :cond_0

    move-object v6, v7

    .line 178
    check-cast v6, Lcom/sonyericsson/conversations/ui/MessageContentClickable;

    .line 179
    .local v6, "clickable":Lcom/sonyericsson/conversations/ui/MessageContentClickable;
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mObjectContextListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v6, v0}, Lcom/sonyericsson/conversations/ui/MessageContentClickable;->setOnObjectLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v6, v0}, Lcom/sonyericsson/conversations/ui/MessageContentClickable;->setOnTextLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 181
    invoke-interface {v6, p0}, Lcom/sonyericsson/conversations/ui/MessageContentClickable;->setOnShortClickListener(Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;)V

    .line 183
    .end local v6    # "clickable":Lcom/sonyericsson/conversations/ui/MessageContentClickable;
    :cond_0
    invoke-interface {v7, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/MessageContent;->setMessage(Lcom/sonyericsson/conversations/model/Message;J)V

    .line 185
    .end local v7    # "content":Lcom/sonyericsson/conversations/ui/MessageContent;
    :cond_1
    return-void
.end method

.method public setParticipantStrings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "senderString"    # Ljava/lang/String;
    .param p2, "receiverString"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessageTimestamp:Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->setParticipantStrings(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method
