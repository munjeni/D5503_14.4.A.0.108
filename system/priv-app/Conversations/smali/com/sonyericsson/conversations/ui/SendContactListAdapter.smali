.class public Lcom/sonyericsson/conversations/ui/SendContactListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SendContactListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;
    }
.end annotation


# static fields
.field public static final PLAIN_TEXT:I = 0x1

.field public static final V_CARD:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SendContactListAdapter;->mItems:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SendContactListAdapter;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private createSelectLocationItem(J)Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 77
    long-to-int v0, p1

    packed-switch v0, :pswitch_data_0

    .line 87
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 79
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SendContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070167

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;-><init>(JLjava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;

    const-wide/16 v1, 0x1

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SendContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070168

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;-><init>(JLjava/lang/CharSequence;)V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addAllMenuItems()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SendContactListAdapter;->mItems:Ljava/util/ArrayList;

    const-wide/16 v1, 0x1

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/ui/SendContactListAdapter;->createSelectLocationItem(J)Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SendContactListAdapter;->mItems:Ljava/util/ArrayList;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/ui/SendContactListAdapter;->createSelectLocationItem(J)Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SendContactListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SendContactListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SendContactListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;

    # getter for: Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;->mId:J
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;->access$000(Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/SendContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;

    .line 52
    .local v1, "item":Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/SendContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 53
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030005

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 54
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0a000c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 56
    .local v2, "text":Landroid/widget/TextView;
    # getter for: Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;->mLabel:Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;->access$100(Lcom/sonyericsson/conversations/ui/SendContactListAdapter$SendContactItem;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-object v3
.end method

.method public removeAllMenuItems()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SendContactListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 66
    return-void
.end method
