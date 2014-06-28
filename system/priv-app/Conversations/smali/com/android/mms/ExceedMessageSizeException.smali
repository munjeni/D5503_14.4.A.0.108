.class public final Lcom/android/mms/ExceedMessageSizeException;
.super Lcom/android/mms/ContentRestrictionException;
.source "ExceedMessageSizeException.java"


# static fields
.field private static final serialVersionUID:J = 0x5c416c21a8bc3882L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/mms/ContentRestrictionException;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/Exception;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method
