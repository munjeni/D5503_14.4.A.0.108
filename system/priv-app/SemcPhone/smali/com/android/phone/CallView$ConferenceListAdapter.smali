.class public Lcom/android/phone/CallView$ConferenceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CallView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConferenceListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;
    }
.end annotation


# instance fields
.field private mCanSeparate:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/phone/CallView;


# direct methods
.method constructor <init>(Lcom/android/phone/CallView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/phone/CallView$ConferenceListAdapter;->this$0:Lcom/android/phone/CallView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 662
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/phone/CallView$ConferenceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 664
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/phone/CallView$ConferenceListAdapter;->this$0:Lcom/android/phone/CallView;

    iget-object v0, v0, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallView$ConferenceListAdapter;->this$0:Lcom/android/phone/CallView;

    iget-object v0, v0, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/phone/CallView$ConferenceListAdapter;->this$0:Lcom/android/phone/CallView;

    iget-object v0, v0, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallView$ConferenceListAdapter;->this$0:Lcom/android/phone/CallView;

    iget-object v0, v0, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallView$ConferenceCallItem;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 679
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 684
    if-nez p2, :cond_0

    .line 685
    iget-object v4, p0, Lcom/android/phone/CallView$ConferenceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030017

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 687
    new-instance v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;

    invoke-direct {v2, p0}, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;-><init>(Lcom/android/phone/CallView$ConferenceListAdapter;)V

    .line 688
    .local v2, "itemViews":Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;
    const v4, 0x7f070059

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->nameText:Landroid/widget/TextView;

    .line 689
    const v4, 0x7f07005a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->numberText:Landroid/widget/TextView;

    .line 691
    const v4, 0x7f07005b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->additionalCallInfoText:Landroid/widget/TextView;

    .line 693
    const v4, 0x7f07005c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->infoText:Landroid/widget/TextView;

    .line 695
    const v4, 0x7f07005e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->disconnectButton:Landroid/widget/ImageButton;

    .line 697
    const v4, 0x7f07005d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->contactNumberIconView:Landroid/widget/ImageView;

    .line 699
    const v4, 0x7f070058

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->callerInfoPanel:Landroid/widget/RelativeLayout;

    .line 701
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 706
    :goto_0
    iget-object v4, p0, Lcom/android/phone/CallView$ConferenceListAdapter;->this$0:Lcom/android/phone/CallView;

    iget-object v4, v4, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    if-nez v4, :cond_1

    .line 763
    :goto_1
    return-object p2

    .line 703
    .end local v2    # "itemViews":Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;

    .restart local v2    # "itemViews":Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;
    goto :goto_0

    .line 707
    :cond_1
    iget-object v4, p0, Lcom/android/phone/CallView$ConferenceListAdapter;->this$0:Lcom/android/phone/CallView;

    iget-object v4, v4, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallView$ConferenceCallItem;

    .line 709
    .local v1, "item":Lcom/android/phone/CallView$ConferenceCallItem;
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->nameText:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/android/phone/CallView$ConferenceCallItem;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    iget-object v4, v1, Lcom/android/phone/CallView$ConferenceCallItem;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 712
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 719
    :goto_2
    iget-object v4, v1, Lcom/android/phone/CallView$ConferenceCallItem;->additionalCallInfo:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 720
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->additionalCallInfoText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 726
    :goto_3
    iget-object v4, v1, Lcom/android/phone/CallView$ConferenceCallItem;->contactNumberIcon:Landroid/graphics/Bitmap;

    if-nez v4, :cond_4

    .line 727
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->contactNumberIconView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 728
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->contactNumberIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 735
    :goto_4
    new-instance v0, Lcom/android/phone/CallView$ConferenceListAdapter$1;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallView$ConferenceListAdapter$1;-><init>(Lcom/android/phone/CallView$ConferenceListAdapter;Lcom/android/phone/CallView$ConferenceCallItem;)V

    .line 741
    .local v0, "disconnectConnection":Landroid/view/View$OnClickListener;
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->disconnectButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 743
    iget-boolean v4, p0, Lcom/android/phone/CallView$ConferenceListAdapter;->mCanSeparate:Z

    if-eqz v4, :cond_5

    .line 744
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->infoText:Landroid/widget/TextView;

    const v5, 0x7f0b00a9

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 745
    new-instance v3, Lcom/android/phone/CallView$ConferenceListAdapter$2;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/CallView$ConferenceListAdapter$2;-><init>(Lcom/android/phone/CallView$ConferenceListAdapter;Lcom/android/phone/CallView$ConferenceCallItem;)V

    .line 751
    .local v3, "separateConnection":Landroid/view/View$OnClickListener;
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->callerInfoPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 714
    .end local v0    # "disconnectConnection":Landroid/view/View$OnClickListener;
    .end local v3    # "separateConnection":Landroid/view/View$OnClickListener;
    :cond_2
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->numberText:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/android/phone/CallView$ConferenceCallItem;->number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 722
    :cond_3
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->additionalCallInfoText:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/android/phone/CallView$ConferenceCallItem;->additionalCallInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->additionalCallInfoText:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 730
    :cond_4
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->contactNumberIconView:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/android/phone/CallView$ConferenceCallItem;->contactNumberIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 731
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->contactNumberIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 753
    .restart local v0    # "disconnectConnection":Landroid/view/View$OnClickListener;
    :cond_5
    iget-object v4, p0, Lcom/android/phone/CallView$ConferenceListAdapter;->this$0:Lcom/android/phone/CallView;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 755
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->infoText:Landroid/widget/TextView;

    const v5, 0x7f0b00ab

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 758
    :cond_6
    iget-object v4, v2, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->infoText:Landroid/widget/TextView;

    const v5, 0x7f0b00aa

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1
.end method

.method public setCanSeparate(Z)V
    .locals 0
    .param p1, "canSeparate"    # Z

    .prologue
    .line 667
    iput-boolean p1, p0, Lcom/android/phone/CallView$ConferenceListAdapter;->mCanSeparate:Z

    .line 668
    return-void
.end method
