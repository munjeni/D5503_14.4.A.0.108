.class public abstract Lcom/android/mms/transaction/AbstractRetryScheme;
.super Ljava/lang/Object;
.source "AbstractRetryScheme.java"


# static fields
.field public static final INCOMING:I = 0x2

.field public static final OUTGOING:I = 0x1


# instance fields
.field protected mErrorType:I

.field protected mRetriedTimes:I

.field protected mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/AbstractRetryScheme;-><init>(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/transaction/AbstractRetryScheme;-><init>(II)V

    .line 36
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "retriedTimes"    # I

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/transaction/AbstractRetryScheme;-><init>(III)V

    .line 40
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "retriedTimes"    # I
    .param p3, "errorType"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mType:I

    .line 44
    iput p2, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mRetriedTimes:I

    .line 45
    iput p3, p0, Lcom/android/mms/transaction/AbstractRetryScheme;->mErrorType:I

    .line 46
    return-void
.end method


# virtual methods
.method public abstract getRetryLimit()I
.end method

.method public abstract getWaitingInterval()J
.end method
