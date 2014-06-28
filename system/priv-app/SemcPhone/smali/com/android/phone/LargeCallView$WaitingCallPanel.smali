.class Lcom/android/phone/LargeCallView$WaitingCallPanel;
.super Ljava/lang/Object;
.source "LargeCallView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LargeCallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitingCallPanel"
.end annotation


# instance fields
.field private mCurrentNameOrNumber:Landroid/widget/TextView;

.field private mHeldNameOrNumber:Landroid/widget/TextView;

.field private mNameOrNumber:Landroid/widget/TextView;

.field private mPanel:Landroid/view/View;

.field private mPhoto:Landroid/widget/ImageView;

.field private final mViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/phone/LargeCallView;


# direct methods
.method private constructor <init>(Lcom/android/phone/LargeCallView;)V
    .locals 2

    .prologue
    .line 2222
    iput-object p1, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->this$0:Lcom/android/phone/LargeCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2223
    new-instance v0, Ljava/util/HashMap;

    # getter for: Lcom/android/phone/LargeCallView;->WAITING_PANEL_VIEW_ANCTIONS:[[I
    invoke-static {}, Lcom/android/phone/LargeCallView;->access$900()[[I

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mViewMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/LargeCallView;Lcom/android/phone/LargeCallView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/LargeCallView;
    .param p2, "x1"    # Lcom/android/phone/LargeCallView$1;

    .prologue
    .line 2222
    invoke-direct {p0, p1}, Lcom/android/phone/LargeCallView$WaitingCallPanel;-><init>(Lcom/android/phone/LargeCallView;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/LargeCallView$WaitingCallPanel;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/LargeCallView$WaitingCallPanel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2222
    invoke-direct {p0, p1}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->setBackgroundCallNameOrNumber(Ljava/lang/String;)V

    return-void
.end method

.method private setBackgroundCallNameOrNumber(Ljava/lang/String;)V
    .locals 3
    .param p1, "nameOrNumber"    # Ljava/lang/String;

    .prologue
    .line 2265
    iget-object v0, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mCurrentNameOrNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mNameOrNumber:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2267
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2268
    iget-object v0, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mHeldNameOrNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/LargeCallView;->access$1000(Lcom/android/phone/LargeCallView;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2273
    :goto_0
    return-void

    .line 2271
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mHeldNameOrNumber:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/phone/SomcPhoneUtils;->formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2305
    iget-object v3, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mViewMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2306
    .local v2, "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/view/View;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2307
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 2308
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 2311
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/view/View;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mViewMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 2312
    iput-object v4, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mPanel:Landroid/view/View;

    .line 2313
    iput-object v4, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mNameOrNumber:Landroid/widget/TextView;

    .line 2314
    iget-object v3, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mPhoto:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 2315
    iget-object v3, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2317
    :cond_2
    iput-object v4, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mPhoto:Landroid/widget/ImageView;

    .line 2318
    return-void
.end method

.method public init(Landroid/view/View;)V
    .locals 8
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 2232
    iput-object p1, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mPanel:Landroid/view/View;

    .line 2233
    # getter for: Lcom/android/phone/LargeCallView;->WAITING_PANEL_VIEW_ANCTIONS:[[I
    invoke-static {}, Lcom/android/phone/LargeCallView;->access$900()[[I

    move-result-object v0

    .local v0, "arr$":[[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 2234
    .local v4, "viewAndAction":[I
    iget-object v5, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->this$0:Lcom/android/phone/LargeCallView;

    aget v6, v4, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2235
    .local v3, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mViewMap:Ljava/util/Map;

    aget v6, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2236
    if-nez v3, :cond_0

    .line 2233
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2237
    :cond_0
    new-instance v5, Lcom/android/phone/LargeCallView$WaitingCallPanel$1;

    invoke-direct {v5, p0, v4}, Lcom/android/phone/LargeCallView$WaitingCallPanel$1;-><init>(Lcom/android/phone/LargeCallView$WaitingCallPanel;[I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 2243
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "viewAndAction":[I
    :cond_1
    iget-object v5, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->this$0:Lcom/android/phone/LargeCallView;

    const v6, 0x7f0700dc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mNameOrNumber:Landroid/widget/TextView;

    .line 2244
    iget-object v5, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->this$0:Lcom/android/phone/LargeCallView;

    const v6, 0x7f0700d7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mHeldNameOrNumber:Landroid/widget/TextView;

    .line 2245
    iget-object v5, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->this$0:Lcom/android/phone/LargeCallView;

    const v6, 0x7f0700d9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mCurrentNameOrNumber:Landroid/widget/TextView;

    .line 2246
    iget-object v5, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->this$0:Lcom/android/phone/LargeCallView;

    const v6, 0x7f0700db

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mPhoto:Landroid/widget/ImageView;

    .line 2247
    return-void
.end method

.method public setNameOrNumber(Ljava/lang/String;)V
    .locals 4
    .param p1, "nameOrNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 2254
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2255
    iget-object v0, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mNameOrNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/LargeCallView;->access$1000(Lcom/android/phone/LargeCallView;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2260
    :goto_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mNameOrNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2261
    iget-object v0, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mNameOrNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2262
    return-void

    .line 2258
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mNameOrNumber:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/phone/SomcPhoneUtils;->formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPhoto(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2276
    if-nez p1, :cond_0

    .line 2277
    iget-object v0, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2281
    :goto_0
    return-void

    .line 2279
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mPanel:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2251
    return-void
.end method

.method public showWaitingCall(ZZ)V
    .locals 7
    .param p1, "hideAnswer"    # Z
    .param p2, "showEndHeldCallAt3rdIncomingCall"    # Z

    .prologue
    const v6, 0x7f0700d3

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 2284
    iget-object v2, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mPanel:Landroid/view/View;

    const v3, 0x7f0700d5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2286
    .local v0, "endHeldCallAndEndCurrentCallLayout":Landroid/view/View;
    iget-object v2, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mViewMap:Ljava/util/Map;

    const v3, 0x7f0700da

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2287
    .local v1, "replaceWaitingCallButton":Landroid/view/View;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2288
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2289
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2290
    iget-object v2, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mPanel:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2301
    :goto_0
    iget-object v2, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->this$0:Lcom/android/phone/LargeCallView;

    sget-object v3, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->INCALL:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    const/4 v4, 0x1

    # invokes: Lcom/android/phone/LargeCallView;->configureWidgetMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V
    invoke-static {v2, v3, v4}, Lcom/android/phone/LargeCallView;->access$1400(Lcom/android/phone/LargeCallView;Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V

    .line 2302
    return-void

    .line 2292
    :cond_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2293
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2294
    iget-object v2, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->mPanel:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2295
    iget-object v2, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;
    invoke-static {v2}, Lcom/android/phone/LargeCallView;->access$1100(Lcom/android/phone/LargeCallView;)Lcom/android/phone/SomcIncomingCallView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/SomcIncomingCallView;->setTwoCallSliderMarginBottom()V

    .line 2296
    iget-object v2, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mIsTablet:Z
    invoke-static {v2}, Lcom/android/phone/LargeCallView;->access$1200(Lcom/android/phone/LargeCallView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2297
    iget-object v2, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/phone/LargeCallView;->access$1300(Lcom/android/phone/LargeCallView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2299
    :cond_1
    iget-object v2, p0, Lcom/android/phone/LargeCallView$WaitingCallPanel;->this$0:Lcom/android/phone/LargeCallView;

    # getter for: Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;
    invoke-static {v2}, Lcom/android/phone/LargeCallView;->access$1100(Lcom/android/phone/LargeCallView;)Lcom/android/phone/SomcIncomingCallView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
