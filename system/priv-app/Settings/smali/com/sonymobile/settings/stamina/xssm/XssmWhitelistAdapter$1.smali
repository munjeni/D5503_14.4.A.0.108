.class Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;
.super Ljava/lang/Object;
.source "XssmWhitelistAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;->this$0:Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    # getter for: Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->access$000(Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;->onItemClick(Landroid/content/Context;)V

    .line 37
    return-void
.end method
