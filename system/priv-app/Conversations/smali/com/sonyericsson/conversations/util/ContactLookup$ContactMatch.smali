.class public Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
.super Ljava/lang/Object;
.source "ContactLookup.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/util/ContactLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactMatch"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x684888ff7d35f5f7L


# instance fields
.field public final address:Ljava/lang/String;

.field public final contactId:J

.field private mDirty:Z

.field public final mIsMe:Z

.field public final mPhotoId:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "contactId"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "photoId"    # Ljava/lang/String;
    .param p6, "isMe"    # Z

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-wide p1, p0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->contactId:J

    .line 77
    iput-object p3, p0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->name:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->address:Ljava/lang/String;

    .line 79
    iput-object p5, p0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->mPhotoId:Ljava/lang/String;

    .line 80
    iput-boolean p6, p0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->mIsMe:Z

    .line 81
    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sonyericsson/conversations/util/ContactLookup$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # Ljava/lang/String;
    .param p6, "x4"    # Z
    .param p7, "x5"    # Lcom/sonyericsson/conversations/util/ContactLookup$1;

    .prologue
    .line 59
    invoke-direct/range {p0 .. p6}, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public declared-synchronized isDirty()Z
    .locals 1

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDirty()V
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
