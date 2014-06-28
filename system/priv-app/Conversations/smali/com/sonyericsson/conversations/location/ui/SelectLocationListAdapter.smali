.class public Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectLocationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;
    }
.end annotation


# static fields
.field public static final CURRENT_LOCATION:I = 0x0

.field public static final EDIT_MAP:I = 0x5

.field public static final MANUALLY_INSERT_ADDRESS:I = 0x3


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;->mItems:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private createSelectLocationItem(J)Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 104
    long-to-int v0, p1

    packed-switch v0, :pswitch_data_0

    .line 126
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 106
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070112

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020026

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;-><init>(JLjava/lang/CharSequence;I)V

    goto :goto_0

    .line 118
    :pswitch_2
    new-instance v0, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;

    const-wide/16 v1, 0x3

    iget-object v3, p0, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070113

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020029

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;-><init>(JLjava/lang/CharSequence;I)V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addAllMenuItems()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;->mItems:Ljava/util/ArrayList;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;->createSelectLocationItem(J)Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;->mItems:Ljava/util/ArrayList;

    const-wide/16 v1, 0x3

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;->createSelectLocationItem(J)Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;

    # getter for: Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;->mId:J
    invoke-static {v0}, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;->access$000(Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;

    .line 74
    .local v2, "item":Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;
    iget-object v5, p0, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 75
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030005

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 76
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0a000c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 77
    .local v3, "text":Landroid/widget/TextView;
    const v5, 0x7f0a000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 79
    .local v0, "icon":Landroid/widget/ImageView;
    # getter for: Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;->mLabel:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;->access$100(Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    # getter for: Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;->mIcon:I
    invoke-static {v2}, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;->access$200(Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter$SelectLocationItem;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    return-object v4
.end method

.method public removeAllMenuItems()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 90
    return-void
.end method
