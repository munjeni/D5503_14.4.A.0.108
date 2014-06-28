.class public Lcom/android/mms/transaction/DefaultRetryScheme;
.super Lcom/android/mms/transaction/AbstractRetryScheme;
.source "DefaultRetryScheme.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "DefaultRetryScheme"

.field private static final sDefaultRetryScheme:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xea60
        0x493e0
        0x927c0
        0x1b7740
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "errorType"    # I

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/mms/transaction/DefaultRetryScheme;-><init>(Landroid/content/Context;III)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "retriedTimes"    # I
    .param p4, "errorType"    # I

    .prologue
    .line 41
    invoke-direct {p0, p2, p3, p4}, Lcom/android/mms/transaction/AbstractRetryScheme;-><init>(III)V

    .line 43
    iget v0, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    .line 44
    iget v0, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    sget-object v1, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iput v0, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    .line 48
    return-void

    .line 43
    :cond_0
    iget v0, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    goto :goto_0

    .line 44
    :cond_1
    iget v0, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    goto :goto_1
.end method


# virtual methods
.method public getRetryLimit()I
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v0, v0

    return v0
.end method

.method public getWaitingInterval()J
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    iget v1, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    aget v0, v0, v1

    int-to-long v0, v0

    return-wide v0
.end method
