.class public Lcom/sonymobile/superstamina/xssm/WhiteListGroups;
.super Ljava/lang/Object;
.source "WhiteListGroups.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/superstamina/xssm/WhiteListGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/superstamina/xssm/WhitelistController;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "whiteListController"    # Lcom/sonymobile/superstamina/xssm/WhitelistController;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhiteListGroups;->mGroups:Ljava/util/ArrayList;

    .line 19
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/WhiteListGroups;->mContext:Landroid/content/Context;

    .line 22
    iget-object v0, p0, Lcom/sonymobile/superstamina/xssm/WhiteListGroups;->mGroups:Ljava/util/ArrayList;

    new-instance v1, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;

    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/WhiteListGroups;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lcom/sonymobile/superstamina/xssm/WiFiCallingWhiteListGroup;-><init>(Landroid/content/Context;Lcom/sonymobile/superstamina/xssm/WhitelistController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    .line 26
    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/WhiteListGroups;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/superstamina/xssm/WhiteListGroup;

    .line 27
    .local v0, "group":Lcom/sonymobile/superstamina/xssm/WhiteListGroup;
    invoke-interface {v0}, Lcom/sonymobile/superstamina/xssm/WhiteListGroup;->init()V

    goto :goto_0

    .line 29
    .end local v0    # "group":Lcom/sonymobile/superstamina/xssm/WhiteListGroup;
    :cond_0
    return-void
.end method
