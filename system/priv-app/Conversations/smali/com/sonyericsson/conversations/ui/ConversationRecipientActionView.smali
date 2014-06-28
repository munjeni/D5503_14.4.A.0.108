.class public Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;
.super Landroid/widget/LinearLayout;
.source "ConversationRecipientActionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;,
        Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ParticipantArrayAdapter;,
        Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConversationActionView"


# instance fields
.field private mAddToContactMode:Z

.field private mAddressText:Landroid/widget/TextView;

.field private mCityIdView:Landroid/widget/TextView;

.field private mContactDropdownPopup:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

.field private mContext:Landroid/content/Context;

.field private mParticipantInfoBgDrable:Landroid/graphics/drawable/Drawable;

.field private mParticipantInfoLayout:Landroid/widget/LinearLayout;

.field private mParticipantList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation
.end field

.field private mParticipantListAdapter:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ParticipantArrayAdapter;

.field mRecipientPanelOnClickListener:Landroid/view/View$OnClickListener;

.field private mRefreshTask:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 285
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mAddToContactMode:Z

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mRefreshTask:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;

    .line 224
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$1;-><init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mRecipientPanelOnClickListener:Landroid/view/View$OnClickListener;

    .line 286
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 289
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mAddToContactMode:Z

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mRefreshTask:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;

    .line 224
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$1;-><init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mRecipientPanelOnClickListener:Landroid/view/View$OnClickListener;

    .line 290
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mTitleText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mAddressText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mCityIdView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mAddToContactMode:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mAddToContactMode:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;)Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContactDropdownPopup:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    return-object v0
.end method

.method private asyncRefreshTitleTextAndPicture(Z)V
    .locals 4
    .param p1, "isAnimate"    # Z

    .prologue
    const/4 v1, 0x1

    .line 374
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mRefreshTask:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mRefreshTask:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 378
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;-><init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;Z)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mRefreshTask:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;

    .line 379
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mRefreshTask:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$RefreshTask;

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantList:Ljava/util/ArrayList;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 381
    :cond_1
    return-void
.end method


# virtual methods
.method public collapseSelf()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContactDropdownPopup:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContactDropdownPopup:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContactDropdownPopup:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 371
    :cond_0
    return-void
.end method

.method public expandSelf()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 361
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 362
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mAddToContactMode:Z

    .line 363
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContactDropdownPopup:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;->show()V

    .line 365
    :cond_0
    return-void
.end method

.method public init(Ljava/util/List;Landroid/content/Context;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "participantList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 294
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContext:Landroid/content/Context;

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantList:Ljava/util/ArrayList;

    .line 298
    const v0, 0x7f0a0012

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;

    .line 299
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoBgDrable:Landroid/graphics/drawable/Drawable;

    .line 301
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mTitleText:Landroid/widget/TextView;

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTextDirection(I)V

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mAddressText:Landroid/widget/TextView;

    .line 305
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mAddressText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTextDirection(I)V

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mCityIdView:Landroid/widget/TextView;

    .line 309
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_0

    .line 310
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ParticipantArrayAdapter;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContext:Landroid/content/Context;

    const v2, 0x7f03000d

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ParticipantArrayAdapter;-><init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantListAdapter:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ParticipantArrayAdapter;

    .line 312
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    invoke-direct {v0, p0, p2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;-><init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContactDropdownPopup:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContactDropdownPopup:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantListAdapter:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ParticipantArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 319
    :goto_0
    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->asyncRefreshTitleTextAndPicture(Z)V

    .line 320
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public refresh(Z)V
    .locals 1
    .param p1, "isAnimate"    # Z

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->asyncRefreshTitleTextAndPicture(Z)V

    .line 355
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantListAdapter:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ParticipantArrayAdapter;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantListAdapter:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ParticipantArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 358
    :cond_0
    return-void
.end method

.method public update(Ljava/util/List;Landroid/content/Context;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "participantList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 323
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContext:Landroid/content/Context;

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantList:Ljava/util/ArrayList;

    .line 326
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContactDropdownPopup:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContactDropdownPopup:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_3

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantListAdapter:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ParticipantArrayAdapter;

    if-nez v0, :cond_2

    .line 332
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ParticipantArrayAdapter;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContext:Landroid/content/Context;

    const v2, 0x7f03000d

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ParticipantArrayAdapter;-><init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantListAdapter:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ParticipantArrayAdapter;

    .line 339
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContactDropdownPopup:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    if-nez v0, :cond_1

    .line 340
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    invoke-direct {v0, p0, p2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;-><init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContactDropdownPopup:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mContactDropdownPopup:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ContactDropdownPopup;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantListAdapter:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ParticipantArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 344
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoBgDrable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    :goto_1
    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->refresh(Z)V

    .line 351
    return-void

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantListAdapter:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ParticipantArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 336
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantListAdapter:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView$ParticipantArrayAdapter;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    goto :goto_0

    .line 346
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 347
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->mParticipantInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method
