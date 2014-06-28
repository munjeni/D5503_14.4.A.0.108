.class public Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;
.super Ljava/lang/Object;
.source "SubjectTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;
    }
.end annotation


# instance fields
.field private mAddOrDeleteListener:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;

.field private mComposer:Lcom/sonyericsson/conversations/ui/Composer;

.field private mSubjectInput:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/Composer;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;
    .param p2, "subjectInput"    # Landroid/widget/TextView;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    .line 47
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->mSubjectInput:Landroid/widget/TextView;

    .line 48
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 51
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 54
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 57
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getSubject()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "originalText":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/Composer;->setSubject(Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->mAddOrDeleteListener:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->mAddOrDeleteListener:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;

    invoke-interface {v1}, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;->onAllSubjectCharactersDeleted()V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->mAddOrDeleteListener:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->mAddOrDeleteListener:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;

    invoke-interface {v1}, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;->onFirstSubjectCharactersEntered()V

    goto :goto_0
.end method

.method public setSubjectAddedOrDeletedListener(Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->mAddOrDeleteListener:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;

    .line 79
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->mSubjectInput:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->mSubjectInput:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 87
    return-void
.end method
