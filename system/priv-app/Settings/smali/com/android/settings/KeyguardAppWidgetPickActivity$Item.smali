.class public Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;
.super Ljava/lang/Object;
.source "KeyguardAppWidgetPickActivity.java"

# interfaces
.implements Lcom/android/settings/AppWidgetLoader$LabelledItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/KeyguardAppWidgetPickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;
    }
.end annotation


# instance fields
.field appWidgetPreviewId:I

.field className:Ljava/lang/String;

.field extras:Landroid/os/Bundle;

.field iconId:I

.field label:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mWidgetPreviewLoader:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;

.field packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p2, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->label:Ljava/lang/CharSequence;

    .line 163
    iput-object p1, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->mContext:Landroid/content/Context;

    .line 164
    return-void
.end method


# virtual methods
.method cancelLoadingWidgetPreview()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->mWidgetPreviewLoader:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->mWidgetPreviewLoader:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->mWidgetPreviewLoader:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;

    .line 176
    :cond_0
    return-void
.end method

.method getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 184
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 185
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->className:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    iget-object v1, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 196
    :cond_0
    :goto_0
    return-object v0

    .line 193
    :cond_1
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const-string v1, "android.intent.extra.shortcut.NAME"

    iget-object v2, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method loadWidgetPreview(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 167
    new-instance v0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;

    iget-object v1, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;-><init>(Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;Landroid/content/Context;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->mWidgetPreviewLoader:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;

    .line 168
    iget-object v1, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->mWidgetPreviewLoader:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;

    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 169
    return-void
.end method
