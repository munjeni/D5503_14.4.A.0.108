.class public Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TextTemplateListAdapter.java"


# static fields
.field public static final ADAPTER_MODE_MULTIPLE_SELECT:I = 0x2

.field public static final ADAPTER_MODE_NORMAL:I = 0x1

.field private static final TEXT_TEMPLATE_ID_START:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mItems:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mContext:Landroid/content/Context;

    .line 42
    iput p2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mMode:I

    .line 43
    return-void
.end method

.method private getNewId()I
    .locals 4

    .prologue
    .line 121
    const/4 v1, 0x1

    .line 122
    .local v1, "id":I
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->getCount()I

    move-result v0

    .line 123
    .local v0, "count":I
    if-eqz v0, :cond_0

    .line 124
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mItems:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/template/sms/TextTemplate;

    invoke-virtual {v2}, Lcom/sonymobile/template/sms/TextTemplate;->getId()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 126
    :cond_0
    return v1
.end method


# virtual methods
.method public addTextTemplate(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Lcom/sonymobile/template/sms/TextTemplate;

    invoke-direct {v0}, Lcom/sonymobile/template/sms/TextTemplate;-><init>()V

    .line 75
    .local v0, "newTemplate":Lcom/sonymobile/template/sms/TextTemplate;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->getNewId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/template/sms/TextTemplate;->setId(I)V

    .line 76
    invoke-virtual {v0, p1}, Lcom/sonymobile/template/sms/TextTemplate;->setText(Ljava/lang/String;)V

    .line 77
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/template/sms/TextTemplate;->setAsUserDefinedTemplate(Z)V

    .line 78
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 81
    return-void
.end method

.method public editTextTemplate(ILjava/lang/String;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/template/sms/TextTemplate;

    .line 86
    .local v0, "originalTemplate":Lcom/sonymobile/template/sms/TextTemplate;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, p2}, Lcom/sonymobile/template/sms/TextTemplate;->setText(Ljava/lang/String;)V

    .line 88
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/template/sms/TextTemplate;->setAsUserDefinedTemplate(Z)V

    .line 89
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mItems:Ljava/util/List;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 93
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/template/sms/TextTemplate;

    invoke-virtual {v0}, Lcom/sonymobile/template/sms/TextTemplate;->getId()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/template/sms/TextTemplate;

    .line 48
    .local v1, "template":Lcom/sonymobile/template/sms/TextTemplate;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 49
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030025

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;

    .line 51
    .local v2, "view":Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;
    invoke-virtual {v1}, Lcom/sonymobile/template/sms/TextTemplate;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;->setTemplateText(Ljava/lang/String;)V

    .line 53
    iget v3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListItemView;->setCheckableMode(Z)V

    .line 54
    return-object v2

    .line 53
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public removeTextTemplates(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "templateIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 97
    .local v2, "id":I
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/template/sms/TextTemplate;

    .line 98
    .local v3, "item":Lcom/sonymobile/template/sms/TextTemplate;
    invoke-virtual {v3}, Lcom/sonymobile/template/sms/TextTemplate;->getId()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 99
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":I
    .end local v3    # "item":Lcom/sonymobile/template/sms/TextTemplate;
    :cond_2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 106
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/template/sms/TextTemplate;>;"
    if-eqz p1, :cond_0

    .line 110
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mItems:Ljava/util/List;

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 113
    return-void
.end method

.method public switchCursorAdapterMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->mMode:I

    .line 131
    return-void
.end method
