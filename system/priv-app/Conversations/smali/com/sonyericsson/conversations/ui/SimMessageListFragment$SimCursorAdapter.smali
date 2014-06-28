.class Lcom/sonyericsson/conversations/ui/SimMessageListFragment$SimCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "SimMessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/SimMessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimCursorAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 80
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 84
    const v5, 0x7f0a008a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    .local v1, "addressView":Landroid/widget/TextView;
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Landroid/view/View;->setTextDirection(I)V

    .line 86
    const v5, 0x7f0a008b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 88
    .local v3, "bodyView":Landroid/widget/TextView;
    const-string v5, "address"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "address":Ljava/lang/String;
    const-string v5, "body"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "body":Ljava/lang/String;
    new-instance v5, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v5, v0}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v5}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->format(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "displayName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 100
    const v0, 0x7f030022

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
