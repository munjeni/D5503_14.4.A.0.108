.class public Lcom/android/phone/ContextualRejectMsg;
.super Lcom/android/phone/ItemWithIcon;
.source "ContextualRejectMsg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ContextualRejectMsg$Probability;
    }
.end annotation


# instance fields
.field private mProbability:Lcom/android/phone/ContextualRejectMsg$Probability;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/phone/ContextualRejectMsg$Probability;I)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "probability"    # Lcom/android/phone/ContextualRejectMsg$Probability;
    .param p3, "iconResId"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p3}, Lcom/android/phone/ItemWithIcon;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p2, p0, Lcom/android/phone/ContextualRejectMsg;->mProbability:Lcom/android/phone/ContextualRejectMsg$Probability;

    .line 34
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    if-ne p0, p1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v1

    .line 43
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 44
    check-cast v0, Lcom/android/phone/ContextualRejectMsg;

    .line 45
    .local v0, "other":Lcom/android/phone/ContextualRejectMsg;
    invoke-virtual {p0}, Lcom/android/phone/ItemWithIcon;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/phone/ItemWithIcon;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/ItemWithIcon;->getIcon()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/phone/ItemWithIcon;->getIcon()I

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/ItemWithIcon;->getAction()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/phone/ItemWithIcon;->getAction()I

    move-result v4

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    .line 49
    goto :goto_0
.end method

.method public getProbability()Lcom/android/phone/ContextualRejectMsg$Probability;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/phone/ContextualRejectMsg;->mProbability:Lcom/android/phone/ContextualRejectMsg$Probability;

    return-object v0
.end method

.method public final declared-synchronized hashCode()I
    .locals 3

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/ItemWithIcon;->getIcon()I

    move-result v1

    add-int/lit8 v0, v1, 0x11

    .line 61
    .local v0, "hash":I
    invoke-virtual {p0}, Lcom/android/phone/ItemWithIcon;->getMsg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/phone/ItemWithIcon;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 66
    :goto_0
    mul-int/lit8 v1, v0, 0x11

    invoke-virtual {p0}, Lcom/android/phone/ItemWithIcon;->getAction()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    add-int v0, v1, v2

    .line 67
    monitor-exit p0

    return v0

    .line 64
    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    goto :goto_0

    .line 60
    .end local v0    # "hash":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
