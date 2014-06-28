.class public Lcom/sonyericsson/conversations/util/ResizeException;
.super Lcom/google/android/mms/MmsException;
.source "ResizeException.java"


# static fields
.field public static final RESIZE_ERROR_NONE:I = 0x0

.field public static final RESIZE_ERROR_OUT_OF_MEMORY_ERROR:I = 0x3

.field public static final RESIZE_ERROR_RESIZE_CRITERIA_NOT_MET:I = 0x2

.field public static final RESIZE_ERROR_UNKNOWN:I = 0x1

.field private static final serialVersionUID:J = 0x6f6340ddbfe8da6dL


# instance fields
.field private mErrorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/mms/MmsException;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/conversations/util/ResizeException;->mErrorCode:I

    .line 26
    iput p1, p0, Lcom/sonyericsson/conversations/util/ResizeException;->mErrorCode:I

    .line 27
    return-void
.end method


# virtual methods
.method public getResizeError()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/sonyericsson/conversations/util/ResizeException;->mErrorCode:I

    return v0
.end method
