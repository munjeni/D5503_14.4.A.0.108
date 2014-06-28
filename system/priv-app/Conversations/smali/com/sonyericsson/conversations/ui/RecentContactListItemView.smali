.class public Lcom/sonyericsson/conversations/ui/RecentContactListItemView;
.super Landroid/widget/LinearLayout;
.source "RecentContactListItemView.java"


# instance fields
.field private mTask:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactListItemView;->mTask:Landroid/os/AsyncTask;

    .line 18
    return-void
.end method


# virtual methods
.method public getAsyncTask()Landroid/os/AsyncTask;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactListItemView;->mTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method public setAsyncTask(Landroid/os/AsyncTask;)V
    .locals 0
    .param p1, "t"    # Landroid/os/AsyncTask;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecentContactListItemView;->mTask:Landroid/os/AsyncTask;

    .line 22
    return-void
.end method
