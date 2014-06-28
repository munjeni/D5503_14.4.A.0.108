.class Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;
.super Landroid/os/AsyncTask;
.source "RecentContactsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopulateAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private label:Ljava/lang/CharSequence;

.field private name:Ljava/lang/String;

.field private tLabel:Landroid/widget/TextView;

.field private tName:Landroid/widget/TextView;

.field private tNumber:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "address"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 107
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->address:Ljava/lang/String;

    .line 108
    iget-object v0, p1, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;->mRecipientsEditorModel:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->getRecentContactNameMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->name:Ljava/lang/String;

    .line 109
    iget-object v0, p1, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;->mRecipientsEditorModel:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->getRecentContactLabelMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->label:Ljava/lang/CharSequence;

    .line 110
    const v0, 0x7f0a0009

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->tNumber:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0a0007

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->tName:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f0a0002

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->tLabel:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->tNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->tName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->tLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 92
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;->mRecipientsEditorModel:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->getContactLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->label:Ljava/lang/CharSequence;

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter;->mRecipientsEditorModel:Lcom/sonyericsson/conversations/model/RecipientsEditorModel;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/RecipientsEditorModel;->getRecentContactLabelMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->address:Ljava/lang/String;

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->label:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->label:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 92
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->populate()V

    .line 154
    return-void
.end method

.method public final populate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->tNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->tName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->tName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->label:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->label:Ljava/lang/CharSequence;

    const-string v1, "\u00a0"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->tLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->tLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 149
    :goto_1
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->tName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->tName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->tLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->tLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecentContactsAdapter$PopulateAsyncTask;->tNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
