.class public Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;
.super Ljava/lang/Object;
.source "IntentData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/persist/IntentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendIntentData"
.end annotation


# static fields
.field public static final SEND_INTENT_DATA_FORWARD_TYPE:I = 0x2

.field public static final SEND_INTENT_DATA_REGULAR_TYPE:I = 0x0

.field public static final SEND_INTENT_DATA_REPLY_TO_ALL_TYPE:I = 0x1


# instance fields
.field public body:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public contentUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public forceMms:Z

.field public forwardThreadid:J

.field public forwardedMessageUri:Landroid/net/Uri;

.field public needCheckContent:Z

.field public replyAllMessageUri:Landroid/net/Uri;

.field public subject:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentUris:Ljava/util/ArrayList;

    .line 66
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x1

    .line 75
    .local v0, "isEmpty":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    .line 78
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->subject:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->subject:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    .line 81
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 82
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    .line 84
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 87
    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->forwardedMessageUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 88
    const/4 v0, 0x0

    .line 90
    :cond_4
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->replyAllMessageUri:Landroid/net/Uri;

    if-eqz v1, :cond_5

    .line 91
    const/4 v0, 0x0

    .line 93
    :cond_5
    return v0
.end method
