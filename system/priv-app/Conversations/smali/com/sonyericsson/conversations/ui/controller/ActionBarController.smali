.class public Lcom/sonyericsson/conversations/ui/controller/ActionBarController;
.super Ljava/lang/Object;
.source "ActionBarController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarController"


# instance fields
.field protected mActionBar:Landroid/app/ActionBar;

.field protected mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-eqz p1, :cond_0

    .line 20
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActivity:Landroid/app/Activity;

    .line 21
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    .line 26
    return-void

    .line 23
    :cond_0
    const-string v0, "ActionBarController"

    const-string v1, "ActionBarController created with null activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ActionBarController created with null activity"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public initActionBar()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public updateActionBar()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public updateSearchMode()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method
