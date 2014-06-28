.class public abstract Lcom/android/mms/transaction/ConversationService;
.super Landroid/app/Service;
.source "ConversationService.java"


# instance fields
.field private mTheme:Landroid/content/res/Resources$Theme;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/mms/transaction/ConversationService;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/ConversationService;->mTheme:Landroid/content/res/Resources$Theme;

    .line 35
    iget-object v0, p0, Lcom/android/mms/transaction/ConversationService;->mTheme:Landroid/content/res/Resources$Theme;

    const v1, 0x7f0e0004

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/ConversationService;->mTheme:Landroid/content/res/Resources$Theme;

    return-object v0
.end method
